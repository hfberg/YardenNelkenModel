clear all
for c = 1:11
    %load('SimulationResults/net1/TYLT_astronomy_net1_L.mat')
    load('/Users/Hanna/Documents/TMBIM2/Exjobb/YardenNelkenModel/SimulationResults/18-01-29, Modified, varying u/u0.47_vary_u_modified/TYLT_astronomy_net1_L.mat')
    df1i=find(Oddball==7); %list of indices of the deviant
    sf1i=find(Oddball==5);  %list of indices of the standard
    c

    DA1=E_mean(c,:);

    %load('SimulationResults/net1/TYLT_astronomy_net1_H.mat')
    load('/Users/Hanna/Documents/TMBIM2/Exjobb/YardenNelkenModel/SimulationResults/18-01-29, Modified, varying u/u0.47_vary_u_modified/TYLT_astronomy_net1_H.mat')
    df2i=find(Oddball==5); %low
    sf2i=find(Oddball==7); %high

    DA2=E_mean(c,:);

    %compute the peak responses of all 100 stim
    maxE=zeros(1,n_stim);
    for i=1:n_stim
    m=max(DA1(Stim_Onsets(i):Stim_Onsets(i)+400)); %400 is duration of response
    maxE(i)=m;  
    %min seems to be at about 2.9956, subtract this from max?
    end
    d1=sum(maxE(df1i))/length(df1i); %filter out the deviants and compute mean
    s1=sum(maxE(sf1i))/length(sf1i); %filter out the standards and compute mean

    maxE=zeros(1,n_stim);
    for i=1:n_stim
    m=max(DA2(Stim_Onsets(i):Stim_Onsets(i)+400)); %400 is duration of response
    maxE(i)=m;  
    %min seems to be at about 2.9956, subtract this from max?
    end
    d2=sum(maxE(df2i))/length(df2i);
    s2=sum(maxE(sf2i))/length(sf2i);

    CSI=(d1+d2-s1-s2)/(d1+d2+s1+s2)

    %CSI given in the text=0.632
    %col=11 gives 0.7747
    %col-1 gives 0.5526
    %col+1 gives 0.6152
end
