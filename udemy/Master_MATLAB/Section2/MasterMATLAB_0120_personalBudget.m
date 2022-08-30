%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Getting started
%      VIDEO: Using MATLAB for a personal budget
% Instructor: mikexcohen.com
%
%%

% monthly income (post-tax)
income = 2500; % in RMB


% list monthly expenses
rent  = 1200;
utils =  300; % water, electricity, internet, etc.
car   =  250; % gas and insurance
food  =  300; % assuming 75/week
phone =   50; % gotta have unlimited downloads!
retirement = .1*income; % you should be investing 10% of your income!


% total monthly expenditures
outflow = rent + utils + car + food + phone + retirement;

% amount left over for nonessential expenses
nonessentials = income - outflow;


% how much can you spend per day?
perday = nonessentials / 30;
disp([ 'I can spend ' num2str(perday) ' extra each day.' ])


% what if you spend twice as much during the weekend as during the week?
%周末的花费是周内（5天）的两倍，所以考虑一共三份，两份在周末，一份在周内（周一至周五）
perweek = nonessentials / (30/7);
inThirds = perweek / 3;
disp(['I can spend ' num2str(inThirds*2) ' during the weekend, and ' num2str(inThirds/5) ' each week day. ' ])

%Finished at 2022/08/23 night. 
%%
