%%load needed only once, set as comment after this single use, pick one below
clear all
load('SimulationResults/18-02-02, Original, Controlling the model/u0.70_vary_u_original/TYLT_astronomy_net1_L.mat') %old generated data
%load('SimulationResults/net1/TYLT_astronomy_net1_L.mat')     %latest generated data. Low, Df2

%load('SimulationResults/18-02-05, plotting x, avail neu tr/u0.55_original/TYLT_astronomy_net1_H.mat') %old generated data
%load('SimulationResults/net1/TYLT_astronomy_net1_H.mat')     %latest generateed data, High, Df1


plot_title = strcat('U-value = ', num2str(U), ' Col = ', num2str(Rec_Column),' available neu. tr. protocol: ', num2str(nev_cond));

%% For plotting the figs one by one.
% %close all %clear current figure window.

% for i = 1:11
%     Rec_Column = i
%     figure('Name',strcat('U-value = ', num2str(U),' protocol ', num2str(prot_name)), 'NumberTitle','off'); hold on
%     plot(E_mean(Rec_Column,:),'b')
%     title(strcat('U-value = ', num2str(U),' protocol ', num2str(prot_name),'Column', num2str(Rec_Column)))
%    %Filename=sprintf(num2str(prot_name),'_u', num2str(U), 'col', num2str(Rec_Column), '.fig');
%     %save(['/Users/Hanna/Documents/TMBIM2/Exjobb/YardenNelkenModel/Results_YN/18-01-31, Testing every coumn with U./', 'u', num2str(U), Filename])
% end
%  i = i + 1
 

%% Plotting all in one.

close all %clear current figure window.
figure('Name',strcat('U-value = ', num2str(U),'Neu. tr. available for one synapse in the column, protocol ', num2str(nev_cond)), 'NumberTitle','off');

%for control
Rec_Column
n_stim
P
U

for i = 6:17
    Rec_Column = i;
    b = i-5
    subplot(4,3,b)
    plot(x_mean(Rec_Column,:),'b')
    %plot(E_mean(Rec_Column,:),'r')
    ylabel('Fract. of available neu. tr.')
    xlabel('0 - 40,2 sek')
    title(strcat('Original model, Column', num2str(Rec_Column)))
end


%% Compare x to E

% close all %clear current figure window.
% figure('Name',strcat('U-value = ', num2str(U), ' Col = ', num2str(Rec_Column),' compare available neu. tr. with spiking frequency, protocol ', num2str(prot_name)), 'NumberTitle','off');
% plot_title = strcat('U-value = ', num2str(U), ' Col = ', num2str(Rec_Column),' compare available neu. tr. with spiking frequency, protocol ', num2str(prot_name));
% 
% subplot(2,1,1)
% plot(x_mean(Rec_Column,:),'b')
% ylabel('Fraction of available neuro transmitter')
% xlabel('0 - 40,2 sek')
% title(plot_title)
% 
% subplot(2,1,2)
% plot(E_mean(Rec_Column,:), 'r')
% ylabel('Spikes/s')
% xlabel('0 - 40,2 sek')


