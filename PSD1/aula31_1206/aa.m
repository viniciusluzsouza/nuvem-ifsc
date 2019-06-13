x1=-0.001;
% Word length = 8, fraction length = 7
q=quantizer([8,7]);
xq1=quantize(q,x1);
binxq1=num2bin(q,xq1)
erro_percent1 = (xq1-x1)/x1*100;

x2=-0.001;
% Word length = 8, fraction length = 7
q=quantizer([16,15]);
xq2=quantize(q,x2);
binxq2=num2bin(q,xq2)
erro_percent2 = (xq2-x2)/x2*100;

%% Word length = 16, fraction length = 15
q1=quantizer([16 15]); 
xq1 = quantize(q1,x);
binxq1=num2bin(q1,xq1)