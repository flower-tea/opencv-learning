# -*- coding: utf-8 -*-
"""
Created on Mon Sep 23 18:52:56 2024

@author: mouhuaji
"""

import cv2
import numpy as np


def drawshape(src, points):
    i = 0
    while i < len(points):
        if( i == len(points)-1):
            x,y = points[i][0]
            x1,y1 = points[0][0]
            cv2.line(src, (x,y), (x1,y1), (0,0,255))
        else:
            x,y = points[i][0]
            x1,y1 = points[i+1][0]
            cv2.line(src, (x,y), (x1,y1), (0,0,255))
        i = i + 1



##初始化大小
wide = 1440; high = 960



##原始图片窗口 
cv2.namedWindow('img',cv2.WINDOW_NORMAL)
cv2.resizeWindow('img',3440,1933)

##自适应二值化窗口
cv2.namedWindow('perspective',cv2.WINDOW_NORMAL)
cv2.resizeWindow('perspective',wide,high)

# =============================================================================
# ##进行透视处理后的窗口
# cv2.namedWindow('Binarization',cv2.WINDOW_NORMAL)
# cv2.resizeWindow('Binarization',wide,high)
# =============================================================================

# =============================================================================
# ##进行开运算处理后的窗口
# cv2.namedWindow('Open',cv2.WINDOW_NORMAL)
# cv2.resizeWindow('Open',wide,high)
# 
# =============================================================================

##坐标纸图片
cv2.namedWindow('graph',cv2.WINDOW_NORMAL)
cv2.resizeWindow('graph',wide+80,high+80)

##载入图片
img = cv2.imread('D:\\documents\\pic\\pic12.jpg')
graph = cv2.imread('D:\\documents\\pic\\pic13.jpg')


##进行透视处理
src = np.float32([[242,31],[242,1833],[2961,1833],[2961,31]])
dst = np.float32([[0,0],[0,high],[wide,high],[wide,0]])
M = cv2.getPerspectiveTransform(src, dst)
perspective = cv2.warpPerspective(img, M, (wide,high))

##自适应二值化处理,提取图片信息
gray = cv2.cvtColor(perspective, cv2.COLOR_BGR2GRAY)

##
# Gauss = cv2.GaussianBlur(gray,(3,3),5)

Binarization = cv2.adaptiveThreshold(gray, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, 
                                     cv2.THRESH_BINARY,59, 0)


##对图像进行腐蚀
kernal = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (5,5))
Erode = cv2.erode(Binarization, kernal,iterations = 3)

##对图像进行膨胀
kernal1 = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (3,3))
Open = cv2.dilate(Erode,kernal1,iterations = 1)


##对图像进行轮廓查找并绘制
contours,hierarchy = cv2.findContours(Open, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
# cv2.drawContours(perspective, contours, -1, (0,0,255),1)

print(contours)



# =============================================================================
# ##对图像进行开运算
# kernal = cv2.getStructuringElement(cv2.MORPH_RECT, (3,3))
# Open = cv2.morphologyEx(Binarization,cv2.MORPH_OPEN,kernal)
# 
# =============================================================================


##多边形逼近与凸包
# approx = cv2.approxPolyDP(contours[0], 20, True)
# drawshape(perspective,approx)

##外接矩形
r = cv2.minAreaRect(contours[0])
box = cv2.boxPoints(r)

x = (box[0][0] + box[1][0] + box[2][0] + box[3][0])/4
y = (box[0][1] + box[1][1] + box[2][1] + box[3][1])/4
box = np.intp(box)

# print(box)

x = np.int16(x)
y = np.int16(y)
# print(x)


cv2.circle(perspective, (x,y), 3, (0,255,0),-1)
cv2.circle(graph, (x + 40,y + 40), 3, (0,255,0),-1)
cv2.drawContours(perspective, [box], 0, (0,0,255),1)


##显示图片
# cv2.imshow('img',img)
cv2.imshow('perspective',perspective)
# cv2.imshow('Binarization',Binarization)
# cv2.imshow('Open',Open)
cv2.imshow('graph',graph)
#cv2.waitKey(0)

while True:
    key = cv2.waitKey(1)
    if(key & 0xFF == ord('s')):
        break
cv2.destroyAllWindows()


##改进方案
# 对图像进行滤波处理，去除噪声
# 在绘制最小外界矩形时，对轮廓的宽高，面积等进行筛选，使其能够筛选出主目标的轮廓
# 按键处理控制，方便进行图像的透视
# 保存视频的处理
