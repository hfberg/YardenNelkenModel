close all
clear all

curr_time = clock; 
term = 'astronomy'; % This is the terminal on which the simulation is run and its results saved
for net_num = 1%:5 % Allows running on multiple networks, in sequence.
% Each network would have its own randomization of
% tuning curves. If several networks are run, 
% activate the line that adds the network number
% to the folder name (it is currently in comment)
Init = 1; % Init = 1 means that a new network will be initialized; set this to 0 to run on previously saved networks 
foldnam_gen = 'SimulationResults/';
foldnam = 'SimulationResults/'; 
foldnam = [foldnam_gen '/net' num2str(net_num)];
save([foldnam_gen '/TYLT_foldername.mat'],'foldnam')

if Init
run pcbi1005437s001_gaussian_U.m
else
load([foldnam '/TYLT_Prot_' term '_Network_' num2str(net_num) '_Par.mat'])
end
Freq_Diff = 2;
Rec_Column = 6; %changed from 11 to 6 /HFB Hanna
Rec_Column_display = strcat('Rec_Column is set to: ', num2str(Rec_Column)) %Added this to keep track in commanf window /HFB

% If any the following arrays has more than one value, activate the
% corresponding lines in pcbi.1005437.s002.m to ensure that files are saved
% with the appropriate suffix.
Probs_Arr = [0.1]; % Sets the probabilities of F2 in the Low Condition
A_Arr = [5];
ISI_Arr = [0.3]; % Interval between stimuli (offset to onset)

num_trials = 1; % If running more than one trial, activate the corresponding line in pcbi.1005437.s002.m to ensure that files are saved
% with the appropriate suffix.

for nevco = 1:2 % There are 7 basic conditions; 8 & 9 are Fixed conditions as in Yaron 2012) %Changsd to 1:2 from 1:7 /HFB±±
for prob = 1:length(Probs_Arr)
for tr = 1:num_trials
for aa = 1:length(A_Arr)
for bb = 1:length(ISI_Arr) 
save([foldnam '/TYLT_meta_data.mat'],'nevco','tr',...
'Freq_Diff','Rec_Column','num_trials','Probs_Arr',...
'A_Arr','ISI_Arr','aa','bb','prob','term','net_num')
clear all
load('SimulationResults/TYLT_foldername.mat')
load([foldnam '/TYLT_meta_data.mat'])
load([foldnam '/TYLT_Prot_' term '_Network_' num2str(net_num) '_Par.mat'])

nev_cond = Conds{nevco};
Probs_F2L = Probs_Arr(prob);
A = A_Arr(aa);
ISI = ISI_Arr(bb)

stim = 1;
save_results = 1;
foldnam_host = foldnam; % Here one can save a path to a different location where simulation results will be saved
run pcbi1005437s002_gaussian_U.m
end
end
end
end
disp(['Calculation for network ' num2str(net_num) ', ' Conds{nevco} ' condition complete']) 
end

end
