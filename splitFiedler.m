function [fiedler1, fiedler2] = splitFiedler(fiedler, pos)
%SPLITFIEDLER returns a split of the fiedler vector at pos
%   Detailed explanation goes here

fiedler1= fiedler>pos;
fiedler2= fiedler<pos;

end

