function [gof] = createFitdongli(r, n)
%CREATEFIT1(R,N)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : r
%      Y Output: n
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 12-May-2021 13:24:02 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( r, n );

% Set up fittype and options.
ft = 'linearinterp';

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, 'Normalize', 'on' );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'n vs. r', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel r
ylabel n
grid on


