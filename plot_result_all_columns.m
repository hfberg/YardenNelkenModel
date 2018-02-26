%%load needed only once, set as comment after this single use, pick one below

%load('SimulationResults/18-02-02, Controlling the model_original/n_stim100_original/TYLT_astronomy_net1_L.mat') %old generated data
%load('SimulationResults/net1/TYLT_astronomy_net1_L.mat')     %latest generated data. Low, Df2
load('/Users/Hanna/Documents/TMBIM2/Exjobb/YardenNelkenModel/SimulationResults/18-02-02, Original, Controlling the model/u0.60_vary_u_original/TYLT_astronomy_net1_L.mat')
%load('SimulationResults/18-02-02, Controlling the model_original/p12_rec_column6_original/TYLT_astronomy_net1_L.mat') %old generated data
%load('SimulationResults/net1/TYLT_astronomy_net1_H.mat')     %latest generateed data, High, Df1



%% For plotting the figs one by one.
%close all %clear current figure window.

% for i = 1:11
%     Rec_Column = i
%     figure('Name',strcat('U-value = ', num2str(U),' protocol ', num2str(prot_name)), 'NumberTitle','off'); hold on
%     plot(E_mean(Rec_Column,:),'b')
% %     title(strcat('U-value = ', num2str(U),' protocol ', num2str(prot_name),'Column', num2str(Rec_Column)))
%     ylabel('spikes/s')
%     xlabel('0 - 40,2 sek')
%    %Filename=sprintf(num2str(prot_name),'_u', num2str(U), 'col', num2str(Rec_Column), '.fig');
%     %save(['/Users/Hanna/Documents/TMBIM2/Exjobb/YardenNelkenModel/Results_YN/18-01-31, Testing every coumn with U./', 'u', num2str(U), Filename])
% end
%  i = i + 1
 

%% Plotting all in one.

close all %clear current figure window.
figure('Name',strcat('number of columns', num2str(P),' input column =', num2str(Rec_Column), 'protocol ', num2str(nev_cond)), 'NumberTitle','off');

for i = 6:16
    Rec_Column = i
    b = i-5
    subplot(4,3,b)
    
    plot(E_mean(Rec_Column,:),'r')
    ylabel('spikes/s')
    xlabel('0 - 40,2 sek')
    
    title(strcat('Column', num2str(Rec_Column)))
end
