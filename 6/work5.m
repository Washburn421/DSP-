clc;
clear;


xn = [-4,-2,0,-4,-6,-2,-4,-6,-6,-4,-4,-6,-6,-2,6,12,8,...
    0,-16,-38,-60,-84,-90,-66,-32,-4,-2,-4,8,12,12,10,6,...
    6,6,4,0,0,0,0,0,-2,-4,0,0,0,-2,-2,0,0,-2,-2,-2,-2,0];
B = [0.0092    0.0367    0.0550    0.0367    0.0092];
A = [1.0000   -2.0325    1.8204   -0.7706    0.1294];
yn = filter(B,A,xn);
figure;
subplot(2,2,1);
stem(0:length(xn)-1,xn,'*');title('�˲�ǰ');
subplot(2,2,2);
stem(0:length(yn)-1,yn,'*');title('�˲���');

x=fft(xn,1024);
y=fft(yn,1024);
N=0:1023;
wk=2*N/1024;
subplot(2,2,3);
plot(wk,abs(x));
subplot(2,2,4);
plot(wk,abs(y));