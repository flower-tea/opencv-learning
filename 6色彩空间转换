import numpy as np
import cv2

def callback():
    pass

#建立窗口
cv2.namedWindow('colors',cv2.WINDOW_NORMAL)
cv2.resizeWindow('colors',640,480)

#读取图片
img = cv2.imread('D:\\documents\\pic\\pic1.png')
cv2.imshow('colors', img)

#建立Trackbar

space = [cv2.COLOR_BGR2RGBA,cv2.COLOR_BGR2BGRA,cv2.COLOR_BGR2GRAY,cv2.COLOR_BGR2HSV_FULL,cv2.COLOR_BGR2YUV ]  #建立不同数据类型
cv2.createTrackbar('color_sp','colors',0,len(space)-1,callback)

while True:
    index = cv2.getTrackbarPos('color_sp','colors')              #获取Bar的具体值
    
    #颜色空间转换 
    cvt_img = cv2.cvtColor(img , space[index])                   #图片，转换类型
    cv2.imshow('colors',cvt_img)
    
    key = cv2.waitKey(10)
    if(key & 0xFF == ord('s') ):
        break
cv2.destroyAllWindows()


 




