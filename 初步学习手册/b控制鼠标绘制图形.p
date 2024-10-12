import cv2
import numpy as np

#放置全局变量
curshape = 0            #选择绘制图形
startpos = (0,0)        #起始点
endpos = (0,0)          #结束点
flag = 0                #标志位

#设置回调函数
def mousecallback(event,x,y,flags,userdata):
    global startpos,curshape,flag,endpos                         #设置全局变量
    if(event & cv2.EVENT_LBUTTONDOWN == cv2.EVENT_LBUTTONDOWN):
        startpos = (x,y)                                         #鼠标左键按下时为起始点
        #flag = 1
    elif(event  == cv2.EVENT_MOUSEMOVE):
        if curshape == 0:
            print("请按下需要画的图形")
        elif curshape == 1:
            #endpos =(x,y)
            cv2.line(img , startpos , (x,y) , (0,0,255))
        elif curshape == 2:
            cv2.rectangle(img,startpos,(x,y),(0,0,255))
        elif curshape == 3:
            a = (x - startpos[0])
            b = (y - startpos[1])
            r = int((a**2 + b**2)**0.5)
            cv2.circle(img,startpos,r,(0,0,255))
        elif curshape == 4:
            print("buzhidao")

#主函数

#创建窗口
cv2.namedWindow('text',cv2.WINDOW_NORMAL)
cv2.resizeWindow('text',640,480)
#黑屏窗口
img = np.zeros((480,640,3),np.uint8)
#回调函数
cv2.setMouseCallback('text',mousecallback,"123")

while True:
    #打印窗口
    cv2.imshow('text',img)
    #等待键盘事件
    key = cv2.waitKey(1) & 0xFF
    if key  == ord('q'):
        break
    elif key == ord('l'):
        curshape = 1
    elif key == ord('r'):
        curshape = 2
    elif key == ord('c'):
        curshape = 3
    elif key == ord('e'):
        curshape = 4


cv2.destroyAllWindows()
#基本功能
#1.“L”可以画线
#2.“R”可以画矩形
#3.“C”可以画圆
#4.“E”可以画椭圆
