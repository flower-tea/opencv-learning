import numpy as np
import cv2

img = cv2.imread('D:\\documents\\pic\\pic1.png')
#浅拷贝，只复制了header，data没做改变
img2 = img

#深拷贝,拷贝data 
img3 = img.copy()

img [10:100,10:100] = [0,0,255]   #BGR,将img的图片产生一个正方形红色方块


#图像的mat属性
print(img3.shape)    #shape包含3个属性：高度，长度，通道数
print(img3.size)     #size包含1个属性：图像占用多少空间；高度*长度*通道数
print(img3.dtype)    #dtype包含1个属性：图像中每个元素的位深
#测试图片的浅深拷贝
#cv2.imshow('img',img)
#cv2.imshow('img2',img2)
#cv2.imshow('img3',img3)

cv2.waitKey(0)
