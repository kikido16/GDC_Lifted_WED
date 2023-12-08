%% ratio is 0.2
% ratio=0.2;
% t1=[ -0.66971  0.707214  0.226577   2.28904;
% 0.0164159 -0.290931  0.956603   11.3419;
%  0.742441  0.644367   0.18323  -3.67177;
%         0         0         0         1;];


%% ratio is 0.3
% ratio=0.3;
% t1= [-0.525489   0.771227   0.359263  -0.812315;
%    0.25631  -0.259146   0.931208    8.05098;
%   0.811275   0.581423 -0.0614952   -4.99593;
%          0          0          0          1];
% ratio=0.4;
% t1=[ -0.59299   0.68722  0.419634  0.026608;
%  0.184396 -0.391401  0.901556   6.82443;
%  0.783812  0.611992  0.105376  -4.09459;
%         0         0         0         1];
%% ratio is 0.5
% t1=[-0.510454   0.783463   0.354436   -1.23646;
%   0.231238  -0.271934   0.934121    4.19107;
%   0.828231   0.558784 -0.0423564   -3.42368;
%          0          0          0          1];
%% OGV is 0.5
t1= [   0.999059   0.0327907  -0.0284038    -281.846;
 -0.0325978    0.999443  0.00722978    -8.63003;
   0.028625 -0.00629704     0.99957    -3.75098;
          0           0           0           1];
R=t1(1:3,1:3);
[u,d,v]=svd(R);
RR=u*[1 0 0;0 1 0; 0 0 det(u*v')]*v';
t1(1:3,1:3)=RR;
T1=SE3(t1);
load_matrix_mat=sprintf('coarse_matrix%0.1f.mat',ratio);
save(load_matrix_mat,"T1");