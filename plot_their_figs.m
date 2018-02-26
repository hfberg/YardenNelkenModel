%load needed only once, set as comment after this single use, pick one below
load('SimulationResults/net1/TYLT_astronomy_net1_L.mat')     %Low, Df2
%load('SimulationResults/net1/TYLT_astronomy_net1_H.mat')     %High, Df1
%load('SimulationResults/net1/TYLT_astronomy_net1_E.mat')     %Equal
%load('SimulationResults/net1/TYLT_astronomy_net1_DA1.mat')   %Deviant alone f1
%load('SimulationResults/net1/TYLT_astronomy_net1_DA2.mat')   %Deviant alone f2
%load('SimulationResults/net1/TYLT_astronomy_net1_DB.mat')    %Diverse broad
%load('SimulationResults/net1/TYLT_astronomy_net1_DN.mat')    %Diverse narrow

%EF, I have just cut out their code for plotting


   
    figure(1)
        hold on
        plot(reshape(h_outline(tc_column,1,:),1,M),'-b.')

        title(['Typical Tuning Curve (Column ' num2str(tc_column) ')'])
        xlabel('Frequency')
        ylabel('Input as Fraction of the Input at the Best Frequency')
        xlim([0 22])


    
    figure(2)
        imagesc(Best_Freqs)
        title('Best Frequencies of All Neurons')
        xlabel('No. of Neuron in Column')
        ylabel('Column')
        colorbar


   
    figure(4)
        subplot(2,1,1)                
            imagesc(Neuron_mean)

            title('Mean Activity of All Neurons')                
            xlabel('No. of Neuron in Column')                
            ylabel('Column')                
            colorbar

        subplot(2,1,2)                
            imagesc(Active_Neurons)

            title(['Active Neurons (Threshold = ' num2str(act_thresh) ')'])                
            xlabel('No. of Neuron in Column')                
            ylabel('Column')
            colorbar

   

%mid_column  = floor(mean([mean(F2) mean(F1)]));
mid_column  = 11; %EF, my guess
Spec_Cols   = [mid_column]; 
        figure(3)
        for spec_col = 1:length(Spec_Cols)
            h_rearr = zeros(M_aug,NE);
            for syn_row = 1:M
                h_rearr(syn_row,:) = h(Spec_Cols(spec_col),:,syn_row);
            end

            subplot(length(Spec_Cols),1,spec_col)    
                imagesc(h_rearr)

                title(['Synapses of Column ' num2str(Spec_Cols(spec_col))])
                xlabel('Neuron')
                ylabel('Frequency')
        end
    

   
    figure(5)
        h_neur = 67;
        h_col  = 10;
aug_TC = h(h_col,h_neur,:); %h(nr_col=21, nr_neurons=100, ??=29) %EF change param order
        plot(Freq_Scale,reshape(aug_TC,1,M_aug+4),'-b.') %EF +4
        title(['Typical Tuning Curve (Neuron ' num2str(h_neur) ' of Column ' num2str(h_col) ')'])
        xlabel('Frequency')
        ylabel('Input as Fraction of the Input at the Best Frequency')

