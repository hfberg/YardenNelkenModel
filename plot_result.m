%%load needed only once, set as comment after this single use, pick one below

%analyzing old data, change the un.n-folder
%load('/Users/Hanna/Documents/TMBIM2/Exjobb/YardenNelkenModel/SimulationResults/18-02-02, Original, Controlling the model/u0.50_vary_u_original/TYLT_astronomy_net1_L.mat')
load('SimulationResults/net1/TYLT_astronomy_net1_L.mat')     %Low, Df2


%load('SimulationResults/18-02-05, plotting x, avail neu tr/u0.47_original/TYLT_astronomy_net1_H.mat') %if analyzing old data, change the un.n-folder
%load('SimulationResults/net1/TYLT_astronomy_net1_H.mat')     %High, Df1


%plot_title = strcat('number of columns ', num2str(P), ' input column= ' , num2str(Rec_Column), ' number of stimuli =  ', num2str(n_stim), ' u-value =  ', num2str(U),' Original model, protocol ', num2str(nev_cond));
plot_title = strcat('ISI = ', num2str(ISI), ' number of stimuli =  ', num2str(n_stim), ' u-value =  ', num2str(U),' protocol ', num2str(nev_cond));
%% plot three in one

% %close all %clear current figure window.
% figure('Name',strcat('number of stimuli = ', num2str(n_stim),' protocol ', num2str(nev_cond)), 'NumberTitle','off');
% 
% subplot(3,1,1)
% plot(E_mean(Rec_Column-1,:),'r')
% title({plot_title,' ', strcat('Column', num2str(Rec_Column-1))})
% %title(strcat('Column', num2str(Rec_Column_m1)))
% 
% subplot(3,1,2)
% plot(E_mean(Rec_Column,:),'g')
% %title(strcat('Column', num2str(Rec_Column)))
% title(strcat('Column', num2str(Rec_Column)))
% ylabel('Number of spikes/s')
% 
% subplot(3,1,3)
% plot(E_mean(Rec_Column+1,:),'b')
% % xlabel(time units) change to time. 
% title(strcat('Column', num2str(Rec_Column+1)))
% %title(strcat('Column', num2str(Rec_Column_p1)))
% xlabel('0 - 40,2 sek')

%% Plot one at the time
%Rec_Column = 6

% close all 
% figure('Name',strcat('U-value = ', num2str(U),' protocol ', num2str(nev_cond)), 'NumberTitle','off');
% plot(E_mean(Rec_Column-1,:),'r'), hold on
% ylabel('Number of spikes/s')
% xlabel('ms')
% title({plot_title,' ', strcat('Column',  num2str(Rec_Column-1))})

figure('Name',strcat('U-value = ', num2str(U),' protocol ', num2str(nev_cond)), 'NumberTitle','off');
plot(E_mean(Rec_Column,:),'g'), hold on
ylabel('Number of spikes/s')
xlabel('ms')
title({plot_title,' ', strcat('Column', num2str(Rec_Column))})

figure('Name',strcat('U-value = ', num2str(U),' protocol ', num2str(nev_cond)), 'NumberTitle','off');
plot(Inp_E(Rec_Column,:),'g'), hold on
ylabel('Number of spikes/s')
xlabel('ms')
title({plot_title,' ', strcat('NOISE Column', num2str(Rec_Column))})

% figure('Name',strcat('U-value = ', num2str(U),' protocol ', num2str(nev_cond)), 'NumberTitle','off');
% plot(E_mean(Rec_Column+1,:),'b'), hold on
% ylabel('Number of spikes/s')
% xlabel('ms')
% title({plot_title,' ', strcat('Column', num2str(Rec_Column+1))})


%%
% maxE=zeros(1,n_stim);
% for i=1:n_stim
% m=max(E_mean(Rec_Column-1,Stim_Onsets(i):Stim_Onsets(i)+400)-2.995); %400 is duration of response
% maxE(i)=m;  
% %min seems to be at about 2.9956, subtract this from max?
% end
% 
% figure('Name', strcat('Respons/stimuli at U = ', num2str(U), ' column ', num2str(Rec_Column-1),' protocol  ', num2str(nev_cond)), 'NumberTitle', 'off');
% plot(maxE,'*')
% xlabel(strcat(num2str(n_stim), ' stimuli'))
% ylabel('Number of spikes/s')
% title({plot_title,' ', strcat('Column', num2str(Rec_Column))})
% 
% maxE=zeros(1,n_stim);
% for i=1:n_stim
% m=max(E_mean(Rec_Column,Stim_Onsets(i):Stim_Onsets(i)+400)-2.995); %400 is duration of response
% maxE(i)=m;  
% %min seems to be at about 2.9956, subtract this from max?
% end
% 
% figure('Name', strcat('Respons/stimuli at U = ', num2str(U), ' column ', num2str(Rec_Column+2), ' protocol  ', num2str(nev_cond)), 'NumberTitle', 'off');
% plot(maxE,'*')
% xlabel(strcat(num2str(n_stim), ' stimuli'))
% ylabel('Number of spikes/s')
% title({plot_title,' ', strcat('Column', num2str(Rec_Column))})
% 
% maxE=zeros(1,n_stim);
% for i=1:n_stim
% m=max(E_mean(Rec_Column+1,Stim_Onsets(i):Stim_Onsets(i)+400)-2.995); %400 is duration of response
% maxE(i)=m;  
% %min seems to be at about 2.9956, subtract this from max?
% end
% 
% figure('Name', strcat('Respons/stimuli at U = ', num2str(U), ' column ', num2str(Rec_Column+1), ' protocol  ', num2str(nev_cond)), 'NumberTitle', 'off');
% plot(maxE,'*')
% xlabel(strcat(num2str(n_stim), ' stimuli'))
% ylabel('Number of spikes/s')
% title({plot_title,' ', strcat('Column', num2str(Rec_Column+1))})
