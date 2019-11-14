% Create MATLAB structure, write to JSON and read
clear; clc;

myStruct = struct;
myStruct.a = 3;
myStruct.b = 'Hello world';
myStruct.c = 2:2:20;
myStruct

jsonwrite(myStruct,'out')

jsonread('out.json')
