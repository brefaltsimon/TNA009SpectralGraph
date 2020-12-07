function [Ap,P,p, Fiedler,d] = sgp(A)
d = diag(A*A');
D = diag(d);
Dn = diag(d.^-(1/2));
L = full(D-A);
Ln = Dn*L*Dn;
Ln=(Ln+Ln')/2;
[V,~] = eig(Ln);
Fiedler = V(:,2);

P = speye(length(Fiedler));
[~,p] = sort(Fiedler,'ascend');
P = P(p,:);
Ap = P*A*P';

end

