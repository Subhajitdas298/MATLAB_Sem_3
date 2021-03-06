% assignment 3 q 2
%% clear
clc;
clear all;
close all;

%% creating plots for continuious waves
% set t range
t = 0:79;

% take wave equation from user
y = input('Enter a continuious signal : ' );

% plot actual wave
subplot(2,2,1);
plot(t,y);
title('Actual Continuious Wave');
xlabel('t');
ylabel('Amplitude');
grid on;

% plot reversed wave
subplot(2,2,3);
plot(-t,y);
title('Reversed Continuious Wave');
xlabel('t');
ylabel('Amplitude');
grid on;

%% clearing workspace
clear all;

%% creating plots for discrete wave
% take sequence from user
x = input('Enter a sequence : ' );
origin = round(abs(input('Enter origin index (starting from 1) : ')));
% set time range
n = -(origin-1):(length(x)-origin);

% plot original signal
subplot(2,2,2);
stem(n,x);
title('Actual Discrete Sequence');
xlabel('n');
ylabel('Amplitude');
grid on;

% plot reversed signal
subplot(2,2,4);
stem(-n,x);
title('Reversed Discrete Sequence');
xlabel('n');
ylabel('Amplitude');
grid on;