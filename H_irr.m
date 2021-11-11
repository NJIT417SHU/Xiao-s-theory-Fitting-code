function[H_irr]=GetH_irr(h,H0,hxb,n,A,hcsep);
js01=hxb./h;
js02=(A*A*hxb.*(h.^n))/((n+1)*(n+3)*(hcsep^(n+1)));
js03=A*A*hxb/2./h;
js04=1/(n+1)-hcsep^2/(n+3)./h./h;
%if h<=hcsep;
    H_irr=H0.*sqrt(1+js01+js02).*(h<=hcsep)+H0.*sqrt(1+js01+js03.*js04).*(h>hcsep);
%else;
    %H_irr=H0.*sqrt(1+js01+js03.*js04);
%end
end