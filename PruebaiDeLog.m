% Decomposition of spatio-temporal trajectories into arcs of circumferences
% and lognormals


% File reading.
file='c-001-01.mat';
eval(['load ',file])
% Samples coordinates in x and y variables. pressure in p variable

% iDeLog Call
fmonline=100;
DRAW=1;
[D,tolog,paramsigma,parammu,vpx,vpy,ange,angs,SNRt,SNRv,vo]=iDeLog(x,y,p,fmonline,DRAW);

% Reconstruction from iDeLog parameters
[xt,yt]=ReconstruiriDeLog(paramsigma,parammu,tolog,vpx,vpy,ange,angs);
% Reconstruction from scriptStudio paremeters
[xss,yss]=ReconstruirScriptStudio(D,parammu,paramsigma,tolog,ange,angs);

% check between iDeLog and ScriptStudio reconstruction
%plot(xss+xt(1),yss+yt(1),'b',xt,yt,'r')


