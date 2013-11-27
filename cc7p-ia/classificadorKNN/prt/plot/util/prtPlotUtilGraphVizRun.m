function FileInfo = prtPlotUtilGraphVizRun(connectivity)
% Internal function, 
% xxx Need Help xxx
% FileInfo = prtPlotUtilGraphVizRun(connectivity)
%   Calls the GraphViz binary neato on the graph specified by 
%   connectivity matrix.
% 
%   This requires that GraphViz is installed and available from the command
%   prompt

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



% Write file for graphviz
tempDotFileName = fullfile(tempdir,'_tempPrtGraphVizGraph.dot');
tempLayoutFileName = fullfile(tempdir,'_tempPrtGraphVizLayout.dot');
prtPlotUtilGraphVizWriteDot(connectivity, tempDotFileName);

% Create graphviz command 
% -Gsplines=true -Gsep=0.1
% -Glevelsgap=100
% -Gratio="expand" 
% -Goverlap=true
% -Gminlen=5 
% -Gdiredgeconstraints= 
% -Gnojustify=true
% -Gpack=true
% -Gratio="expand"
%commandStr = 'neato -Tdot -Gminlen=2 -Gnormalize=true  -Gmaxiter=25000 -Gmode=hier -Glevelsgap=10 -Grankdir="LR" -y';
%commandStr = 'sfdp -Tdot -Gnormalize=true -Gratio="expand" -Gmaxiter=25000 -Gquadtree=true -Glevels=6 -y';

commandStr = 'dot -Tdot -Grankdir="LR" -Gmaxiter=2500 -Gpack=true';

commandStr = cat(2,commandStr,' -o "',tempLayoutFileName,'" "',tempDotFileName,'"');

% Call graphviz
[systemStatus, systemResult] = system(commandStr); %#ok<NASGU>

if systemStatus
    error('prtPlotUtilGraphVizRun:graphvizIssue','Problem running Graphviz. Graphviz must be installed and on the system path to enable prtAlgorithm plotting. Go to http://www.graphviz.org/ and follow the installation instructions for your operating system.')
    % Do you have it installed and on the system path? Try >>system(''dot -V'') to see.
    % You may need to restart.
end

% Read file from graphviz
FileInfo = prtPlotUtilGraphVizReadDot(tempLayoutFileName);

% Clean up temporary files 
delete(tempDotFileName);
delete(tempLayoutFileName);
