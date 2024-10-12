import cv2
import numpy as np

img = cv2.imread('D://documents//pic//pic5.jpg',cv2.IMREAD_GRAYSCALE) 
#img = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)  #转换为灰度图像
#原图
cv2.namedWindow('img',cv2.WINDOW_NORMAL)
cv2.imshow('img',img)

#手动卷积的图
#kernal = np.ones((5,5),np.float32)/25 #5x5的矩阵作为卷积核
#img2 = cv2.filter2D(img,-1,kernal)
#cv2.imshow('self',img2) 

#方盒滤波和均值滤波，直接调用
#img3 = cv2.blur(img,(5,5))
#cv2.imshow('Blur',img3)

#高斯滤波
#img4 = cv2.GaussianBlur(img,(5,5),sigmaX = 100,sigmaY = 100)
#cv2.imshow('GaussianBlur',img4)

#中值滤波
#img5 = cv2.medianBlur(img,5)
#cv2.imshow('medianBlur',img5)

#双边滤波(人像美颜，保留边缘)
#img6 = cv2.bilateralFilter(img,7,20,50)
#cv2.namedWindow('bilateral',cv2.WINDOW_NORMAL)
#cv2.imshow('bilateral',img6)

#sobel算子(一般来说，要两次分别求导)
#img7_1 = cv2.Sobel(img,cv2.CV_64F,1,0,ksize = 5)  #y边缘
#img7_2 = cv2.Sobel(img,cv2.CV_64F,0,1,ksize = 5)  #x边缘

#img7_1 = cv2.convertScaleAbs(img7_1)
#img7_2 = cv2.convertScaleAbs(img7_2)                     #在实际操作中，计算梯度值可能会出现负数，图像通常是8位的，如果值为负数，那么会变成0，发生信息丢失。
#                                                         #为了避免信息丢失，我们要用cv2.CV_64F，然后在取绝对值映射为8位图类型的。
#Sobelxy=cv2.addWeighted (img7_1,0.5,img7_2,0.5,0)        #两张图片的权重相加函数
#img7 = img7_1 + img7_2

##cv2.imshow('sobel_y',img7_1)
##cv2.imshow('sobel_x',img7_2)
#cv2.imshow('sobel',img7)
#cv2.imshow('sobel_add',Sobelxy)                   #显然addweight后的图像好看些
##很掉san，慎看

#Scharr算子（一般不用）

#Laplacian算子
#img8 = cv2.Laplacian(img,cv2.CV_64F,ksize = 3)


#cv2.namedWindow('Laplacian',cv2.WINDOW_NORMAL)
#cv2.imshow('Laplacian',img8)

#Canny边缘检测
img9 = cv2.Canny(img,1,30)  #最小与最大
cv2.namedWindow('canny',cv2.WINDOW_NORMAL)
cv2.imshow('canny',img9)


cv2.waitKey(0)
