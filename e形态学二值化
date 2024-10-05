import cv2
import numpy as np

img = cv2.imread('D://documents//pic//pic3.jpg',cv2.IMREAD_GRAYSCALE) 
#原图
cv2.imshow('img',img)

#二值化处理
#ret,img1 = cv2.threshold(img,180,255,cv2.THRESH_BINARY)
#ret,img2 = cv2.threshold(img,180,255,cv2.THRESH_BINARY_INV)  #取反
#cv2.imshow('binary',img1)
#cv2.imshow('binary_inv',img2)

#TRUNC
#ret,img3 = cv2.threshold(img,180,180,cv2.THRESH_TRUNC)
#cv2.imshow('trunc',img3)
#TOZERO
#ret,img4 = cv2.threshold(img,180,0,cv2.THRESH_TOZERO)
#cv2.imshow('tozero',img4)

#自适应二值化处理
#dst = cv2.adaptiveThreshold(img,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,cv2.THRESH_BINARY,5,0)        
#灰度图像，用于指定满足条件的像素设定的灰度值，自适应阈值算法，阈值类型，卷积核大小为3，5，7……，常数偏量一般取0
#返回值为图像，cv2.imshow('dst',dst)


cv2.waitKey(0)
