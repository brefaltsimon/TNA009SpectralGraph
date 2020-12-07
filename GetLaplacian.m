function [Ln,d] = GetLaplacian(A)
d = diag(A*A');
D = diag(d);
Dn = diag(d.^-(1/2));
L = full(D-A);
Ln = Dn*L*Dn;
end

