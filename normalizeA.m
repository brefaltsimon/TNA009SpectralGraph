function [An, ind] = normalizeA(A)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
A=A+A';
A=A-diag(diag(full(A)));
G=graph(A);
bins=conncomp(G);
ind=find(bins==1);
An=A(ind,ind);


end

