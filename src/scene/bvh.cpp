#include "bvh.h"

#include "CGL/CGL.h"
#include "triangle.h"

#include <iostream>
#include <stack>

#include <cstdlib>

using namespace std;

namespace CGL {
namespace SceneObjects {

BVHAccel::BVHAccel(const std::vector<Primitive *> &_primitives,
                   size_t max_leaf_size) {

  primitives = std::vector<Primitive *>(_primitives);
  root = construct_bvh(primitives.begin(), primitives.end(), max_leaf_size);
}

BVHAccel::~BVHAccel() {
  if (root)
    delete root;
  primitives.clear();
}

BBox BVHAccel::get_bbox() const { return root->bb; }

void BVHAccel::draw(BVHNode *node, const Color &c, float alpha) const {
  if (node->isLeaf()) {
    for (auto p = node->start; p != node->end; p++) {
      (*p)->draw(c, alpha);
    }
  } else {
    draw(node->l, c, alpha);
    draw(node->r, c, alpha);
  }
}

void BVHAccel::drawOutline(BVHNode *node, const Color &c, float alpha) const {
  if (node->isLeaf()) {
    for (auto p = node->start; p != node->end; p++) {
      (*p)->drawOutline(c, alpha);
    }
  } else {
    drawOutline(node->l, c, alpha);
    drawOutline(node->r, c, alpha);
  }
}

BVHNode *BVHAccel::construct_bvh(std::vector<Primitive *>::iterator start,
                                 std::vector<Primitive *>::iterator end,
                                 size_t max_leaf_size) {

  // TODO (Part 2.1):
  // Construct a BVH from the given vector of primitives and maximum leaf
  // size configuration. The starter code build a BVH aggregate with a
  // single leaf node (which is also the root) that encloses all the
  // primitives.
    
    // decide if we should create a leaf or internal node
    // if internal


  BBox bbox;

    int count = 0;

  for (auto p = start; p != end; p++) {
    BBox bb = (*p)->get_bbox();
    bbox.expand(bb);
    count++;
  }

  BVHNode *node = new BVHNode(bbox);
    
    if(count <= max_leaf_size){
        node->start = start;
        node->end = end;
        
        return node;
        
    } else {
        
        //internal node
          
        //parition nodes
        vector<vector<Primitive *>> left_partitions;
        vector<vector<Primitive *>> right_partitions;
        int most_balanced_dim = 0;
        int best_balance_score = INFINITY;
        
        
        //iterate over 3 dimensions
        for (int d = 0; d < 3; d++) {
            double avg_centoid = 0;
            vector<Primitive *> left_partition;
            vector<Primitive *> right_partition;
            
            //compute average centroid for current dimension
            for (auto p = start; p != end; p++) {
                avg_centoid += (*p)->get_bbox().centroid()[d];
            }
            
            avg_centoid /= count;
            
            for (auto p = start; p != end; p++) {
                
                double centroid_d = (*p)->get_bbox().centroid()[d];
                
                if(centroid_d <= avg_centoid){
                    
                    left_partition.push_back(*p);
                    
                }else {
                    right_partition.push_back(*p);
                }
            }
            
            
            //save partitions
            left_partitions.push_back(left_partition);
            
            right_partitions.push_back(right_partition);
            
            //compute balance score
            double balance_score = abs((left_partition.size() - right_partition.size())/1.0);
            
            if(balance_score < best_balance_score){
                best_balance_score = balance_score;
                most_balanced_dim = d;
            }
            
        }
        
        
        //find best dimension
        
        //Note: these vectors are garbage collected. figure out how to store them long term
        vector<Primitive *> left_partition_final = left_partitions.at(most_balanced_dim);
        vector<Primitive *> right_partition_final = right_partitions.at(most_balanced_dim);
    
        assert(left_partition_final.size() + right_partition_final.size() == count);
        //update elements in orginall array
        for (int i = 0; i < left_partition_final.size(); i++) {
            *(start + i) = left_partition_final.at(i);
        }
        
        for (int j = 0; j < right_partition_final.size(); j++) {
            *(start + left_partition_final.size() + j) = right_partition_final.at(j);
        }
        
        
        node->l = construct_bvh(start, next(start, left_partition_final.size()), max_leaf_size);
        node->r = construct_bvh(next(start, left_partition_final.size()), end, max_leaf_size);
        
        return node;
        
    }
}

bool BVHAccel::has_intersection(const Ray &ray, BVHNode *node) const {
  // TODO (Part 2.3):
  // Fill in the intersect function.
  // Take note that this function has a short-circuit that the
  // Intersection version cannot, since it returns as soon as it finds
  // a hit, it doesn't actually have to find the closest hit.



  for (auto p : primitives) {
    total_isects++;
    if (p->has_intersection(ray))
      return true;
  }
  return false;


}

bool BVHAccel::intersect(const Ray &ray, Intersection *i, BVHNode *node) const {
  // TODO (Part 2.3):
  // Fill in the intersect function.



  bool hit = false;
  for (auto p : primitives) {
    total_isects++;
    hit = p->intersect(ray, i) || hit;
  }
  return hit;


}

} // namespace SceneObjects
} // namespace CGL
