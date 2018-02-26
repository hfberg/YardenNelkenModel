%load needed only once, set as comment after this single use, pick one below
%load('SimulationResults/net1/TYLT_astronomy_net1_L.mat')     %Low, Df2
%load('SimulationResults/net1/TYLT_astronomy_net1_H.mat')     %High, Df1
%load('SimulationResults/net1/TYLT_astronomy_net1_E.mat')     %Equal
load('SimulationResults/net1/TYLT_astronomy_net1_DA1.mat')   %Deviant alone f1
%load('SimulationResults/net1/TYLT_astronomy_net1_DA2.mat')   %Deviant alone f2
%load('SimulationResults/net1/TYLT_astronomy_net1_DB.mat')    %Diverse broad
%load('SimulationResults/net1/TYLT_astronomy_net1_DN.mat')    %Diverse narrow

figure(10)
plot(E_mean(Rec_Column-1,:),'r'), hold on
plot(E_mean(Rec_Column+1,:)+100,'b'), hold on

figure(2)
maxE=zeros(1,n_stim);
for i=1:n_stim
m=max(E_mean(Rec_Column-1,Stim_Onsets(i):Stim_Onsets(i)+400)); %400 is duration of response
maxE(i)=m;  
%min seems to be at about 2.9956, subtract this from max?
end
plot(maxE,'*')
