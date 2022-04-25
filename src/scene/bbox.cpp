#include "bbox.h"

#include "GL/glew.h"

#include <algorithm>
#include <iostream>

namespace CGL {

bool BBox::intersect(const Ray& r, double& t0, double& t1) const {

  // TODO (Part 2.2):
  // Implement ray - bounding box intersection test
  // If the ray intersected the bouding box within the range given by
  // t0, t1, update t0 and t1 with the new intersection times.
	
    double tx_upper, tx_lower, tx_max, tx_min, ty_upper, ty_lower, ty_min, ty_max, tz_upper, tz_lower, tz_min, tz_max, t_upper, t_lower;
    
    Vector3D d = r.d;
    Vector3D o = r.o;
    
    //compute tmin / tmax
    
    if (d.x >= 0 ){
        tx_min = (min.x - o.x) / d.x;
        tx_max = (max.x - o.x) / d.x;
    }else {
        tx_min = (max.x - o.x) / d.x;
        tx_max = (min.x - o.x) / d.x;
    }
    
    
    if(d.y >= 0){
        ty_min = (min.y - o.y) / d.y;
        ty_max = (max.y - o.y) / d.y;
    }else{
        ty_min = (max.y - o.y) / d.y;
        ty_max = (min.y - o.y) / d.y;
    }
    
    if(tx_min > ty_max || ty_min > tx_max){
        return false;
    }
    
    t_lower = std::max(tx_min, ty_min);
    t_upper = std::min(tx_max, ty_max);
    
//    if(ty_min > tx_min){
//        t_lower = ty_min;
//    }else{
//        t_lower = tx_min;
//    }
//
//    if(ty_max < tx_max){
//        t_upper = ty_max;
//    }else{
//        t_upper = tx_min;
//    }
    
    if(d.z >= 0){
        tz_min = (min.z - o.z) / d.z;
        tz_max = (max.z - o.z) / d.z;
    }else{
        tz_min = (max.z - o.z) / d.z;
        tz_max = (min.z - o.z) / d.z;
    }

    if(t_lower > tz_max || tz_min > t_upper){
        return false;
    }
    
    t_lower = std::max(t_lower, tz_min);
    t_upper = std::min(t_upper, tz_max);
//
//    if(tz_min > t_lower){
//        t_lower = tz_min;
//    }
//
//    if(tz_max < t_upper){
//        t_upper = tz_max;
//    }
    

    if(t0 <= t_lower && t_lower <= t1 && t_upper <= t1 && t_upper >= t0){
        t0 = t_lower;
        t1 = t_upper;
        return true;
    }else{
        return false;
    }
    
}

void BBox::draw(Color c, float alpha) const {

  glColor4f(c.r, c.g, c.b, alpha);

  // top
  glBegin(GL_LINE_STRIP);
  glVertex3d(max.x, max.y, max.z);
  glVertex3d(max.x, max.y, min.z);
  glVertex3d(min.x, max.y, min.z);
  glVertex3d(min.x, max.y, max.z);
  glVertex3d(max.x, max.y, max.z);
  glEnd();

  // bottom
  glBegin(GL_LINE_STRIP);
  glVertex3d(min.x, min.y, min.z);
  glVertex3d(min.x, min.y, max.z);
  glVertex3d(max.x, min.y, max.z);
  glVertex3d(max.x, min.y, min.z);
  glVertex3d(min.x, min.y, min.z);
  glEnd();

  // side
  glBegin(GL_LINES);
  glVertex3d(max.x, max.y, max.z);
  glVertex3d(max.x, min.y, max.z);
  glVertex3d(max.x, max.y, min.z);
  glVertex3d(max.x, min.y, min.z);
  glVertex3d(min.x, max.y, min.z);
  glVertex3d(min.x, min.y, min.z);
  glVertex3d(min.x, max.y, max.z);
  glVertex3d(min.x, min.y, max.z);
  glEnd();

}

std::ostream& operator<<(std::ostream& os, const BBox& b) {
  return os << "BBOX(" << b.min << ", " << b.max << ")";
}

} // namespace CGL
