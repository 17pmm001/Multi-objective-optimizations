%
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YPEA120
% Project Title: Non-dominated Sorting Genetic Algorithm II (NSGA-II)
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function z= MOP4(x) 

z1 = -1*(686.71 + 60.36*x(1) + 1.74*x(2) - 10.80*x(3) - 74.34*x(4) - 2.34*(x(1).^2)...
    +0.0024*(x(2).^2) - 0.28*(x(3).^2) + 7.7*(x(4).^2) - 0.32*x(1)*x(2) + 0.93*x(1)*x(3)...
    +1.31*x(1)*x(4) + 0.15*x(2)*x(3) - 0.048*x(2)*x(4));

z2 = 0.6658 + 0.02129*x(1) + 0.00502*x(2) + 0.01738*x(3) - 0.0746*x(4) - 2.2*(10^-5)*x((1).^2)...
    + 2.1*(10^-5)*(x(2).^2)-3.01*(10^-4)*(x(3).^2)+0.01049*(x(4).^2)-1.13*(10^-4)*x(1)*x(2)...
    +9.8*(10^-5)*x(1)*x(3) + 1.134*(10^-3)*x(1)*x(4) + .00*x(2)*x(3) - 4.6*(10^-5)*x(2)*x(4);

%     a=0.8;
%     b=3;
%     z1=sum(-10*exp(-0.2*sqrt(x(1:end-1).^2+x(2:end).^2)));
%     z2=sum(abs(x).^a+5*(sin(x)).^b);
     z=[z1 z2]';

end