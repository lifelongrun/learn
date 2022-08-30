% 流量计单位换算
x = 1/60 ;
x1 = 1000*x ;
disp(['0.1-1 m3/h = ' num2str(x) ' m3/min' ' = ' num2str(x1) ' mL/min'])
% 流量计上下限：0.3～3 L/h -这个是以L/h为单位的10倍上下限关系；、
y = 1*1000 ;
y1 = y*0.1 ;
disp([ 'fow range is ' num2str(y1) ' - ' num2str(y) ' m3/h'])

% 而目前所购得的流量计上下限为：3～30 mL/min-是以mL/min为单位的10上下限关系；
% 上述的两种流量计上下限为10倍关系