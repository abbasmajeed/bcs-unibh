function result = prtTestpreProcPCA

% Copyright (c) 2013 New Folder Consulting
%
% Permission is hereby granted, free of charge, to any person obtaining a
% copy of this software and associated documentation files (the
% "Software"), to deal in the Software without restriction, including
% without limitation the rights to use, copy, modify, merge, publish,
% distribute, sublicense, and/or sell copies of the Software, and to permit
% persons to whom the Software is furnished to do so, subject to the
% following conditions:
%
% The above copyright notice and this permission notice shall be included
% in all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
% OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
% MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
% NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
% DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
% OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
% USE OR OTHER DEALINGS IN THE SOFTWARE.


result = true;

% test from the help
try
    dataSet = prtDataGenProstate;     % Load a data set.
    pca = prtPreProcPca;           % Create the Principle Component
    % Analysis object.
    pca.nComponents = 4;           % Set the number of components to 4
    pca = pca.train(dataSet);      % Compute the Principle Components
    dataSetNew = pca.run(dataSet); % Extract the Principle Components
    
catch
    result = false;
    disp('error #1, basic pca test fail')
    
end

if dataSetNew.nFeatures ~=4
    result = false;
    disp('error #2, wrong number of features')
end

% check constuctor
try
    pca = prtPreProcPca('nComponents',4);
catch
    result = false;
    disp('error #3, param-val constructor fail')
end

% Baseline check would be nice if one exists.

%% Negative error checks

error = true;

try
    pca = prtPreProcPca;
    pca.nComponents = 0;
    error = false;
    disp('error #4, set to zero components')
catch
    %
end


try
    dataSet = prtDataGenProstate;     % Load a data set.
    pca = prtPreProcPca;           % Create the Principle Component
    % Analysis object.
    pca.nComponents = 20;           % Set the number of components to 4
    pca = pca.train(dataSet);      % Compute the Principle Components
    dataSetNew = pca.run(dataSet); % Extract the Principle Components
    
catch
    
end

if ~isequal(lastwarn, 'User specified # PCA components (20) is > maximum number of PCA allowed (min(size(dataSet.data)) = 16)')
    error = false;
    disp('error#5, too many components')
end

result = result && error;

