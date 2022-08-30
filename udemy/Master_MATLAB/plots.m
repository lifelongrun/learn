%%
clc
clear all

axis_position = H2.titlenoppm;
nox_ppm = H2.VarName2;

%plot(axis_position,nox_ppm,'--o');
xlabel('x轴');
ylabel('y轴');
grid off
% legend('Nox ppm');
hold on
%%
x = (0:0.1:2*pi);
y2 = cos(x)*1000;
plot(axis_position,nox_ppm,x,y2);
legend('Combustion','Cos(x)*1000')