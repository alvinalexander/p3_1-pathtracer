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
    
  //if diretion of ray is 0
    if(d.norm() == 0.0){
        return false;
    }
    
    //compute tmin / tmax
     tx_min = (min.x - o.x) / d.x;
     tx_max = (max.x - o.x) / d.x;
    tx_upper = std::max(tx_min, tx_max);
    tx_lower = std::min(tx_min, tx_max);
    
      ty_min = (min.y - o.y) / d.y;
      ty_max = (max.y - o.y) / d.y;
    ty_upper = std::max(ty_min, ty_max);
    ty_lower = std::min(ty_min, ty_max);

      tz_min = (min.z - o.z) / d.z;
      tz_max = (max.z - o.z) / d.z;
    tz_upper = std::max(tz_min, tz_max);
    tz_lower = std::min(tz_min, tz_max);
    
    
    //all 3 components
    t_upper = std::min(std::min(tx_upper, tz_upper), ty_upper);
    t_lower = std::max(std::max(tx_lower, tz_lower), ty_lower);
    
    if(t0 <= t_lower && t_lower <= t1 && t_upper >= t_lower && t_upper <= t1 && t_upper >= t0){
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
