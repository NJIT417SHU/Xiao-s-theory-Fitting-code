function [hcmax]=getFhe(H0,hxb,Hirr,h);
%h=xlsread('A508-3 H-h.xlsx','锻造数据','C2:C67');
Fhe=((Hirr./H0).^2)-1-(hxb./h);
plot(h,Fhe,'r*');
h1=linspace(0,3000,10000);%插值法找极值点
Fhe1=interp1(h,Fhe,h1,'spline');
%plot(h1,Hirr1);
[~,row]=max(Fhe);
hcmax=h(row); 
end