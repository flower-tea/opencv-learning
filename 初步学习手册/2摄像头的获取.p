##  2.摄像头的获取
import cv2
import numpy as np

cv2.namedWindow('video',cv2.WINDOW_NORMAL)                   #建立窗口
cv2.resizeWindow('video',640,480)                            #重置大小

cap = cv2.VideoCapture(0)                                    #摄像头的选取，参数可以是摄像头的编号，详细参见设备管理器，摄像头的顺序
                                                             #参数为0，1，2，…………   
fourcc = cv2.VideoWriter_fourcc(*'DIVX')                                                #指定fourcc编码,还有其他编码方式，这里暂不列举
out = cv2.VideoWriter('D:\\documents\\pic\\vi.mp4',fourcc,20.0,(640,480),0)               #(保存路径以及名字，编码方式，视频帧率，视频宽高，是否为彩色0/1)

while True:
    ret,frame =cap.read()                                    #获取视频帧，ret返回Ture代表打开成功
    if ret == True:
      frame = cv2.flip(frame,0)                              #flip函数对图片进行水平翻转

      out.write(frame)
      cv2.imshow('video',frame)
                                                               #获取视频帧的速度
      key = cv2.waitKey(1)                                     #延时1ms切换到下一帧图像，等待键盘按键
      if(key == 27 ):                                          #key对应ASCII码esc，退出循环
          break
    else：
      break
cap.release()                                                #释放摄像头空间
out.release()                                                #释放out
cv2.destroyAllWindows()
