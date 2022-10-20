#ifndef UTILS_H
#define UTILS_H

#include <iomanip>
#include <opencv2/opencv.hpp>
#include <vector>
#include "stats.h"

using namespace std;
using namespace cv;

vector<Point2f> Points(vector<KeyPoint> keypoints);

vector<Point2f> Points(vector<KeyPoint> keypoints) {
  vector<Point2f> res;
  for (unsigned i = 0; i < keypoints.size(); i++) {
    res.push_back(keypoints[i].pt);
  }
  return res;
}

#endif  // UTILS_H
