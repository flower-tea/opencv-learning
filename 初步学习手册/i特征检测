##摆了，自己看
import cv2
import numpy as np

img =  cv2.imread('D:\\documents\\pic\\pic9.jpg')
#灰度化
gray = cv2.cvtColor(img,cv2.COLOR_RGB2GRAY)
#gray1 = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
cv2.namedWindow('img',cv2.WINDOW_NORMAL)
#cv2.namedWindow('gray',cv2.WINDOW_NORMAL)
cv2.imshow('img',gray)
#cv2.imshow('gray',gray1)

##Harris角点检测（很多图都用不了？）
#dst = cv2.cornerHarris(gray ,blocksize = 2,ksize = 3,k = 0.04)
##cv2.imshow('dst1',dst)
#img[dst > 0.01 * dst.max()] = [0, 0, 255]     #角点改为红色
##cv2.imshow('dst2',dst)
#cv2.imshow('harris',img)

#Shi-Tomasi角点检测（harris的改进）
#maxCorners = 1000
#ql =0.01
#minDistance = 10

#corners = cv2.goodFeaturesToTrack(gray,maxCorners,ql,minDistance)
#corners = np.int0(corners)

#for i in corners:
#    x,y = i.ravel()                       #角点坐标转换为整数类型
#    cv2.circle(img,(x,y),3,(255,0,0),-1)
#cv2.imshow('img',img)

#SIFT关键点检测
#创建对象
sift = cv2.xfeatures2d.SIFT_create()
#进行检测
kp,des = sift.detectAndCompute(gray,None)
#print(des[0])
cv2.drawKeypoints(gray,kp,img)    #gray,kp,在哪张图上绘制
cv2.imshow('img',img)



#SURF检测，相较于SIFT而言速度更快   



cv2.waitKey(0)
