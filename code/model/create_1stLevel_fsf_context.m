function create_1stLevel_fsf_context(subID,runNo,QQ)

% create 1st-level .fsf file for the context experiment.
%
% SWW. 2016.

%filename = [QQ.model_dir '/fsf/' subID '_run_' num2str(runNo) '.fsf'];
filename = [QQ.model_dir '/fsf/template.fsf'];
fid=fopen(filename,'w');

fprintf(fid,'\n');
fprintf(fid,'# FEAT version number\n');
fprintf(fid,'set fmri(version) 5.98\n');

fprintf(fid,'\n');
fprintf(fid,'# Are we in MELODIC?\n');
fprintf(fid,'set fmri(inmelodic) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Analysis level\n');
fprintf(fid,'# 1 : First-level analysis\n');
fprintf(fid,'# 2 : Higher-level analysis\n');
fprintf(fid,'set fmri(level) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Which stages to run\n');
fprintf(fid,'# 0 : No first-level analysis (registration and/or group stats only)\n');
fprintf(fid,'# 7 : Full first-level analysis\n');
fprintf(fid,'# 1 : Pre-Stats\n');
fprintf(fid,'# 3 : Pre-Stats + Stats\n');
fprintf(fid,'# 2 :             Stats\n');
fprintf(fid,'# 6 :             Stats + Post-stats\n');
fprintf(fid,'# 4 :                     Post-stats\n');
fprintf(fid,'set fmri(analysis) 7\n');

fprintf(fid,'\n');
fprintf(fid,'# Use relative filenames\n');
fprintf(fid,'set fmri(relative_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Balloon help\n');
fprintf(fid,'set fmri(help_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Run Featwatcher\n');
fprintf(fid,'set fmri(featwatcher_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Cleanup first-level standard-space images\n');
fprintf(fid,'set fmri(sscleanup_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Output directory\n');
fprintf(fid,'set fmri(outputdir) "%s/1st_level/%s/%s_run_%i"',QQ.model_dir,subID,subID,runNo);

fprintf(fid,'\n');
fprintf(fid,'# TR(s)\n');
fprintf(fid,'set fmri(tr) 2.0\n');

fprintf(fid,'\n');
fprintf(fid,'# Total volumes\n');
fprintf(fid,'set fmri(npts) 210\n');

fprintf(fid,'\n');
fprintf(fid,'# Delete volumes\n');
fprintf(fid,'set fmri(ndelete) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Perfusion tag/control order\n');
fprintf(fid,'set fmri(tagfirst) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Number of first-level analyses\n');
fprintf(fid,'set fmri(multiple) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Higher-level input type\n');
fprintf(fid,'# 1 : Inputs are lower-level FEAT directories\n');
fprintf(fid,'# 2 : Inputs are cope images from FEAT directories\n');
fprintf(fid,'set fmri(inputtype) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Carry out pre-stats processing?\n');
fprintf(fid,'set fmri(filtering_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Brain/background threshold, \n');
fprintf(fid,'set fmri(brain_thresh) 10\n');

fprintf(fid,'\n');
fprintf(fid,'# Critical z for design efficiency calculation\n');
fprintf(fid,'set fmri(critical_z) 5.3\n');

fprintf(fid,'# Noise level\n');
fprintf(fid,'set fmri(noise) 0.66\n');

fprintf(fid,'# Noise AR(1)\n');
fprintf(fid,'set fmri(noisear) 0.34\n');

fprintf(fid,'\n');
fprintf(fid,'# Post-stats-only directory copying\n');
fprintf(fid,'# 0 : Overwrite original post-stats results\n');
fprintf(fid,'# 1 : Copy original FEAT directory for new Contrasts, Thresholding, Rendering\n');
fprintf(fid,'set fmri(newdir_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Motion correction\n');
fprintf(fid,'# 0 : None\n');
fprintf(fid,'# 1 : MCFLIRT\n');
fprintf(fid,'set fmri(mc) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Spin-history (currently obsolete)\n');
fprintf(fid,'set fmri(sh_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# B0 fieldmap unwarping?\n');
fprintf(fid,'set fmri(regunwarp_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# EPI dwell time (ms)\n');
fprintf(fid,'set fmri(dwell) 0.5\n');

fprintf(fid,'\n');
fprintf(fid,'# EPI TE (ms)\n');
fprintf(fid,'set fmri(te) 30\n');

fprintf(fid,'\n');
fprintf(fid,'# percent Signal loss threshold\n');
fprintf(fid,'set fmri(signallossthresh) 10\n');

fprintf(fid,'\n');
fprintf(fid,'# Unwarp direction\n');
fprintf(fid,'set fmri(unwarp_dir) y-\n');

fprintf(fid,'\n');
fprintf(fid,'# Slice timing correction\n');
fprintf(fid,'# 0 : None\n');
fprintf(fid,'# 1 : Regular up (0, 1, 2, 3, ...)\n');
fprintf(fid,'# 2 : Regular down\n');
fprintf(fid,'# 3 : Use slice order file\n');
fprintf(fid,'# 4 : Use slice timings file\n');
fprintf(fid,'# 5 : Interleaved (0, 2, 4 ... 1, 3, 5 ... )\n');
fprintf(fid,'set fmri(st) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Slice timings file\n');
fprintf(fid,'set fmri(st_file) ""\n');

fprintf(fid,'\n');
fprintf(fid,'# BET brain extraction\n');
fprintf(fid,'set fmri(bet_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Spatial smoothing FWHM (mm)\n');
fprintf(fid,'set fmri(smooth) 5.0\n');

fprintf(fid,'\n');
fprintf(fid,'# Intensity normalization\n');
fprintf(fid,'set fmri(norm_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Perfusion subtraction\n');
fprintf(fid,'set fmri(perfsub_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Highpass temporal filtering\n');
fprintf(fid,'set fmri(temphp_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Lowpass temporal filtering\n');
fprintf(fid,'set fmri(templp_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# MELODIC ICA data exploration\n');
fprintf(fid,'set fmri(melodic_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Carry out main stats?\n');
fprintf(fid,'set fmri(stats_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Carry out prewhitening?\n');
fprintf(fid,'set fmri(prewhiten_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Add motion parameters to model\n');
fprintf(fid,'# 0 : No\n');
fprintf(fid,'# 1 : Yes\n');
fprintf(fid,'set fmri(motionevs) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Robust outlier detection in FLAME?\n');
fprintf(fid,'set fmri(robust_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Higher-level modelling\n');
fprintf(fid,'# 3 : Fixed effects\n');
fprintf(fid,'# 0 : Mixed Effects: Simple OLS\n');
fprintf(fid,'# 2 : Mixed Effects: FLAME 1\n');
fprintf(fid,'# 1 : Mixed Effects: FLAME 1+2\n');
fprintf(fid,'set fmri(mixed_yn) 2\n');

fprintf(fid,'\n');
fprintf(fid,'# Number of EVs\n');
fprintf(fid,'set fmri(evs_orig) %i\n',QQ.n_EVs);
n_realEVs=QQ.n_EVs*2; %in 1st-level, each EV's temporal derivative is added.
fprintf(fid,'set fmri(evs_real) %i\n',n_realEVs);
fprintf(fid,'set fmri(evs_vox) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Number of contrasts\n');
fprintf(fid,'set fmri(ncon_orig) %i\n',QQ.n_contrasts);
n_realContrasts=QQ.n_contrasts; % If there is no F-test
fprintf(fid,'set fmri(ncon_real) %i\n',n_realContrasts);

fprintf(fid,'\n');
fprintf(fid,'# Number of F-tests\n');
fprintf(fid,'set fmri(nftests_orig) 0\n');
fprintf(fid,'set fmri(nftests_real) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Add constant column to design matrix? (obsolete)\n');
fprintf(fid,'set fmri(constcol) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Carry out post-stats steps?\n');
fprintf(fid,'set fmri(poststats_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Pre-threshold masking?\n');
fprintf(fid,'set fmri(threshmask) ""\n');

fprintf(fid,'\n');
fprintf(fid,'# Thresholding\n');
fprintf(fid,'# 0 : None\n');
fprintf(fid,'# 1 : Uncorrected\n');
fprintf(fid,'# 2 : Voxel\n');
fprintf(fid,'# 3 : Cluster\n');
fprintf(fid,'set fmri(thresh) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# P threshold\n');
fprintf(fid,'set fmri(prob_thresh) 0.05\n');

fprintf(fid,'\n');
fprintf(fid,'# Z threshold\n');
fprintf(fid,'set fmri(z_thresh) 2.3\n');

fprintf(fid,'\n');
fprintf(fid,'# Z min/max for colour rendering\n');
fprintf(fid,'# 0 : Use actual Z min/max\n');
fprintf(fid,'# 1 : Use preset Z min/max\n');
fprintf(fid,'set fmri(zdisplay) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Z min in colour rendering\n');
fprintf(fid,'set fmri(zmin) 2\n');

fprintf(fid,'\n');
fprintf(fid,'# Z max in colour rendering\n');
fprintf(fid,'set fmri(zmax) 8\n');

fprintf(fid,'\n');
fprintf(fid,'# Colour rendering type\n');
fprintf(fid,'# 0 : Solid blobs\n');
fprintf(fid,'# 1 : Transparent blobs\n');
fprintf(fid,'set fmri(rendertype) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Background image for higher-level stats overlays\n');
fprintf(fid,'# 1 : Mean highres\n');
fprintf(fid,'# 2 : First highres\n');
fprintf(fid,'# 3 : Mean functional\n');
fprintf(fid,'# 4 : First functional\n');
fprintf(fid,'# 5 : Standard space template\n');
fprintf(fid,'set fmri(bgimage) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Create time series plots\n');
fprintf(fid,'set fmri(tsplot_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Registration?\n');
fprintf(fid,'set fmri(reg_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Registration to initial structural\n');
fprintf(fid,'set fmri(reginitial_highres_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Search space for registration to initial structural\n');
fprintf(fid,'# 0   : No search\n');
fprintf(fid,'# 90  : Normal search\n');
fprintf(fid,'# 180 : Full search\n');
fprintf(fid,'set fmri(reginitial_highres_search) 90\n');

fprintf(fid,'\n');
fprintf(fid,'# Degrees of Freedom for registration to initial structural\n');
fprintf(fid,'set fmri(reginitial_highres_dof) 3\n');

fprintf(fid,'\n');
fprintf(fid,'# Registration to main structural\n');
fprintf(fid,'set fmri(reghighres_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Search space for registration to main structural\n');
fprintf(fid,'# 0   : No search\n');
fprintf(fid,'# 90  : Normal search\n');
fprintf(fid,'# 180 : Full search\n');
fprintf(fid,'set fmri(reghighres_search) 90\n');

fprintf(fid,'\n');
fprintf(fid,'# Degrees of Freedom for registration to main structural\n');
fprintf(fid,'set fmri(reghighres_dof) 7\n');

fprintf(fid,'\n');
fprintf(fid,'# Registration to standard image?\n');
fprintf(fid,'set fmri(regstandard_yn) 1\n');

fprintf(fid,'\n');
fprintf(fid,'# Standard image\n');
fprintf(fid,'set fmri(regstandard) "/usr/local/fsl/data/standard/MNI152_T1_2mm_brain"\n');

fprintf(fid,'\n');
fprintf(fid,'# Search space for registration to standard space\n');
fprintf(fid,'# 0   : No search\n');
fprintf(fid,'# 90  : Normal search\n');
fprintf(fid,'# 180 : Full search\n');
fprintf(fid,'set fmri(regstandard_search) 90\n');

fprintf(fid,'\n');
fprintf(fid,'# Degrees of Freedom for registration to standard space\n');
fprintf(fid,'set fmri(regstandard_dof) 12\n');

fprintf(fid,'\n');
fprintf(fid,'# Do nonlinear registration from structural to standard space?\n');
fprintf(fid,'set fmri(regstandard_nonlinear_yn) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# Control nonlinear warp field resolution\n');
fprintf(fid,'set fmri(regstandard_nonlinear_warpres) 10 \n');

fprintf(fid,'\n');
fprintf(fid,'# High pass filter cutoff\n');
fprintf(fid,'set fmri(paradigm_hp) 100\n');

fprintf(fid,'\n');
fprintf(fid,'# Number of lower-level copes feeding into higher-level analysis\n');
fprintf(fid,'set fmri(ncopeinputs) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# 4D AVW data or FEAT directory (1)\n');
fprintf(fid,'set feat_files(1) "%s/%s/%s_F%i.nii_swapped"\n',QQ.data_dir,subID,subID,runNo);
%data_dir=/home/wu_lab/Range_adaptation/NCCU/NCCU_nii_fin

fprintf(fid,'\n');
fprintf(fid,'# Add confound EVs text file\n');
fprintf(fid,'set fmri(confoundevs) 0\n');

fprintf(fid,'\n');
fprintf(fid,'# B0 unwarp input image for analysis 1\n');
fprintf(fid,'set unwarp_files(1) "%s/%s/%s_FMAP_pha.nii_swapped_rads_regularized"\n',QQ.data_dir,subID,subID);

fprintf(fid,'\n');
fprintf(fid,'# B0 unwarp mag input image for analysis 1\n');
fprintf(fid,'set unwarp_files_mag(1) "%s/%s/%s_FMAP_mag.nii_swapped_brain"\n',QQ.data_dir,subID,subID);

fprintf(fid,'\n');
fprintf(fid,'# Subjects structural image for analysis 1\n');
fprintf(fid,'set highres_files(1) "%s/%s/%s_T1.nii_swapped_brain"\n',QQ.data_dir,subID,subID);

for i=1:QQ.n_EVs
    fprintf(fid,'\n');
    fprintf(fid,'# EV %i title\n',i);
    fprintf(fid,'set fmri(evtitle%i) "%s"\n',i,QQ.ev_name{i});
    
    fprintf(fid,'# Basic waveform shape (EV %i)\n',i);
    fprintf(fid,'# 0 : Square\n');
    fprintf(fid,'# 1 : Sinusoid\n');
    fprintf(fid,'# 2 : Custom (1 entry per volume)\n');
    fprintf(fid,'# 3 : Custom (3 column format)\n');
    fprintf(fid,'# 4 : Interaction\n');
    fprintf(fid,'# 10 : Empty (all zeros)\n');
    if QQ.ev_interact(i,1)==1
        fprintf(fid,'set fmri(shape%i) %i\n',i,4);
    elseif QQ.ev_interact(i,1)==0
        fprintf(fid,'set fmri(shape%i) %i\n',i,3);
    end
    
    fprintf(fid,'\n');
    fprintf(fid,'# Convolution (EV %i)\n',i);
    fprintf(fid,'# 0 : None\n');
    fprintf(fid,'# 1 : Gaussian\n');
    fprintf(fid,'# 2 : Gamma\n');
    fprintf(fid,'# 3 : Double-Gamma HRF\n');
    fprintf(fid,'# 4 : Gamma basis functions\n');
    fprintf(fid,'# 5 : Sine basis functions\n');
    fprintf(fid,'# 6 : FIR basis functions\n');
    if QQ.ev_interact(i,1)==0
        fprintf(fid,'set fmri(convolve%i) 2\n',i);
    elseif QQ.ev_interact(i,1)==1
        fprintf(fid,'set fmri(convolve%i) 0\n',i);
    end
    
    fprintf(fid,'\n');
    fprintf(fid,'# Convolve phase (EV %i)\n',i);
    fprintf(fid,'set fmri(convolve_phase%i) 0\n',i);
    
    fprintf(fid,'\n');
    fprintf(fid,'# Apply temporal filtering (EV %i)\n',i);
    fprintf(fid,'set fmri(tempfilt_yn%i) 1\n',i);
    
    fprintf(fid,'\n');
    fprintf(fid,'# Add temporal derivative (EV %i)\n',i);
    fprintf(fid,'set fmri(deriv_yn%i) 1\n',i);
    
    if QQ.ev_interact(i,1)==1
        interact_EVs=QQ.ev_interact(i,2:3); % which EVs want to interact
        for j=1:QQ.n_EVs
            if i~=j
                fprintf(fid,'\n');
                fprintf(fid,'# Interactions (EV %i with EV %i)\n',i,j);
                
                TF=isempty(find(interact_EVs==j,1));
                if TF==0
                    fprintf(fid,'set fmri(interactions%i.%i) 1\n',i,j);
                else
                    fprintf(fid,'set fmri(interactions%i.%i) 0\n',i,j);
                end
                fprintf(fid,'\n');
                fprintf(fid,'# Demean before using in interactions (EV %i with EV %i)\n',i,j);
                fprintf(fid,'set fmri(interactionsd%i.%i) 0\n',i,j);
            end
        end
    end
    
    fprintf(fid,'\n');
    fprintf(fid,'# Custom EV file (EV %i)\n',i);
    fprintf(fid,'set fmri(custom%i) "%s/%s/run_%i/%s.txt"\n',i,QQ.regress_dir,subID,runNo,QQ.ev_name{i});
    %QQ.regress_dir=/home/wu_lab/Range_adaptation/NCCU/new_model/createRegressors/regressors
    
    fprintf(fid,'\n');
    fprintf(fid,'# Gamma sigma (EV %i)\n',i);
    fprintf(fid,'set fmri(gammasigma%i) 3\n',i);
    
    fprintf(fid,'\n');
    fprintf(fid,'# Gamma delay (EV %i)\n',i);
    fprintf(fid,'set fmri(gammadelay%i) 6\n',i);
    
    %Turn off orthogonalization (for now).
    for j=0:QQ.n_EVs;
        fprintf(fid,'\n');
        fprintf(fid,'# Orthogonalise EV %i wrt EV %i\n',i,j);
        fprintf(fid,'set fmri(ortho%i.%i) 0\n',i,j);
    end
    
end

fprintf(fid,'\n');
fprintf(fid,'# Contrast & F-tests mode\n');
fprintf(fid,'# real : control real EVs\n');
fprintf(fid,'# orig : control original EVs\n');
fprintf(fid,'set fmri(con_mode_old) orig\n');
fprintf(fid,'set fmri(con_mode) orig\n');

for i=1:QQ.n_contrasts
    fprintf(fid,'\n');
    fprintf(fid,'# Display images for contrast_real %i\n',i);
    fprintf(fid,'set fmri(conpic_real.%i) 1\n',i);
    
    fprintf(fid,'\n');
    fprintf(fid,'# Title for contrast_real %i\n',i);
    fprintf(fid,'set fmri(conname_real.%i) "%s"\n',i,QQ.contrast_name{i});
    
    for j=1:QQ.n_EVs
        fprintf(fid,'\n');
        fprintf(fid,'# Real contrast_real vector %i element %i\n',i,2*j-1);
        fprintf(fid,'set fmri(con_real%i.%i) %.2f\n',i,2*j-1,QQ.contrast_vect(i,j));
        
        fprintf(fid,'\n');
        fprintf(fid,'# Real contrast_real vector %i element %i\n',i,2*j);
        fprintf(fid,'set fmri(con_real%i.%i) 0\n',i,2*j);
    end
end

for i=1:QQ.n_contrasts
    fprintf(fid,'\n');
    fprintf(fid,'# Display images for contrast_orig %i\n',i);
    fprintf(fid,'set fmri(conpic_orig.%i) 1\n',i);
    
    fprintf(fid,'\n');
    fprintf(fid,'# Title for contrast_orig %i\n',i);
    fprintf(fid,'set fmri(conname_orig.%i) "%s"\n',i,QQ.contrast_name{i});
    
    for j=1:QQ.n_EVs
        fprintf(fid,'\n');
        fprintf(fid,'# Real contrast_orig vector %i element %i\n',i,j);
        fprintf(fid,'set fmri(con_orig%i.%i) %.2f\n',i,j,QQ.contrast_vect(i,j));
    end
end

fprintf(fid,'\n');
fprintf(fid,'# Contrast masking - use >0 instead of thresholding?\n');
fprintf(fid,'set fmri(conmask_zerothresh_yn) 0\n');

for i=1:QQ.n_contrasts
    for j=1:QQ.n_contrasts
        if i~=j
            fprintf(fid,'\n');
            fprintf(fid,'# Mask real contrast/F-test %i with real contrast/F-test %i?\n',i,j);
            fprintf(fid,'set fmri(conmask%i_%i) 0\n',i,j);
        end
    end
end
fprintf(fid,'\n');
fprintf(fid,'# Do contrast masking at all?\n');
fprintf(fid,'set fmri(conmask1_1) 0\n');

%##########################################################
fprintf(fid,'\n');
fprintf(fid,'# Now options that dont appear in the GUI\n');

fprintf(fid,'\n');
fprintf(fid,'# Alternative example_func image (not derived from input 4D dataset)\n');
fprintf(fid,'set fmri(alternative_example_func) ""\n');

fprintf(fid,'\n');
fprintf(fid,'# Alternative (to BETting) mask image\n');
fprintf(fid,'set fmri(alternative_mask) ""\n');

fprintf(fid,'\n');
fprintf(fid,'# Initial structural space registration initialisation transform\n');
fprintf(fid,'set fmri(init_initial_highres) ""\n');

fprintf(fid,'\n');
fprintf(fid,'# Structural space registration initialisation transform\n');
fprintf(fid,'set fmri(init_highres) ""\n');

fprintf(fid,'\n');
fprintf(fid,'# Standard space registration initialisation transform\n');
fprintf(fid,'set fmri(init_standard) ""\n');

fprintf(fid,'\n');
fprintf(fid,'# For full FEAT analysis: overwrite existing .feat output dir?\n');
fprintf(fid,'set fmri(overwrite_yn) 0\n');

fclose(fid);