%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Vectors and variables
%      VIDEO: Working with text (characters and strings)
% Instructor: mikexcohen.com
%
%%

wholetext = 'Hello my name is Mike and I like purple.';

% separate into a cell array based on spaces
wordsep = regexp(wholetext,' ','split');

% remove any words with exactly 4 characters
numchars   = cellfun(@length,wordsep);
words2keep =  numchars~=4;
%将布尔值为0元素直接抹掉了；再将该布尔值序列用原函数读取，则只保留了目标元素。
wordsep2 = wordsep(words2keep);


% replace 'Mike' with your name and 'purple' with your favorite color
targname  = 'Mike';
targcolor = 'purple';

namestart = strfind(wholetext,targname);%给出目标字符串的起始位置索引号（从1开始）。
colorstart = strfind(wholetext,targcolor);

newtext = [ wholetext(1:namestart-1) 'John' ...
    wholetext(namestart+length(targname):colorstart-1) 'Rose' ...索引：以到原来的名字的前一个字符作为开始，到花的前一个字符结束。
    wholetext(colorstart+length(targcolor):end)];
% 此处思路是：将原有字符串前面部分截取下来，再在其后面补上目标元素；原来所截取的长度加上所补上的字符串的长度，继而往后读取替换;
% 末尾句号，从'Purple'的起始位置第一个开始，加上'purple'自身的长度，来到+1位置即'.'位置，以end结尾结束。








%%
