#!/bin/sh

# generate styled tile
time python neural_style.py --content ./content/JESS_TRUCK1k-3x3-0.jpg --styles /home/dduke/media/images/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-0.jpg --learning-rate 5 --iterations 5000 --checkpoint-iterations 1000 --checkpoint-output checkpoint-3x3-0-i%s.jpg

# add completed tile to output image
composite -compose atop /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-0.jpg ./content/noise.jpg out1.jpg

# crop new starting image from output image
convert out1.jpg -crop 543x362+271+0 start1.jpg

time python neural_style.py --content ./content/JESS_TRUCK1k-3x3-1.jpg --styles /home/dduke/media/images/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-1.jpg --learning-rate 5 --iterations 5000 --checkpoint-iterations 1000 --checkpoint-output checkpoint-3x3-1-i%s.jpg --initial start1.jpg

composite -compose atop -geometry +271+0 /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-1.jpg out1.jpg out2.jpg

# crop new starting image from output image
convert out2.jpg -crop 543x362+543+0 start2.jpg

time python neural_style.py --content ./content/JESS_TRUCK1k-3x3-2.jpg --styles /home/dduke/media/images/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-2.jpg --learning-rate 5 --iterations 5000 --checkpoint-iterations 1000 --checkpoint-output checkpoint-3x3-2-i%s.jpg --initial start2.jpg

composite -compose atop -geometry +542+0 /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-2.jpg out2.jpg out3.jpg

# crop new starting image from output image
convert out3.jpg -crop 543x362+0+181 start3.jpg

time python neural_style.py --content ./content/JESS_TRUCK1k-3x3-3.jpg --styles /home/dduke/media/images/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-3.jpg --learning-rate 5 --iterations 5000 --checkpoint-iterations 1000 --checkpoint-output checkpoint-3x3-3-i%s.jpg --initial start3.jpg

composite -compose atop -geometry +0+181 /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-3.jpg out3.jpg out4.jpg

# crop new starting image from output image
convert out4.jpg -crop 543x362+271+181 start4.jpg

time python neural_style.py --content ./content/JESS_TRUCK1k-3x3-4.jpg --styles /home/dduke/media/images/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-4.jpg --learning-rate 5 --iterations 5000 --checkpoint-iterations 1000 --checkpoint-output checkpoint-3x3-4-i%s.jpg --initial start4.jpg

composite -compose atop -geometry +271+181 /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-4.jpg out4.jpg out5.jpg

# crop new starting image from output image
convert out5.jpg -crop 543x362+543+181 start5.jpg

time python neural_style.py --content ./content/JESS_TRUCK1k-3x3-5.jpg --styles /home/dduke/media/images/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-5.jpg --learning-rate 5 --iterations 5000 --checkpoint-iterations 1000 --checkpoint-output checkpoint-3x3-5-i%s.jpg --initial start5.jpg

composite -compose atop -geometry +542+181 /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-5.jpg out5.jpg out6.jpg

# crop new starting image from output image
convert out6.jpg -crop 543x362+0+362 start6.jpg

time python neural_style.py --content ./content/JESS_TRUCK1k-3x3-6.jpg --styles /home/dduke/media/images/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-6.jpg --learning-rate 5 --iterations 5000 --checkpoint-iterations 1000 --checkpoint-output checkpoint-3x3-6-i%s.jpg --initial start6.jpg

composite -compose atop -geometry +0+362 /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-6.jpg out6.jpg out7.jpg

# crop new starting image from output image
convert out7.jpg -crop 543x362+271+362 start7.jpg

time python neural_style.py --content ./content/JESS_TRUCK1k-3x3-7.jpg --styles /home/dduke/media/images/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-7.jpg --learning-rate 5 --iterations 5000 --checkpoint-iterations 1000 --checkpoint-output checkpoint-3x3-7-i%s.jpg --initial start7.jpg

composite -compose atop -geometry +271+362 /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-7.jpg out7.jpg out8.jpg

# crop new starting image from output image
convert out8.jpg -crop 543x362+543+362 start8.jpg

time python neural_style.py --content ./content/JESS_TRUCK1k-3x3-8.jpg --styles /home/dduke/media/images/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-8.jpg --learning-rate 5 --iterations 5000 --checkpoint-iterations 1000 --checkpoint-output checkpoint-3x3-8-i%s.jpg --initial start8.jpg

composite -compose atop -geometry +542+362 /home/dduke/projs/neuralstyle-results/batches/batch0922/styled-3x3-8.jpg out8.jpg out9.jpg

time python neural_style.py --content /home/dduke/projs/neuralstyle-results/content/JESS_TRUCK2k.jpg --styles /home/dduke/projs/neuralstyle-results/styles/thick-brush-2k.jpg --output /home/dduke/projs/neuralstyle-results/batches/batch0922/full-i10000.jpg --learning-rate 5 --iterations 10000 --checkpoint-iterations 1000 --checkpoint-output checkpoint-full-i%s.jpg

