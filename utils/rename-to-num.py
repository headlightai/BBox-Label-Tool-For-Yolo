import os
import glob

path = '.'

cnt = 0
for filename in glob.glob(os.path.join(path, '*.jpg')):
  	base = os.path.splitext(filename)
  	num = os.path.splitext(base[0])
  	os.rename(filename, str(cnt) + ".jpg")
	cnt = cnt + 1
