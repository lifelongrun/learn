%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Importing and exporting data
%      VIDEO: Import formatted text file
% Instructor: mikexcohen.com
%
%%

% pointer to the file
fid = fopen('datafile.txt','r');%运行此行，如果fid的值为-1，代表读取(默认为,'r')或打写入(,'W')目标文件不在本Matlab路径下.

%% read header

% ignore first line
IgnoreFirstLine = fgetl(fid)%fgetl函数,作用为读取文本中的每一行内容,然后将光标移至下一行的起始位置.

% second line contains number of sensors
hdr_nSensors = 
nSensors = 

% third line contains number of time points
hdr_ntimepoints = 
nPnts = 

% move pointer ahead until "Start data"
toggle = true;
while toggle%toggle本身是布尔值,为true.
    
    % get a line of data
    aline = 
    
    % test whether the line begins with "Start", and flip toggle
    if strcmpi
        
    end
end

%% read data

% initialize matrix
data = 

% set toggle and begin while loop
toggle = true;
while toggle
    
    % get a line of tab-delimited data
    aline = 
    
    % check whether we're at the end of the data
    if strcmpi
        
    end
    
    % put the data point into the matrix at the appropriate position
    data(  ,  ) = 
    
end

% now we can plot the data
figure(1), clf
plot(data','linew',2)

%%
