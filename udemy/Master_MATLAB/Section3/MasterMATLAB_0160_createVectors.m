%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Vectors and variables
%      VIDEO: Create vectors and matrices
% Instructor: mikexcohen.com
%
%%

% make a row vector using square brackets
vectR = [ 1 2 3 4 2 3 1 0 -999 ];

% make a column vector using semicolons
vectC = [ 1; 5; 6; 0 ]
vectC_version_01 = [ 1; 5; 6; 0 ]'

% make a column vector by transposing a row vector
vect = transpose(vectC)

% create a 2x3 matrix 

% Hint:在选择运行时，只选中分号前的代码进行运行即可。
matr = [1 0 3; 2 4  1];

% or transpose a 3x2 matrix!

matr = transpose(matr)

% make a row vector of ones

onevect = [ 1 1 1 1 1 1 ];
onevect = ones(5,4)

% column vector of .25

vect = [0.25 0.25 0.25 0.25 0.25]';
vect = [0.25; 0.25; 0.25; 0.25; 0.25];
vect = ones(5,1)/4
vect = zeros(5,1)+0.25;

% matrix of random numbers
matr = randn(4,3);

% transpose that matrix and store as a new matrix

matrix_new = matr

%%
