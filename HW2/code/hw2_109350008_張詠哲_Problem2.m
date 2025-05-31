% EEGLAB history file generated on the 11-Nov-2023
% ------------------------------------------------

EEG.etc.eeglabvers = '2021.1'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_importdata('dataformat','array','nbchan',0,'data','data','setname','S02_Sess05','srate',200,'pnts',0,'xmin',0);
EEG = eeg_checkset( EEG );
EEG=pop_chanedit(EEG, 'lookup','C:\\eeglab_current\\eeglab2021.1\\plugins\\dipfit\\standard_BEM\\elec\\standard_1005.elc','rplurchanloc',1);
EEG = eeg_checkset( EEG );
figure; topoplot([],EEG.chanlocs, 'style', 'blank',  'electrodes', 'labelpoint', 'chaninfo', EEG.chaninfo);
EEG = eeg_checkset( EEG );
EEG = pop_importevent( EEG, 'event','G:\\我的雲端硬碟\\Documents\\110下學期\\BCI助教\\train\\event.txt','fields',{'latency','type'},'skipline',1,'timeunit',1);
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
EEG = pop_importevent( EEG, 'append','no','event','G:\\我的雲端硬碟\\Documents\\110下學期\\BCI助教\\train\\event.txt','fields',{'latency','type'},'skipline',1,'timeunit',1,'align',0);
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
EEG = pop_importevent( EEG, 'append','no','event','G:\\我的雲端硬碟\\Documents\\110下學期\\BCI助教\\train\\event.txt','fields',{'latency','type'},'skipline',1,'timeunit',1,'align',0);
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
EEG.etc.eeglabvers = '2023.1'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_eegfiltnew(EEG, 'locutoff',1,'hicutoff',48,'plotfreqz',1);
EEG = pop_runica(EEG, 'icatype', 'runica', 'extended',1,'interrupt','on');
pop_topoplot(EEG, 0, [1:56] ,'S02_Sess05',[7 8] ,0,'electrodes','on');
EEG = pop_iclabel(EEG, 'default');
pop_selectcomps(EEG, [1:56] );
EEG = pop_subcomp( EEG, [1 10 12 14 17 18 19 21 22 24 26 27 30 31 32 34 35 37 41 43 45 49 50 51 56], 0);
pop_eegplot( EEG, 1, 1, 1);
