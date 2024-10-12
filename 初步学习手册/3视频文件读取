##读取视频
import cv2
import numpy as np
#建立窗口
#cv2.namedWindow('video',cv2.WINDOW_AUTOSIZE)
#建立不同的窗口大小
cv2.namedWindow('video',cv2.WINDOW_NORMAL)
cv2.resizeWindow('video',640,480)

#摄像头的选取
cap = cv2.VideoCapture('D:\\video\\test.mp4')

while True:
    #获取视频帧
    ret,frame =cap.read()

    cv2.imshow('video',frame)

   #获取视频帧的速度
    key = cv2.waitKey(33)               #每一帧之间的时间
    if(key & 0xFF == ord('s') ):        
        break
    
#释放空间
cap.release()
cv2.destroyAllWindows()



