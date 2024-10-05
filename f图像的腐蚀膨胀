##摆了，API自己复制查csdn，很好理解的
import cv2
import numpy as np

#原图
img = cv2.imread('D://documents//pic//pic2.jpg',cv2.IMREAD_GRAYSCALE )
cv2.imshow('img',img)

#获取卷积核
kernal = cv2.getStructuringElement(cv2.MORPH_CROSS,(11,11))

#腐蚀1
    #kernal0 = np.ones((3,3),np.uint8)  #黑色矩形进行腐蚀
    #img1 = cv2.erode(img,kernal0,iterations = 3)
    #cv2.imshow('img1',img1)
#腐蚀2
    #kernal1=cv2.getStructuringElement(cv2.MORPH_CROSS,(5,5))
    #img2 = cv2.erode(img,kernal1,3)
    #cv2.imshow('img2',img2)

#膨胀（白色扩增）
    #img3 = cv2.dilate(img,kernal1,3)
    #cv2.imshow('img3',img3)

#图像的开运算（开运算=腐蚀+膨胀）
    #kernal2 = cv2.getStructuringElement(cv2.MORPH_RECT,(5,5))
    #img_e = cv2.erode(img, kernal2,3)
    #img_d = cv2.dilate(img_e,kernal2,3)
    #cv2.imshow('erode_dilate',img_d)

#或者直接调用
    #img_kai = cv2.morphologyEx(img,cv2.MORPH_OPEN,kernal2)
    #cv2.imshow('kai',img_kai)


#图像的闭运算（闭运算=膨胀+腐蚀）
    #kernal3 = cv2.getStructuringElement(cv2.MORPH_RECT,(5,5))
    #img_bi = cv2.morphologyEx(img,cv2.MORPH_CLOSE,kernal3)
    #cv2.imshow('bi',img_bi) 

#图像的形态学梯度（原图-腐蚀图像）边缘
    #kernal4 = cv2.getStructuringElement(cv2.MORPH_CROSS,(7,7))
    #img_td = cv2.morphologyEx(img,cv2.MORPH_GRADIENT,kernal4)
    #cv2.imshow('td',img_td)

#图像的顶帽运算（原图-开运算）取出图像外的噪点
    #img_dm = cv2.morphologyEx(img,cv2.MORPH_TOPHAT,kernal4)
    #cv2.imshow('dm',img_dm)

#图像的黑帽运算（原图-闭运算）取出图像内的噪点
    #img_hm = cv2.morphologyEx(img,cv2.MORPH_TOPHAT,kernal)
    #cv2.imshow('hm',img_hm)

cv2.waitKey(0)
