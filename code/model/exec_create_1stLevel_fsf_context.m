% create 1st-level fsf for massive number of regressors.
%
% sww.2016.

clear all

% load subject ID
%load('subjList');
%n_subj=length(subID);
%n_runs=6;
subID='TMC';
runNo=1;

home_dir='/data2';
model_dir='model_5';
QQ.model_dir=[home_dir '/' model_dir];
QQ.data_dir='/data2/data';
QQ.regress_dir='/data2/regressor/model_5';
n_trials=15;
n_stim=2;

QQ.n_EVs=34; %pre-determined
QQ.n_contrasts=34; %pre-determined
QQ.contrast_vect=eye(QQ.n_contrasts);
count_ev=0;
for i=1:n_trials
    for j=1:n_stim
        count_ev=count_ev+1;
        QQ.ev_name{count_ev}=['s' num2str(j) '_trial_' num2str(i)];
        QQ.contrast_name{count_ev}=QQ.ev_name{count_ev};        
    end
end

% additional EV.
QQ.ev_name{31}='onset_feedback';
QQ.ev_name{32}='mag_reward';
QQ.ev_name{33}='PE';
QQ.ev_name{34}='rewMag X RPE';

% additional context.
QQ.contrast_name{31}='onset_feedback';
QQ.contrast_name{32}='mag_reward';
QQ.contrast_name{33}='PE';
QQ.contrast_name{34}='rewMag X RPE';

% interaction vectors
QQ.ev_interact = zeros(QQ.n_EVs,3);
QQ.ev_interact(34,:)=[1 32 33]; 
%the last EV is the interaction regressor

create_1stLevel_fsf_context(subID,1,QQ);


