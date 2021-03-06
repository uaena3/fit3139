% Xinyu Ma
% 28652703
for k=1:5
    figure(k)
    for i=1:12
        subplot(4,3,i)
        r=0+(i-5)*0.2*k;
        s=-1*k-(i-5)*0.2*k;
        % x0=rand;
        % y0=(1-x0)*rand;
        % z0=1-x0-y0;
        x0=1/3+0.1;
        y0=1/3-0.05;
        z0=1/3-0.05;
        h=0.01;
        max_T=100;
        [x,y,z,t] = RK2_RPS(s,r,x0,y0,z0,h,max_T);
        plot(t,x,'b-',t,y,'r-',t,z,'black-')
        legend('x','y','z')
        xlabel('t')
        axis([0 max_T 0 1])
        title(['r=' num2str(r) '  s=' num2str(s)])
    end
end