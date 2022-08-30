%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Command statements
%      VIDEO: Random count-down timer (Poisson-like)
% Instructor: mikexcohen.com
%
%%

% set threshold
thresh = exp(-10);

% initialize initial value
[currval,startval] = deal( 10 );%deal() function gives all output the same value in the ().

% decay process
decayvar = nan(1,1000);

% counter
counter = 0;
currval = startval;

% stay in loop as long as needed
while currval>thresh
    
    % increase counter
    counter = counter+1;

     % update decay variable
    decayvar(counter+1) = currval;
    
    % decrease target by random fraction ([0 1])
    currval = currval * rand; % rand would generate the defult random number between 0 and 1. 
    
   
end

% plot the results
figure(1), clf
plot(decayvar,'ks-','linew',2,'markersize',15,'markerfacecolor','w')
xlabel('Iterations'), ylabel('Value')
title([ num2str(counter) ' iterations until threshold' ])

%%
