cd 'D:\辐照硬化程序\拟合数据'
format long
%[H0,hxb]=getH0andHXB();
Hunirr=xlsread( 'A508-3 H-h.xlsx','增材数据','B2:B67');
h=xlsread('A508-3 H-h.xlsx','增材数据','A2:A67');
x=1./h;
y=(Hunirr).^2;
%拟合x y 以获得H0和hxb
% 获取hcmax
H0=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','B2');
hxb=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','B3');
h=xlsread('A508-3 H-h.xlsx','增材数据','E2:E67');
Hirr=xlsread('A508-3 H-h.xlsx','增材数据','F2:F67');
num=length(h);
[hcmax]=getFhe(H0,hxb,Hirr,h);
%hcmax=199.96

%获取Q与Z

%hcmax_n=find(h==hcmax_n);
%h(1:hcmax_n)=[];
%Hirr(1:hcmax_n)=[];
h(h<199)=[];
after_numofh=length(h);
Hirr(1:num-after_numofh)=[];
% for i = 1:num
%     if h(i)<199;
%         h(i:i)=[];
%         Hirr(i:i)=[];
%     end
% end
    
Fhe=((Hirr./H0).^2)-1-(hxb./h);%执行到此行 开始进行拟合

Q=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','M4');
Z=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','M5');

%获取n P 以及hcsep
h=xlsread('A508-3 H-h.xlsx','锻造数据','K2:K67');
Hirr=xlsread('A508-3 H-h.xlsx','锻造数据','L2:L67');
Fhe=((Hirr./H0).^2)-1-(hxb./h);
plot(log10(h),log10(Fhe),'r*');
%hold on;
h1=linspace(150,3000,28500);
%先将Z和Q存取到excel中
Fh=Z./h1-Q./(h1.^3);
% plot(h1,Fh,'r-')
plot(log10(h1),log10(Fh),'r-');
hold on;
Fhe1=interp1(h,Fhe,h1,'spline');
plot(log10(h),log10(Fhe),'b-');


hcsep=300
%执行到此行获得hcsep

%获取n 与 P
hold off;

%m=150:0.1:hcsep;%拟合横坐标的初始值
%h2=m';
%Fh2=Z./h2-Q./(h2.^3);
%Ra=length(h2);
for i=1:1:num
    if h(i)>hcsep
        h(i:num)=[];
        break
    end
end
Ra=length(h);
Hirr((Ra+1):num)=[ ];
h(1:8)=[ ];Hirr(1:8)=[ ];
% h(17)=[ ];Hirr(17)=[ ];
Fhe=((Hirr./H0).^2)-1-(hxb./h);
%Fhe2=interp1(h,Fhe,h2,'spline');
%用k1=log(Fhe2) vs.k2=log(h2) 进行拟合
k1=log(Fhe);
k2=log(h);
%低压痕深度良好数据执行至此行

%低压痕深度数据欠佳的执行方案 拟合sli和Fhe_02
h_01=xlsread('A508-3 H-h.xlsx','锻造','C2:C61');
Hirr_01=xlsread('A508-3 H-h.xlsx','锻造','N2:N61');
Fhe_01=((Hirr./H0).^2)-1-(hxb./h);
a=log10(h(6:8));
b=log10(Fhe(6:8));
sli=linspace(min(a),max(a),20);
Fhe_02=interp1(a,b,sli,'spline');

%最终算出参数
n=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','C6');
P=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','C7');
A=sqrt((P*(n+1)*(n+3)*(hcsep^(n+1)))/hxb);
 






