
close all; clear all; clc;
net=newp([0 1; -2 2],1);

W=[0 0 1 1; 0 1 0 1];
T=[0 0 0 1];
net=init(net);
before=sim(net,W)
net.trainParam.epochs=20;

net=train(net,W,T);
after=sim(net,W)

