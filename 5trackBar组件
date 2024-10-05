#5.trackbar组件

import numpy as np
import cv2

def callback():
    pass

#建立窗口
cv2.namedWindow('trackbar',cv2.WINDOW_NORMAL)
cv2.resizeWindow('trackbar',640,480)

#建立Trackbar
cv2.createTrackbar('R','trackbar',0,255,callback)                 #(trackbar名字，窗口名字，最小值，最大值，回调函数) 
cv2.createTrackbar('G','trackbar',0,255,callback)
cv2.createTrackbar('B','trackbar',0,255,callback)

#纯黑色背景
img = np.zeros((480,640,3),np.uint8)                              # （高，宽，页）,uint8类型

while True:
    
    #获取Trackbar的值
    r = cv2.getTrackbarPos('R','trackbar')
    g = cv2.getTrackbarPos('G','trackbar')
    b = cv2.getTrackbarPos('B','trackbar')
    #改变背景图片的颜色
    img[:] = [b,g,r]
    #显示图片
    cv2.imshow('trackbar',img)
    #等待退出指令
    key = cv2.waitKey(10)
    if key & 0xFF == ord('w'):
        break

cv2.destroyAllWindows()
