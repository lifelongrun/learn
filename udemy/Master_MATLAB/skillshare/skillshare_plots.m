%% Skill Share:
% Topic: Basic Knowledge of Plotting

clc, clear, close all

%u = [0.1 0.2 0.3 0.4 0.5 0.6 0.7];                     %voltage
u = 0.1:0.1:0.7;                                       %voltage
i = [12e-3 15e-3 20e-3 30e-3 50e-3 80e-3 100e-3];      %current

%figure(1) ：用以区别图形不同的窗口和图形内容
subplot(2,3,1) %定义一个2x3网格，明确本图位置在1（从第二象限为数值1开始，顺时针方向数起，该初始位置标记为1）
figure(1)
plot(u, i, 'r')

xlabel('emitter-base voltage U_{BE}, V')
ylabel('base current I_B, A')

title('Base current vs. emitter-base voltage of BJT')

grid on
grid minor

set(gca,'FontName', 'Times New Roman', 'FontSize', 14) %gca-读取现在窗口中的图形内容

%xlim([0 0.8])
%ylim([0 110e-3]) 这两行等价于下面一行    
axis([0 0.8 0 160e-3])

i2 = [15e-3 12e-3 30e-3 40e-3 70e-3 90e-3 150e-3]; % current

hold on

%figure(2)
subplot(2,3,2)%定义一个2x3网格，明确本图位置在2（从第二象限为数值1开始，顺时针方向数起）
plot(u, i2, 'b', 'LineWidth', 2)

legend('BJT 1', 'BJT 2', 'Location', 'NorthWest') %放在plot后面，BJT 1 定义第一个图的的标签；legend位置配合东南西北四个方向；

xlabel('emitter-base voltage U_{BE}, V')
ylabel('base current I_B, A')

title('Base current vs. emitter-base voltage of BJT')

grid on
grid minor

set(gca,'FontName', 'Times New Roman', 'FontSize', 14)

xlim([0 0.8])
ylim([0 160e-3])

%hold off
%% Topic: Marker
%clc, clear, close all

u = 0.1:0.1:0.7;                                       %voltage
i1 = [12e-3 15e-3 20e-3 30e-3 50e-3 80e-3 100e-3];      %current


%plot(u, i1, 'o-r', 'LineWidth', 2)
%figure(2)
subplot(2,3,3)
myplot = plot(u, i1, 'o-r', 'LineWidth', 2); %对marker进行更多定义,将其值赋给一个变量；改变此处的线宽，实际影响图形中的线宽和markerface的宽度（圆圈变厚）


xlim([0 0.8])
ylim([0 160e-3])

grid on
grid minor

xlabel('emitter-base voltage U_{BE}, V')
ylabel('base current I_B, A')
title('Base current vs. emitter-base voltage of BJT')
set(gca,'FontName', 'Times New Roman', 'FontSize', 14)
legend('BJT 1', 'Location', 'NorthWest') 

set(myplot, 'Marker', '^', 'MarkerEdgeColor', 'blue', 'MarkerFaceColor', 'green','MarkerSize', 13)

%% Topic: Ticks
%clc, clear, close all


xvalues = 0:10:1000;
yvalues = 0:0.01:1;

%figure(3)
subplot(2,3,4)
plot(xvalues, yvalues)

%set(gca, 'xTick', [0 25 50 75 100]) %两者等价
%set(gca, 'xTick', 0:25:100)
%set(gca, 'xTick', min(xvalues):5:max(xvalues))

XTickSteps = 50;
YTickSteps = 0.05;

set(gca, 'xTick', min(xvalues):XTickSteps:max(xvalues))
set(gca, 'YTick', min(xvalues):YTickSteps:max(xvalues))

grid on

%% Topic: Line
%clc, clear, close all

temp = [-10 -10 -2 10 15 20 25 30 35 20 15 10];
month = 1:12;

%figure(4)
subplot(2,3,5)
h = plot(month, temp, 'o--k', 'LineWidth', 2);
grid on

xlim([1 12]) %注意坐标轴上下限这里是空格
ylim([min(temp) max(temp)])

set(gca, 'XTick', 1:1:12)
%set(gca, 'XTickLabel', 'Month') %X轴label全为 Month
%set(gca, 'XTickLabel', ['Month 1'; 'Month 2']) %X轴label全为 Month 1 Month 2 交替
set(gca, 'XTickLabel', ['Jan'; 'Feb'; 'Mar'; 'Apr'; 'May'; 'Jun'; 'Jul'; 'Aug'; 'Sep'; 'Oct'; 'Nov'; 'Dec'])

set(h, 'MarkerEdgeColor', 'blue', 'MarkerFaceColor', 'yellow', 'MarkerSize', 12) %第一个值用于选择目标图像

xlabel('Months')
ylabel('Temperature, \circC')

temp_average = mean(temp);


line([min(month) max(month)], [temp_average temp_average], 'LineStyle', '--', 'LineWidth', 2, 'Color', 'blue')
legend('Month temperature', ['Average temperature:', num2str(temp_average), '\circC'], 'Location', 'NorthWest')  %Legend位置用Location,后接东南西北

%% Topic: Two y axis

%clc, clear, close all


u = 0.1:0.1:0.7;                                       %voltage
i1 = [12e-3 15e-3 20e-3 30e-3 50e-3 80e-3 100e-3];      %current
i2 = [15e-3 12e-3 30e-3 40e-3 70e-3 90e-3 150e-3];      %current

%myplot = plot(u, i1, 'r', 'LineWidth', 2);

%xlim([0 0.8])  %小结：在考虑代码位置时，记住从从总体到局部的理念，先粗略勾画设置，后面的代码应该是在此基础上越来越详细，如果违背了这一理念，那么顺序就可能是不合适或错误的
%ylim([0 160e-3]) %↓↓↓

%figure(5)
subplot(2,3,6)
[ax, y1, y2] = plotyy(u, i1, u, i2)      %再放在这里运行;运行此行前的代码（原始图像）

% Limits values
xstartlim = 0;
xendlim = 0.8;
y1startlim = 0;
y1endlim = 120e-3;
y2startlim = 0;
y2endlim = 160e-3;

% Plots limits
xlim(ax(1), [xstartlim xendlim]) %对两个x轴坐标都要进行范围限定
xlim(ax(2), [xstartlim xendlim])
ylim(ax(1), [y1startlim y1endlim])
ylim(ax(2), [y2startlim y2endlim])

% Grid settings
grid on
grid minor

% Plot annotations
xlabel('emitter-base voltage U_{BE}, V')
ylabel('base current I_B, A') %↓↓↓
ylabel(ax(1), 'base current I_B, A')
ylabel(ax(2), 'base current I_B, A')
%set(gca,'FontName', 'Times New Roman', 'FontSize', 14) %↓↓↓
set(ax(1), 'FontName', 'Times New Roman', 'FontSize', 14)  %设置两个x轴的参数
set(ax(2), 'FontName', 'Times New Roman', 'FontSize', 14)
legend('BJT 1', 'BJT 2', 'Location', 'NorthWest') 
title('Base current vs. emitter-base voltage of BJT')
%plotyy(u, i1, u, i2) %建议使用 yyaxis left/right；先放在这里运行

% Markers and Colors
set(y1, 'Color', 'green', 'LineWidth', 2)
set(y2, 'Color', 'yellow', 'LineWidth', 2)
set(y1, 'Marker', 'x', 'MarkerEdgeColor', 'red', 'MarkerSize', 15)
set(y2, 'Marker', 'o', 'MarkerEdgeColor', 'red', 'MarkerFaceColor', 'blue', 'MarkerSize', 15)

% X and Y Ticks
set(ax,'XTick', xstartlim:0.05:xendlim) %不再是gca，而用ax
set(ax(1), 'YTick', y1startlim:0.01:y1endlim) %改变Y1的Ticks，首先是选择对应的x轴，再对YTick进行操作；此时这里的YTick范围主要参考前面的y的范围，比其上下限略大即可。
set(ax(2), 'YTick', y2startlim:0.02:y2endlim)


% 完成时间：2022.08.29下午








































