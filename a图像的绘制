import cv2
import numpy as np

img = cv2.imread('D:\\documents\\pic\\pic1.png')
cv2.namedWindow('draw',cv2.WINDOW_AUTOSIZE)

#print(img.shape)                                                  #打印图像的宽高

  
#列，行  (x,y)
#img = np.zeros((640,1280,3),np.uint8)  此时是行列
#cv2.line(图像名字,起始点,最终点,(b,g,r),线宽，平滑程度(线为锯齿波等))    

#线
cv2.line(img,(245,10),(445,10),(0,0,255)) 
cv2.line(img,(245,20),(445,20),(0,0,255),4)
cv2.line(img,(245,100),(445,400),(0,0,255),5,4)  

#矩形 
cv2.rectangle(img,(300,300),(400,400),(0,0,255),0)   #-1是填充，同理为图片，长方形左上点，右下点，颜色，线宽

#圆
cv2.circle(img,(345,640),100,(0,0,255),2)            #图片，圆心，半径，颜色，线宽

#椭圆 
#0°从右边开始顺时针计算。
#矩形角度顺时针旋转
cv2.ellipse(img,(345,640),(100,60),0,0,360,(0,0,255),2)

#多边形
point1 = np.array([(300,400),(340,450),(200,780),(150,600)],np.int32)   #数字类型，带符号32位
point2 = np.array([(100,400),(140,850),(150,980),(250,400)],np.int32)
cv2.polylines(img,[point1],True,(0,0,255))
cv2.fillPoly(img,[point2],(0,0,255))


cv2.imshow("draw",img)

while True:
    key = cv2.waitKey(10)
    if(key & 0xFF == ord('s')):
        break
cv2.destroyAllWindows()
