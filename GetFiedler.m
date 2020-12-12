function [Fiedler] = GetFiedler(Ln)
[V,E] = eig(Ln);
Fiedler = V(:,2);
end

