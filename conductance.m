function [cond,minInd] = conductance(Ap,dp,n)
cond = ones(length(dp),1);

width=length(dp)-n+10;
for m=n-floor(length(dp)/width):n+floor(length(dp)/width)
%      % We save each cond value with the ind
%      % of that value in the second col.
     cond(m,1) = sum(Ap(1:m,m+1:end),"all") /...
      min(sum(dp(1:m)),sum(dp(m+1:end)));

end

[~,minInd] = min(cond(:,1));

end

