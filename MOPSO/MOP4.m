%
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YPEA121
% Project Title: Multi-Objective Particle Swarm Optimization (MOPSO)
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function z=MOP4(x)


 % % MRR = z1
f1= -1*(-11.3+0.36* x(1) +0.78* x(2) -0.661* x(3) +0.0289* x(4) +0.033 * x(1) * x(2) ...
    +0.154* x(1) * x(3) -0.00240* x(2) * x(4));
% RLT = f2
% 
% f2 = -6.88+1.201* x(1) +1.08* x(2) +0.695* x(3) -0.0031* x(4) +0.0341* x(1) * x(2) ...
%     -0.0621* x(1) * x(3) +0.000791* x(2) * x(4);

% % SR = f3
% f2 =  1*(-0.6+0.612* x(1) +0.155* x(2) +0.013* x(3) -0.0055* x(4) -0.0203* x(1) * x(2) ...
%     - 0.0108* x(1) * x(3) +0.00052* x(2) * x(4));
% % 
% % % % TWR = f4
f2 = 1.89-0.136* x(1) -0.085* x(2) -0.099* x(3) -0.00460* x(4) +0.0230* x(1) * x(2) ...
    +0.0169* x(1) * x(3) -0.00016* x(2) * x(4);

%
%  f=[f1 f2]';

 z=[f1 f2]';
 
 
 if x(2) <= 10
    x(2) = 8;
elseif x(1) > 10 && x(1) < 13
    x(2) = 12;
else x(2) = 16;
end


if x(3) <= 8
    x(3) = 7;
elseif x(3) > 8 && x(3) < 11
    x(3) = 10;
else x(3) = 15;
end


if x(4) <= 180
    x(4) = 150;
elseif x(4) > 180 && x(3) < 230
    x(4) = 220;
else x(4) = 260;
end

%     a=0.8;
%     
%     b=3;
%     
%     z1=sum(-10*exp(-0.2*sqrt(x(1:end-1).^2+x(2:end).^2)));
%     
%     z2=sum(abs(x).^a+5*(sin(x)).^b);
    
%     z=[z1 z2]';

end