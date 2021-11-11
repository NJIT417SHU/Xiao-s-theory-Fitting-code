H0=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','M2');
hxb=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','M3');
Q=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','M4');
Z=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','M5');
n=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','M6');
P=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','M7');
hcsep=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','M8');
A=sqrt((P*(n+1)*(n+3)*(hcsep^(n+1)))/hxb);
h=xlsread('A508-3 H-h.xlsx','锻造数据','K2:K67');
Hirr=xlsread('A508-3 H-h.xlsx','锻造数据','L2:L67');
Fhe=((Hirr./H0).^2)-1-(hxb./h);
ht=0:0.5:3000;
Fh=P*(ht.^n).*(ht<=hcsep)+(Z./ht-Q./(ht.^3)).*(ht>hcsep);
plot(ht,Fh,'b-',h,Fhe,'r*')
%legend('model-0dpa','Experiment-0dpa');
xlabel('h');
ylabel('y=(H_irr0./H0).^2-1-hxb./h');
axis([0,3000,0,1.5]);
hold on;

H0=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','I2');
hxb=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','I3');
Q=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','I4');
Z=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','I5');
n=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','I6');
P=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','I7');
hcsep=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','I8');
A=sqrt((P*(n+1)*(n+3)*(hcsep^(n+1)))/hxb);
h=xlsread('A508-3 H-h.xlsx','锻造数据','C2:C67');
Hirr=xlsread('A508-3 H-h.xlsx','锻造数据','D2:D67');
Fhe=((Hirr./H0).^2)-1-(hxb./h);
ht=0:0.5:3000;
Fh=P*(ht.^n).*(ht<=hcsep)+(Z./ht-Q./(ht.^3)).*(ht>hcsep);
plot(ht,Fh,'b-',h,Fhe,'r*')
%legend('model','Experiment');
%xlabel('h');
%ylabel('y=(H_irr0./H0).^2-1-hxb./h');
axis([0,3000,0,1.5]);
hold on;

H0=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','J2');
hxb=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','J3');
Q=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','J4');
Z=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','J5');
n=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','J6');
P=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','J7');
hcsep=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','J8');
A=sqrt((P*(n+1)*(n+3)*(hcsep^(n+1)))/hxb);
h=xlsread('A508-3 H-h.xlsx','锻造数据','E2:E67');
Hirr=xlsread('A508-3 H-h.xlsx','锻造数据','F2:F67');
Fhe=((Hirr./H0).^2)-1-(hxb./h);
ht=0:0.5:3000;
Fh=P*(ht.^n).*(ht<=hcsep)+(Z./ht-Q./(ht.^3)).*(ht>hcsep);
plot(ht,Fh,'b-',h,Fhe,'r*')
%legend('model','Experiment');
%xlabel('h');
%ylabel('y=(H_irr0./H0).^2-1-hxb./h');
axis([0,3000,0,1.5]);
hold on;

H0=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','K2');
hxb=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','K3');
Q=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','K4');
Z=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','K5');
n=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','K6');
P=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','K7');
hcsep=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','K8');
A=sqrt((P*(n+1)*(n+3)*(hcsep^(n+1)))/hxb);
h=xlsread('A508-3 H-h.xlsx','锻造数据','G2:G67');
Hirr=xlsread('A508-3 H-h.xlsx','锻造数据','H2:H67');
Fhe=((Hirr./H0).^2)-1-(hxb./h);
ht=0:0.5:3000;
Fh=P*(ht.^n).*(ht<=hcsep)+(Z./ht-Q./(ht.^3)).*(ht>hcsep);
plot(ht,Fh,'b-',h,Fhe,'r*')
%legend('model','Experiment');
%xlabel('h');
%ylabel('y=(H_irr0./H0).^2-1-hxb./h');
axis([0,3000,0,1.5]);
hold on;

H0=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','L2');
hxb=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','L3');
Q=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','L4');
Z=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','L5');
n=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','L6');
P=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','L7');
hcsep=xlsread('D:/辐照硬化程序/参数的校准.xls','Sheet1','L8');
A=sqrt((P*(n+1)*(n+3)*(hcsep^(n+1)))/hxb);
h=xlsread('A508-3 H-h.xlsx','锻造数据','I2:I67');
Hirr=xlsread('A508-3 H-h.xlsx','锻造数据','J2:J67');
Fhe=((Hirr./H0).^2)-1-(hxb./h);
ht=0:0.5:3000;
Fh=P*(ht.^n).*(ht<=hcsep)+(Z./ht-Q./(ht.^3)).*(ht>hcsep);
plot(ht,Fh,'b-',h,Fhe,'r*')
%legend('model','Experiment');
%xlabel('h');
%ylabel('y=(H_irr0./H0).^2-1-hxb./h');
axis([0,3000,0,1.5]);
hold on;

legend('model-0.25dpa.300C','Experiment-0.25dpa.300C','model-0.08dpa','Experiment-0.08dpa','model-0.16dpa','Experiment-0.16dpa','model-0.25dpa','Experiment-0.25dpa','model-0.25dpa.250度','Experiment-0.25dpa.250度');

