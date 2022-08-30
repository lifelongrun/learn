%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Importing and exporting data
%      VIDEO: Import and export Excel-format data
% Instructor: mikexcohen.com
%
%%

% list data folder and file
dataFolder = 'D:\John Mike\OneDrive\1_Personal\Matlab\Section5/';
dataFile   = 'sensordata.xlsx';

% import data file using xlsread

[numdata,txtdata,rawdata] = xlsread([dataFolder dataFile]);

% check sizes and outputs
whos


%% extract key data

% starting line
startline = 

% get list of sensor IDs
sensorID = 

% get list of time points
timepoints = 

% now get all of the data
datatemp = 


% a list of unique sensor numbers would also be useful
uchans = 
utimes = 

% initialize data matrix
datamat = nan( length(uchans),length(utimes) );

%% populate and plot

% populate one line at a time
for linei=1:length(sensorID)
    
    % line-specific channel and time point
    datamat(sensorID,timepoints) = datatemp;
end

% plot
figure(1), clf
plot(datamat','s-','markerfacecolor','w')


%% bonus: identify missing data

% find where datamat is nan



% loop over all missing time points
for i=1:length(missingdata)
    
    % convert index to subscript to find channel/time point
    
    
    % print message
    disp([ 'Channel  timepoint  has a missing value!' ])
end

