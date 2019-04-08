import os
import glob

directory = './'
lst = glob.glob("./*.jpg")
for i in lst:
  	base = os.path.splitext(i)
        print base
  	num = os.path.splitext(base[0])[1]
        number = int(num[1:])
        target = os.path.join(directory, i[2:])
        current = os.path.join(directory, str(number) + '.jpg')
  	os.rename(target, current)
