%% skript for checking the latency of the first peak when collective spiking is spreading through columns. 
%clear all
close all

load('/Users/Hanna/Documents/TMBIM2/Exjobb/YardenNelkenModel/SimulationResults/18-02-02, Original, Controlling the model/u0.50_vary_u_original/TYLT_astronomy_net1_L.mat')


c = 11
plot_title = strcat('number of columns ', num2str(P), ' input column= ' , num2str(Rec_Column), ' number of stimuli =  ', num2str(n_stim), ' u-value =  ', num2str(U),' protocol  ', num2str(nev_cond));
x = E_mean(c,:); %load data into vector x.
[pks, locs] = findpeaks(x); %pks finds amplitude and number of peaks in vector x, locs display the indicies of the peaks.

for n = 1:100 %n can be changed, but since we're only interersted in the first peak n doesn't have to enclose all the last peaks. 
    if pks(n)>60 %a treshold that selects large peaks only.
    locs(n);
    end
end



figure('Name',plot_title,'NumberTitle','off'); %create a new figure
hold on
plot(pks) %make a histogram from the peaks found in x
xlabel('some type of time unit')
ylabel('amplitude of peak')
title({plot_title,' ', strcat('Column', num2str(c))})


