function [Ap,P,p] = PermuteA(Fiedler,A)
P = speye(length(Fiedler));
[~,p] = sort(Fiedler,'ascend');
P = P(p,:);
Ap = P*A*P';
end

