import torch
from ultralytics import YOLO

model = YOLO('best.pt')

results = model('test_video.mp4')

for result in results:
	result.show()
	result.save()
