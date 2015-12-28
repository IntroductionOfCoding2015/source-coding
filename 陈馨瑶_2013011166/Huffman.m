close all;
clear all;
clc;

img = imread('1.bmp');
symbols = [0];
p = [0];
N = size(img,1)*size(img,2);

for i = min(min(img)): 20: max(max(img))
	symbols = [symbols, i];
	[r, ~, ~] = find(img == i);
	p = [p, length(r)/N];
end

[dict,avglen] = huffmandict(symbols, p);


