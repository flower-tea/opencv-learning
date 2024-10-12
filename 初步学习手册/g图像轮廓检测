import cv2
import numpy as np

def drawshape(src,points):
    i = 0
    while i < len(points):
        if (i == len(points)-1):
            x,y = points[i][0]
            x1,y1 = points[0][0]
            cv2.line(src,(x,y),(x1,y1),(0,0,255),10)  #连回第一个点
        else:
            x,y = points[i][0]
            x1,y1 = points[i+1][0]
            cv2.line(src,(x,y),(x1,y1),(0,0,255),10)  #连下一个点
        i = i + 1 

#原图
img =  cv2.imread('D:\\documents\\pic\\pic.jpg')
imggray = cv2.imread('D:\\documents\\pic\\pic.jpg',cv2.IMREAD_GRAYSCALE)

cv2.namedWindow('img',cv2.WINDOW_NORMAL)
#cv2.namedWindow('binery',cv2.WINDOW_NORMAL)
#cv2.namedWindow('duobianxing',cv2.WINDOW_NORMAL)

#cv2.imshow('img',img)

#二值化
ret,img1 = cv2.threshold(imggray,120,255,cv2.THRESH_BINARY)
#img1 = cv2.adaptiveThreshold(imggray,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,cv2.THRESH_BINARY,3,0)
#cv2.imshow('binery',img1)


#查找轮廓
contours,hierarchy = cv2.findContours(img1,cv2.RETR_TREE,cv2.CHAIN_APPROX_NONE)
#cv2.findContours(img1,cv2.RETR_LIST,)
#cv2.findContours(img1,cv2.RETR_CCOMP,)
#cv2.findContours(img1,cv2.RETR_TREE,)
#cv2.findContours(img1,cv2.RETR_EXTERNAL,)
#四种参数，分类方法

#打印轮廓个数
#print(len(contours))

#绘制轮廓
#cv2.drawContours(img,contours,-1,(0,255,0),1)     #在img上画轮廓
#cv2.imshow('img',img)

#计算参数(面积，周长)
#cv2.contourArea(contours[0])        #第几个轮廓的面积
#cv2.arcLength(contours[0],True)     #True，False是否闭合

#多边形的逼近与凸包
e = 20
approx = cv2.approxPolyDP(contours[600],e,True)
drawshape(img,approx)

#hull = cv2.convexHull(contours[0])
#drawshape(img,hull)
##效果非常不理想，最好是黑背景加识别图像？

#最小外接矩形
#r = cv2.minAreaRect(contours[1])                    #第几个轮廓的最小外接矩形
#box = cv2.boxPoints(r)                              #转换类型
#cv2.drawContours(img,[box],0,(0,0,255),2)

cv2.imshow('img',img)
cv2.waitKey(0)
