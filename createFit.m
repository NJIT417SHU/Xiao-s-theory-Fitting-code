function [fitresult, gof] = createFit(h, Fhe)
%CREATEFIT(H,FHE)
%  Create a fit.
%
%  Data for 'Fit Z & Q' fit:
%      X Input : h
%      Y Output: Fhe
%      Weights : h
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 26-Sep-2021 21:39:04 自动生成


%% Fit: 'Fit Z & Q'.
[xData, yData, weights] = prepareCurveData( h, Fhe, h );

% Set up fittype and options.
ft = fittype( 'Z/x-Q/(x^3)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Robust = 'LAR';
opts.StartPoint = [6000000 500];
opts.Weights = weights;

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'Fit Z & Q' );
h_1 = plot( fitresult, xData, yData );
legend( h_1, 'Fhe vs. h with h', 'Fit Z & Q', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'h', 'Interpreter', 'none' );
ylabel( 'Fhe', 'Interpreter', 'none' );
grid on


