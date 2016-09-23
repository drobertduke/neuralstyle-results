#!/bin/sh

time python neural_style.py --content /home/dduke/projs/neuralstyle-results/content/JESS_TRUCK1k.jpg --styles /home/dduke/projs/neuralstyle-results/styles/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/0923/final-hw20.jpg --learning-rate 5 --iterations 1000

time python neural_style.py --content /home/dduke/projs/neuralstyle-results/content/JESS_TRUCK1k.jpg --styles /home/dduke/projs/neuralstyle-results/styles/thick-brush.jpg --output /home/dduke/projs/neuralstyle-results/batches/0923/final-hw0.jpg --learning-rate 5 --iterations 1000 --histogram-weight 0

