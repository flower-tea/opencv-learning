##摆了，不知道，自己查
import numpy as np
import cv2

img = cv2.imread('D:\\documents\\pic\\pic1.png')

b,g,r = cv2.split(img)       #将img拆分为3个通道的图片
r[:,:] = 255
bgr = cv2.merge((b,g,r))     #先生成了bgr255图片
r1 = r[:,:]                  #然后改值生成bgr0图片
r1[:,:] = 0 
#cv2.imshow('img',img)
#cv2.imshow('b',b)
#cv2.imshow('g',g)
#cv2.imshow('r',r)


bgr1 = cv2.merge((b,g,r1))
cv2.imshow('bgr',bgr)
cv2.imshow('bgr1',bgr1)
cv2.waitKey(0)

https://blog.csdn.net/youcans/article/details/121174740
