%% histogram of spike frequency in one column
clear all
close all

load('SimulationResults/18-01-29, Modified, varying u/u0.50_vary_u_modified/TYLT_astronomy_net1_L.mat')
C = 6
plot_title = strcat('number of columns ', num2str(P), ' input column= ' , num2str(Rec_Column), ' number of stimuli =  ', num2str(n_stim), ' u-value =  ', num2str(U),' Modified model, protocol  ', num2str(nev_cond));
x = E_mean(C,:); %load data into vector x.

[pks] = findpeaks(x) %Find number of peaks in vector x

figure('Name',plot_title,'NumberTitle','off'); %create a new figure
histogram(pks) %make a histogram from the peaks found in x
xlabel('# spikes/sek')
ylabel('number of times # spikes/sek is seen in the column')
title({plot_title,' ', strcat('Column', num2str(C))})



