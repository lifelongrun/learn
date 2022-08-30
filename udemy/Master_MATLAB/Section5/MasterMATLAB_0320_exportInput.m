%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Importing and exporting data
%      VIDEO: Export and import multiple files
% Instructor: mikexcohen.com
%
%%


basefilename = 'testfile';
numfiles = 10;

% loop over all files
for filei = 1:numfiles
    
    % create string with name of file
    filename = [ basefilename  num2str(filei) '.mat'];
    
    % bonus: skip this iteration of the loop if the file exists
    if exist(filename,'file') %如果文件以及存在，则跳过该文件。
        contine; 
    end

    % generate some random data
    randomdata = randn(100);
    
    % write to output file (MATLAB .mat format)
    save(filename,'randomdata') %注意用一个单引号写入数据；
    disp(['I just wrote file ' filename '.'])
end
    
%% an aside on the continue function

for i=1:10
    
    % skip this iteration if i is even
    if mod(i,2)==0, continue, end %mod(x,y),即对x除以y求余;continue means skip the latter code lines.
    
    % print the number
    disp([ 'Iteration ' num2str(i) ])


end

%% now for importing data

% use wild-card (*) to find the files to import
files2import = dir('testfile*.mat');%以一个结构数组的形式存储；用files2import(2)显示某个文件信息；用{file2import.name}获得文件名；

% initialize as cell array
alldataC = cell(1,length(files2import));

% loop over file names
for filei=1:length(files2import)
    
    % import and store data
    load(files2import(filei).name) %此行开始，待续... ...
    
    
    % for matrix storage, initialize on first iteration
    
    % and now populate the big matrix
    alldataM(filei,:,:) = randomdata;
    
end

%%

