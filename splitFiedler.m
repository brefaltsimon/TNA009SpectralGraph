function [result] = splitFiedler(fiedler, pos)
%SPLITFIEDLER returns a split of the fiedler vector at pos
%   Detailed explanation goes here

result = ones(size(fiedler));
result(pos:end) = 0;

end

