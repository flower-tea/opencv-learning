import cv2
import numpy as np

img = cv2.imread('D:\\documents\\pic\\pic1.png')
#print(img.shape)
#(1290,1007,3)

img1 = np.ones((1290,1007,3),np.uint8) * 10

imgend = cv2.add(img,img1)


cv2.namedWindow('tt',cv2.WINDOW_AUTOSIZE)
cv2.imshow('tt',imgend)
cv2.waitKey(0)
cv2.destroyAllWindows()
