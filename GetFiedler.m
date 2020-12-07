function [Fiedler] = GetFiedler(Ln)
[V,~] = eig(Ln);
Fiedler = V(:,2);
end

