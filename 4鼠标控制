##    4.鼠标控制

import cv2
import numpy as np

#设置回调函数
def mousecallback(event,x,y,flags,userdata):           #(鼠标事件，鼠标对应坐标，鼠标事件标志常量，用户自定义外部数据)        
    print(event,x,y,flags,userdata)

cv2.namedWindow('video',cv2.WINDOW_NORMAL)
cv2.resizeWindow('video',600,360)

#鼠标回调函数
cv2.setMouseCallback('video',mousecallback,"123")               #(窗口名称，回调函数，传递给回调函数用户自定义的外部数据)

#设定黑屏图像,高360，宽640
img = np.zeros((360,640,3),np.uint8)
while True:
    #打印窗口
    cv2.imshow('video',img)
    #等待键盘事件
    key = cv2.waitKey(1)
    if key & 0xFF == ord('q'):
        break

cv2.destroyAllWindows()


#在D:\app\python\opencv\sources\modules\highgui\include\opencv2
#\highgui.hpp中查看源码

#============================================================
event：表示鼠标事件类型的常量(
	#define CV_EVENT_MOUSEMOVE 0             //滑动
	#define CV_EVENT_LBUTTONDOWN 1           //左键点击
	#define CV_EVENT_RBUTTONDOWN 2           //右键点击
	#define CV_EVENT_MBUTTONDOWN 3           //中键点击
	#define CV_EVENT_LBUTTONUP 4             //左键放开
	#define CV_EVENT_RBUTTONUP 5             //右键放开
	#define CV_EVENT_MBUTTONUP 6             //中键放开
	#define CV_EVENT_LBUTTONDBLCLK 7         //左键双击
	#define CV_EVENT_RBUTTONDBLCLK 8         //右键双击
	#define CV_EVENT_MBUTTONDBLCLK 9         //中键双击
)；
#============================================================
