# RUN MSE IN PARALLEL
# UPDATED: 5/2020
###################



MCMCdir = "/ches/scr10/cdpeterson/MSE_RUN/RUN_MCMC/sandbar_330_OM_Base_MCMC" # OM version that undergoes MCMC directory

sourcedir = "/ches/scr10/cdpeterson/MSE_RUN"


#### Define directories ####
Basedir = "/ches/scr10/cdpeterson/MSE_RUN/OM_Base/"
for(i in 1:24){
  assign(paste0("OMdirHCR",i), paste0(Basedir,"HCR",i,"/OM"))
  assign(paste0("EMdirHCR",i), paste0(Basedir,"HCR",i,"/EM"))
  assign(paste0("SR_HCR",i), paste0(Basedir,"HCR",i,"/StoreResults"))
}



#### Define HCR trials ####
# HCR iterations: 
# list.hcr=c(HCR1, HCR2, HCR3, HCR4, HCR5, HCR6, HCR7, HCR8, HCR9, HCR10, HCR11, HCR12, 
#            HCR13, HCR14, HCR15, HCR16, HCR17, HCR18, HCR19, HCR20, HCR21, HCR22, HCR23, HCR24)
list.hcr=list()
list.hcr[['HCR1']] = list( Ftarg="FMSY", Fconst=1, a=0, b=1, OMdir=OMdirHCR1, EMdir=EMdirHCR1, StoreResults=SR_HCR1)
list.hcr[['HCR2']] = list( Ftarg="FMSY", Fconst=1, a=0, b=0.8, OMdir=OMdirHCR2, EMdir=EMdirHCR2, StoreResults=SR_HCR2)
# list.hcr[['HCR3']] = list( Ftarg="FMSY", Fconst=1, a=0.3, b=1, OMdir=OMdirHCR3, EMdir=EMdirHCR3, StoreResults=SR_HCR3)
# list.hcr[['HCR4']] = list( Ftarg="FMSY", Fconst=1, a=0.3, b=0.8, OMdir=OMdirHCR4, EMdir=EMdirHCR4, StoreResults=SR_HCR4)

list.hcr[['HCR5']] = list( Ftarg="F=M", Fconst=1, a=0, b=1, OMdir=OMdirHCR5, EMdir=EMdirHCR5, StoreResults=SR_HCR5)
list.hcr[['HCR6']] = list( Ftarg="F=M", Fconst=1, a=0, b=0.8, OMdir=OMdirHCR6, EMdir=EMdirHCR6, StoreResults=SR_HCR6)
# list.hcr[['HCR7']] = list( Ftarg="F=M", Fconst=1, a=0.3, b=1, OMdir=OMdirHCR7, EMdir=EMdirHCR7, StoreResults=SR_HCR7)
# list.hcr[['HCR8']] = list( Ftarg="F=M", Fconst=1, a=0.3, b=0.8, OMdir=OMdirHCR8, EMdir=EMdirHCR8, StoreResults=SR_HCR8)

list.hcr[['HCR9']]  = list( Ftarg="F=M", Fconst=0.8, a=0, b=1, OMdir=OMdirHCR9, EMdir=EMdirHCR9, StoreResults=SR_HCR9)
list.hcr[['HCR10']] = list( Ftarg="F=M", Fconst=0.8, a=0, b=0.8, OMdir=OMdirHCR10, EMdir=EMdirHCR10, StoreResults=SR_HCR10)
# list.hcr[['HCR11']] = list( Ftarg="F=M", Fconst=0.8, a=0.3, b=1, OMdir=OMdirHCR11, EMdir=EMdirHCR11, StoreResults=SR_HCR11)
# list.hcr[['HCR12']] = list( Ftarg="F=M", Fconst=0.8, a=0.3, b=0.8, OMdir=OMdirHCR12, EMdir=EMdirHCR12, StoreResults=SR_HCR12)
# 
# list.hcr[['HCR13']] = list( Ftarg="F=M", Fconst=0.6, a=0, b=1, OMdir=OMdirHCR13, EMdir=EMdirHCR13, StoreResults=SR_HCR13)
# list.hcr[['HCR14']] = list( Ftarg="F=M", Fconst=0.6, a=0, b=0.8, OMdir=OMdirHCR14, EMdir=EMdirHCR14, StoreResults=SR_HCR14)
# list.hcr[['HCR15']] = list( Ftarg="F=M", Fconst=0.6, a=0.3, b=1, OMdir=OMdirHCR15, EMdir=EMdirHCR15, StoreResults=SR_HCR15)
# list.hcr[['HCR16']] = list( Ftarg="F=M", Fconst=0.6, a=0.3, b=0.8, OMdir=OMdirHCR16, EMdir=EMdirHCR16, StoreResults=SR_HCR16)
# 
# list.hcr[['HCR17']] = list( Ftarg="F=M", Fconst=0.4, a=0, b=1, OMdir=OMdirHCR17, EMdir=EMdirHCR17, StoreResults=SR_HCR17)
# list.hcr[['HCR18']] = list( Ftarg="F=M", Fconst=0.4, a=0, b=0.8, OMdir=OMdirHCR18, EMdir=EMdirHCR18, StoreResults=SR_HCR18)
# list.hcr[['HCR19']] = list( Ftarg="F=M", Fconst=0.4, a=0.3, b=1, OMdir=OMdirHCR19, EMdir=EMdirHCR19, StoreResults=SR_HCR19)
# list.hcr[['HCR20']] = list( Ftarg="F=M", Fconst=0.4, a=0.3, b=0.8, OMdir=OMdirHCR20, EMdir=EMdirHCR20, StoreResults=SR_HCR20)
# 
# list.hcr[['HCR21']] = list( Ftarg="F=M", Fconst=0.2, a=0, b=1, OMdir=OMdirHCR21, EMdir=EMdirHCR21, StoreResults=SR_HCR21)
# list.hcr[['HCR22']] = list( Ftarg="F=M", Fconst=0.2, a=0, b=0.8, OMdir=OMdirHCR22, EMdir=EMdirHCR22, StoreResults=SR_HCR22)
# list.hcr[['HCR23']] = list( Ftarg="F=M", Fconst=0.2, a=0.3, b=1, OMdir=OMdirHCR23, EMdir=EMdirHCR23, StoreResults=SR_HCR23)
# list.hcr[['HCR24']] = list( Ftarg="F=M", Fconst=0.2, a=0.3, b=0.8, OMdir=OMdirHCR24, EMdir=EMdirHCR24, StoreResults=SR_HCR24)




######

# reminder of inputs to MSE_func
# MSE_func(MCMCdir, OMdir, EMdir, StoreResults, FRQ=5, 
#          Btarg="BMSY", Bconst=1, Ftarg="FMSY", Fconst=1, a=0.1, b=1, 
#          BuildPar=T, OMdirs=list(OMdir), 
#          simYrs=100, niters=NA, ...)
library(foreach)
library(doSNOW)
library(parallel)

# detectCores() # determine the number of clusters you want to use. 
c1 = makeCluster(6)
registerDoSNOW(c1)

MSE_func = function(MCMCdir, OMdir, EMdir, StoreResults, FRQ=5, 
                    Btarg="BMSY", Bconst=1, Ftarg="FMSY", Fconst=1, a=0.1, b=1, 
                    BuildPar=T, OMdirs=list(OMdir), 
                    simYrs=100, niters=NA, seed=430, sourcedir=NA, SR="LFSR", implement="default", 
                    MaxCatch=NA, ...) {
  # niters=seq(from=47, to=545, by=2)
  
  # WARNING REMINDER # 
  warning("Before running this function, be sure that all starting SS files are ready: \
  
          - MCMC should have ran with all non-process error varying parameters fixed \
          
          - OM files should be ready for bootstrap: \
            <.dat> contains dummy data, \ 
            <.ctl> has priors on all observation error parameters, and \
            <starter.ss> use ss.par=1 and number of datfiles to produce = 3\
            
          - EM files should be ready for assessment: only available data, and \
            fixed and time-invariant parameters as appropriate")
  
  
  #-------------------------------------------------------------------------------------------------------------
  # Read in libraries and source files
  #-------------------------------------------------------------------------------------------------------------
  
  # Use the source() file to read in functions from other r.scripts
  
  ### BuildParFile ###
  if(SR=="LFSR"){
    BuildParFile = function(MCMCdir, mcmc, i, OMdirs=list()){
      
      # Can optionally put in more than one OM directory in the form of a list to save the ss.par file in each OMdir (for multiple HCRs)
      
      
      ## read-in par file #
      parf = readLines(file.path(MCMCdir,"ss.par")) # take par file from mcmc and save as newpar; edit newpar and save in OM 
      newpar = parf
      
      
      #### Biological/ Life History Parameters ####
      # NOTE: Check these on and off as appropriate...
      newpar[which(newpar=="# MGparm[1]:")+1] = mcmc[i,"L_at_Amin_Fem_GP_1"]
      newpar[which(newpar=="# MGparm[2]:")+1] = mcmc[i,"L_at_Amax_Fem_GP_1"]
      newpar[which(newpar=="# MGparm[3]:")+1] = mcmc[i,"VonBert_K_Fem_GP_1"]
      # newpar[which(newpar=="# MGparm[6]:")+1] = mcmc[i,"Wtlen_1_Fem_GP_1"]
      newpar[which(newpar=="# MGparm[7]:")+1] = mcmc[i,"Wtlen_2_Fem_GP_1"]
      newpar[which(newpar=="# SR_parm[1]:")+1] = mcmc[i,"SR_LN(R0)"]
      #LFSR
      newpar[which(newpar=="# SR_parm[2]:")+1] = mcmc[i,"SR_surv_zfrac"]
      newpar[which(newpar=="# SR_parm[3]:")+1] = mcmc[i,"SR_surv_Beta"]
      # newpar[which(newpar=="# SR_parm[4]:")+1] = mcmc[i,"SR_autocorr"]
      #BH
      # newpar[which(newpar=="# SR_parm[2]:")+1] = mcmc[i,"SR_BH_steep"]
      
      
      #### Recruitment deviations ####
      
      EarlyRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% "Early_RecrDev_"]))
      MainRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% 'Main_RecrDev_']))
      LateRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% 'Late_RecrDev_']))
      ForecastRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% 'ForeRecr_']))
      
      newpar[which(newpar=="# recdev_early:")+1] = paste(EarlyRecDevs1, collapse=" ")
      newpar[which(newpar=="# recdev2:")+1] = paste(MainRecDevs1, collapse=" ")
      newpar[which(newpar=="# Fcast_recruitments:")+1] = paste(c(LateRecDevs1, ForecastRecDevs1), collapse=" ")
      
      
      
      
      #### Process error Parameters ####
      # Based on parameters with process-error: q and selectivity
      
      # q #
      newpar[which(newpar=="# Q_parm[1]:")+1] = mcmc[i, "LnQ_base_S1_LPS(5)"] 
      newpar[which(newpar=="# Q_parm[2]:")+1] = mcmc[i, "LnQ_base_S5_NMFS_LLSE(6)"] 
      
      
      # SELECTIVITY #
      #   subset mcmc parameters to just selectivity; based on size-structured selectivity
      
      # Based on 68 selectivity parameters
      #    Note: this if-else approach allows us to skip over values that won't change
      newpar[which(newpar=="# selparm[1]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[1]:")+1], 
               mcmc[i,'Size_DblN_peak_F1_COM_GOM(1)'])
      
      newpar[which(newpar=="# selparm[2]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[2]:")+1], 
               mcmc[i,'Size_DblN_top_logit_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[3]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[3]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[4]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[4]:")+1], 
               mcmc[i,'Size_DblN_descend_se_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[5]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[5]:")+1], 
               mcmc[i,'Size_DblN_start_logit_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[6]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[6]:")+1], 
               mcmc[i,'Size_DblN_end_logit_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[7]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Peak_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[7]:")+1], 
               mcmc[i,'SzSel_Male_Peak_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[8]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Ascend_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[8]:")+1], 
               mcmc[i,'SzSel_Male_Ascend_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[9]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Descend_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[9]:")+1], 
               mcmc[i,'SzSel_Male_Descend_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[10]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Final_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[10]:")+1], 
               mcmc[i,'SzSel_Male_Final_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[11]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Scale_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[11]:")+1], 
               mcmc[i,'SzSel_Male_Scale_F1_COM_GOM(1)']) 
      
      #
      newpar[which(newpar=="# selparm[12]:") +1] = 
        ifelse(is.null(mcmc$'Size_inflection_F2_COM_SA(2)')==T, newpar[which(newpar=="# selparm[12]:")+1], 
               mcmc[i,'Size_inflection_F2_COM_SA(2)']) 
      
      newpar[which(newpar=="# selparm[13]:") +1] = 
        ifelse(is.null(mcmc$'Size_95%width_F2_COM_SA(2)')==T, newpar[which(newpar=="# selparm[13]:")+1], 
               mcmc[i,'Size_95%width_F2_COM_SA(2)']) 
      
      #
      newpar[which(newpar=="# selparm[14]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[14]:")+1], 
               mcmc[i,'Size_DblN_peak_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[15]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[15]:")+1], 
               mcmc[i,'Size_DblN_top_logit_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[16]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[16]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[17]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[17]:")+1], 
               mcmc[i,'Size_DblN_descend_se_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[18]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[18]:")+1], 
               mcmc[i,'Size_DblN_start_logit_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[19]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[19]:")+1], 
               mcmc[i,'Size_DblN_end_logit_F3_RecMEX(3)']) 
      
      #
      newpar[which(newpar=="# selparm[20]:") +1] = 
        ifelse(is.null(mcmc$'Size_inflection_F4_MEN_DSC(4)')==T, newpar[which(newpar=="# selparm[20]:")+1], 
               mcmc[i,'Size_inflection_F4_MEN_DSC(4)']) 
      
      ## NOTE!!! The priorSD was too large so producing wild values. Modify mcmc iterations by reducing SD by half
      mcmc$`Size_95%width_F4_MEN_DSC(4)` = (((mcmc$`Size_95%width_F4_MEN_DSC(4)`)-1)/2.5)+1
      newpar[which(newpar=="# selparm[21]:") +1] = 
        ifelse(is.null(mcmc$'Size_95%width_F4_MEN_DSC(4)')==T, newpar[which(newpar=="# selparm[21]:")+1], 
               mcmc[i,'Size_95%width_F4_MEN_DSC(4)']) 
      
      #
      newpar[which(newpar=="# selparm[22]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[22]:")+1], 
               mcmc[i,'Size_DblN_peak_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[23]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[23]:")+1], 
               mcmc[i,'Size_DblN_top_logit_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[24]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[24]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[25]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[25]:")+1], 
               mcmc[i,'Size_DblN_descend_se_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[26]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[26]:")+1], 
               mcmc[i,'Size_DblN_start_logit_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[27]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[27]:")+1], 
               mcmc[i,'Size_DblN_end_logit_S1_LPS(5)'])
      
      #
      newpar[which(newpar=="# selparm[28]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[28]:")+1], 
               mcmc[i,'Size_DblN_peak_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[29]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[29]:")+1], 
               mcmc[i,'Size_DblN_top_logit_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[30]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[30]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_S5_NMFS_LLSE(6)'])
      
      newpar[which(newpar=="# selparm[31]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[31]:")+1], 
               mcmc[i,'Size_DblN_descend_se_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[32]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[32]:")+1], 
               mcmc[i,'Size_DblN_start_logit_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[33]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[33]:")+1], 
               mcmc[i,'Size_DblN_end_logit_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[34]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Peak_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[34]:")+1], 
               mcmc[i,'SzSel_Male_Peak_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[35]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Ascend_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[35]:")+1], 
               mcmc[i,'SzSel_Male_Ascend_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[36]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Descend_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[36]:")+1], 
               mcmc[i,'SzSel_Male_Descend_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[37]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Final_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[37]:")+1], 
               mcmc[i,'SzSel_Male_Final_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[38]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Scale_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[38]:")+1], 
               mcmc[i,'SzSel_Male_Scale_S5_NMFS_LLSE(6)']) 
      
      
      
      
      
      #### TIMEVARYING PARAMETERS ####
      
      #### NOTE THIS IS SPECIFICALLY FOR WHEN M IS FIXED AND TIME_VARYING Q AND SELECTIVITY PARAMS. 
      ###     THis order of parameters may change when more time-varying parameters are added. 
      # time varying parameters
      # parm_dev  parameter
      # 1	  LnQ_base_S1(5)_dev_se
      # 2	  LnQ_base_S2(6)_dev_se
      # 3	  #SizeSel_P1_F1_COM_GOM(1)_dev_se
      # 4	  #SizeSel_P3_F1_COM_GOM(1)_dev_se
      # 5	  #SizeSel_P4_F1_COM_GOM(1)_dev_se
      # 6	  #SizeSel_P1_F2_COM_SA(2)_dev_se
      # 7	  #SizeSel_P2_F2_COM_SA(2)_dev_se
      # 8	  #SizeSel_P1_F3_RecMEX(3)_dev_se
      # 9	  #SizeSel_P4_F3_RecMEX(3)_dev_se
      # 10	#SizeSel_P1_F4_MEN_DSC(4)_dev_se
      # 11	#SizeSel_P2_F4_MEN_DSC(4)_dev_se
      # 12	#SizeSel_P1_S1_LPS(5)_dev_se
      # 13	#SizeSel_P3_S1_LPS(5)_dev_se
      # 14	#SizeSel_P4_S1_LPS(5)_dev_se
      # 15	#SizeSel_P1_S5_NMFS_LLSE(9)_dev_se
      # 16	#SizeSel_P3_S5_NMFS_LLSE(9)_dev_se
      # 17	#SizeSel_P4_S5_NMFS_LLSE(9)_dev_se
      
      
      #lnq1
      mcmcLnQ1A = mcmc[i, colnames(mcmc) %like% "LnQ_base_S1" ] 
      mcmcLnQ1 = mcmcLnQ1A[colnames(mcmcLnQ1A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[1]:")+1] =  paste(as.vector(unlist(mcmcLnQ1)), collapse=" ")
      #lnq2
      mcmcLnQ2A = mcmc[i, colnames(mcmc) %like% "LnQ_base_S5" ] 
      mcmcLnQ2 = mcmcLnQ2A[colnames(mcmcLnQ2A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[2]:")+1] =  paste(as.vector(unlist(mcmcLnQ2)), collapse=" ")
      
      #Selectivity
      #Size_DblN_peak_F1_COM_GOM(1)
      mcmcSel1A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_F1_COM_GOM" ]
      mcmcSel1 = mcmcSel1A[colnames(mcmcSel1A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[3]:")+1] =  paste(as.vector(unlist(mcmcSel1)), collapse=" ")
      
      #Size_DblN_ascend_se_F1_COM_GOM(1)
      mcmcSel2A = mcmc[i, colnames(mcmc) %like% "Size_DblN_ascend_se_F1_COM_GOM" ]
      mcmcSel2 = mcmcSel2A[colnames(mcmcSel2A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[4]:")+1] =  paste(as.vector(unlist(mcmcSel2)), collapse=" ")
      
      #Size_DblN_descend_se_F1_COM_GOM(1)
      mcmcSel3A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_F1_COM_GOM" ]
      mcmcSel3 = mcmcSel3A[colnames(mcmcSel3A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[5]:")+1] =  paste(as.vector(unlist(mcmcSel3)), collapse=" ")
      
      #Size_inflection_F2_COM_SA(2)
      mcmcSel4A = mcmc[i, colnames(mcmc) %like% "Size_inflection_F2_COM_SA" ]
      mcmcSel4 = mcmcSel4A[colnames(mcmcSel4A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[6]:")+1] =  paste(as.vector(unlist(mcmcSel4)), collapse=" ")
      
      #Size_95%width_F2_COM_SA(2)
      mcmcSel5A = mcmc[i, colnames(mcmc) %like% "Size_95%width_F2_COM_SA" ]
      mcmcSel5 = mcmcSel5A[colnames(mcmcSel5A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[7]:")+1] =  paste(as.vector(unlist(mcmcSel5)), collapse=" ")
      
      #Size_DblN_peak_F3_RecMEX(3)
      mcmcSel6A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_F3_RecMEX" ]
      mcmcSel6 = mcmcSel6A[colnames(mcmcSel6A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[8]:")+1] =  paste(as.vector(unlist(mcmcSel6)), collapse=" ")
      
      #Size_DblN_descend_se_F3_RecMEX(3)
      mcmcSel7A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_F3_RecMEX" ]
      mcmcSel7 = mcmcSel7A[colnames(mcmcSel7A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[9]:")+1] =  paste(as.vector(unlist(mcmcSel7)), collapse=" ")
      
      #Size_inflection_F4_MEN_DSC(4)
      mcmcSel8A = mcmc[i, colnames(mcmc) %like% "Size_inflection_F4_MEN_DSC" ]
      mcmcSel8 = mcmcSel8A[colnames(mcmcSel8A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[10]:")+1] =  paste(as.vector(unlist(mcmcSel8)), collapse=" ")
      
      #Size_95%width_F4_MEN_DSC(4)
      mcmcSel9A = mcmc[i, colnames(mcmc) %like% "Size_95%width_F4_MEN_DSC" ]
      mcmcSel9 = mcmcSel9A[colnames(mcmcSel9A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[11]:")+1] =  paste(as.vector(unlist(mcmcSel9)), collapse=" ")
      
      #Size_DblN_peak_S1_LPS(5)
      mcmcSel10A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_S1_LPS" ]
      mcmcSel10 = mcmcSel10A[colnames(mcmcSel10A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[12]:")+1] =  paste(as.vector(unlist(mcmcSel10)), collapse=" ")
      
      #Size_DblN_ascend_se_S1_LPS(5)
      mcmcSel11A = mcmc[i, colnames(mcmc) %like% "Size_DblN_ascend_se_S1_LPS" ]
      mcmcSel11 = mcmcSel11A[colnames(mcmcSel11A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[13]:")+1] =  paste(as.vector(unlist(mcmcSel11)), collapse=" ")
      
      #Size_DblN_descend_se_S1_LPS(5)
      mcmcSel12A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_S1_LPS" ]
      mcmcSel12 = mcmcSel12A[colnames(mcmcSel12A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[14]:")+1] =  paste(as.vector(unlist(mcmcSel12)), collapse=" ")
      
      #Size_DblN_peak_S5_NMFS_LLSE(6)
      mcmcSel13A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_S5_NMFS_LLSE" ]
      mcmcSel13 = mcmcSel13A[colnames(mcmcSel13A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[15]:")+1] =  paste(as.vector(unlist(mcmcSel13)), collapse=" ")
      
      #Size_DblN_ascend_se_S5_NMFS_LLSE(6)
      mcmcSel14A = mcmc[i, colnames(mcmc) %like% "Size_DblN_ascend_se_S5_NMFS_LLSE" ]
      mcmcSel14 = mcmcSel14A[colnames(mcmcSel14A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[16]:")+1] =  paste(as.vector(unlist(mcmcSel14)), collapse=" ")
      
      #Size_DblN_descend_se_S5_NMFS_LLSE(6)
      mcmcSel15A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_S5_NMFS_LLSE" ]
      mcmcSel15 = mcmcSel15A[colnames(mcmcSel15A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[17]:")+1] =  paste(as.vector(unlist(mcmcSel15)), collapse=" ")
      
      
      ###########
      
      #... add other parameters as necessary for each example. 
      
      
      
      for(OMD in OMdirs){
        writeLines(newpar, file.path(OMD,"ss.par"))
      }
      
      
      return(paste("Saved new ss.par file(s)"))
    } # end BuildParFile function
  }
  if(SR=="BH"){
    BuildParFile = function(MCMCdir, mcmc, i, OMdirs=list()){
      
      # Can optionally put in more than one OM directory in the form of a list to save the ss.par file in each OMdir (for multiple HCRs)
      
      
      ## read-in par file #
      parf = readLines(file.path(MCMCdir,"ss.par")) # take par file from mcmc and save as newpar; edit newpar and save in OM 
      newpar = parf
      
      
      #### Biological/ Life History Parameters ####
      # NOTE: Check these on and off as appropriate...
      newpar[which(newpar=="# MGparm[1]:")+1] = mcmc[i,"L_at_Amin_Fem_GP_1"]
      newpar[which(newpar=="# MGparm[2]:")+1] = mcmc[i,"L_at_Amax_Fem_GP_1"]
      newpar[which(newpar=="# MGparm[3]:")+1] = mcmc[i,"VonBert_K_Fem_GP_1"]
      # newpar[which(newpar=="# MGparm[6]:")+1] = mcmc[i,"Wtlen_1_Fem_GP_1"]
      newpar[which(newpar=="# MGparm[7]:")+1] = mcmc[i,"Wtlen_2_Fem_GP_1"]
      newpar[which(newpar=="# SR_parm[1]:")+1] = mcmc[i,"SR_LN(R0)"]
      #LFSR
      # newpar[which(newpar=="# SR_parm[2]:")+1] = mcmc[i,"SR_surv_zfrac"]
      # newpar[which(newpar=="# SR_parm[3]:")+1] = mcmc[i,"SR_surv_Beta"]
      # newpar[which(newpar=="# SR_parm[4]:")+1] = mcmc[i,"SR_autocorr"]
      #BH
      # newpar[which(newpar=="# SR_parm[2]:")+1] = mcmc[i,"SR_BH_steep"]
      
      
      #### Recruitment deviations ####
      
      EarlyRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% "Early_RecrDev_"]))
      MainRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% 'Main_RecrDev_']))
      LateRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% 'Late_RecrDev_']))
      ForecastRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% 'ForeRecr_']))
      
      newpar[which(newpar=="# recdev_early:")+1] = paste(EarlyRecDevs1, collapse=" ")
      newpar[which(newpar=="# recdev2:")+1] = paste(MainRecDevs1, collapse=" ")
      newpar[which(newpar=="# Fcast_recruitments:")+1] = paste(c(LateRecDevs1, ForecastRecDevs1), collapse=" ")
      
      
      
      
      #### Process error Parameters ####
      # Based on parameters with process-error: q and selectivity
      
      # q #
      newpar[which(newpar=="# Q_parm[1]:")+1] = mcmc[i, "LnQ_base_S1_LPS(5)"] 
      newpar[which(newpar=="# Q_parm[2]:")+1] = mcmc[i, "LnQ_base_S5_NMFS_LLSE(6)"] 
      
      
      # SELECTIVITY #
      #   subset mcmc parameters to just selectivity; based on size-structured selectivity
      
      # Based on 68 selectivity parameters
      #    Note: this if-else approach allows us to skip over values that won't change
      
      newpar[which(newpar=="# selparm[1]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[1]:")+1], 
               mcmc[i,'Size_DblN_peak_F1_COM_GOM(1)'])
      
      newpar[which(newpar=="# selparm[2]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[2]:")+1], 
               mcmc[i,'Size_DblN_top_logit_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[3]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[3]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[4]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[4]:")+1], 
               mcmc[i,'Size_DblN_descend_se_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[5]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[5]:")+1], 
               mcmc[i,'Size_DblN_start_logit_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[6]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[6]:")+1], 
               mcmc[i,'Size_DblN_end_logit_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[7]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Peak_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[7]:")+1], 
               mcmc[i,'SzSel_Male_Peak_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[8]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Ascend_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[8]:")+1], 
               mcmc[i,'SzSel_Male_Ascend_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[9]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Descend_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[9]:")+1], 
               mcmc[i,'SzSel_Male_Descend_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[10]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Final_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[10]:")+1], 
               mcmc[i,'SzSel_Male_Final_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[11]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Scale_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[11]:")+1], 
               mcmc[i,'SzSel_Male_Scale_F1_COM_GOM(1)']) 
      
      #
      newpar[which(newpar=="# selparm[12]:") +1] = 
        ifelse(is.null(mcmc$'Size_inflection_F2_COM_SA(2)')==T, newpar[which(newpar=="# selparm[12]:")+1], 
               mcmc[i,'Size_inflection_F2_COM_SA(2)']) 
      
      newpar[which(newpar=="# selparm[13]:") +1] = 
        ifelse(is.null(mcmc$'Size_95%width_F2_COM_SA(2)')==T, newpar[which(newpar=="# selparm[13]:")+1], 
               mcmc[i,'Size_95%width_F2_COM_SA(2)']) 
      
      #
      newpar[which(newpar=="# selparm[14]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[14]:")+1], 
               mcmc[i,'Size_DblN_peak_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[15]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[15]:")+1], 
               mcmc[i,'Size_DblN_top_logit_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[16]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[16]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[17]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[17]:")+1], 
               mcmc[i,'Size_DblN_descend_se_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[18]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[18]:")+1], 
               mcmc[i,'Size_DblN_start_logit_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[19]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[19]:")+1], 
               mcmc[i,'Size_DblN_end_logit_F3_RecMEX(3)']) 
      
      #
      newpar[which(newpar=="# selparm[20]:") +1] = 
        ifelse(is.null(mcmc$'Size_inflection_F4_MEN_DSC(4)')==T, newpar[which(newpar=="# selparm[20]:")+1], 
               mcmc[i,'Size_inflection_F4_MEN_DSC(4)']) 
      
      ## NOTE!!! The priorSD was too large so producing wild values. Modify mcmc iterations by reducing SD by half
      mcmc$`Size_95%width_F4_MEN_DSC(4)` = (((mcmc$`Size_95%width_F4_MEN_DSC(4)`)-1)/2.5)+1
      newpar[which(newpar=="# selparm[21]:") +1] = 
        ifelse(is.null(mcmc$'Size_95%width_F4_MEN_DSC(4)')==T, newpar[which(newpar=="# selparm[21]:")+1], 
               mcmc[i,'Size_95%width_F4_MEN_DSC(4)']) 
      
      #
      newpar[which(newpar=="# selparm[22]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[22]:")+1], 
               mcmc[i,'Size_DblN_peak_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[23]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[23]:")+1], 
               mcmc[i,'Size_DblN_top_logit_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[24]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[24]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[25]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[25]:")+1], 
               mcmc[i,'Size_DblN_descend_se_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[26]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[26]:")+1], 
               mcmc[i,'Size_DblN_start_logit_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[27]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[27]:")+1], 
               mcmc[i,'Size_DblN_end_logit_S1_LPS(5)'])
      
      #
      newpar[which(newpar=="# selparm[28]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[28]:")+1], 
               mcmc[i,'Size_DblN_peak_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[29]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[29]:")+1], 
               mcmc[i,'Size_DblN_top_logit_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[30]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[30]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_S5_NMFS_LLSE(6)'])
      
      newpar[which(newpar=="# selparm[31]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[31]:")+1], 
               mcmc[i,'Size_DblN_descend_se_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[32]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[32]:")+1], 
               mcmc[i,'Size_DblN_start_logit_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[33]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[33]:")+1], 
               mcmc[i,'Size_DblN_end_logit_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[34]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Peak_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[34]:")+1], 
               mcmc[i,'SzSel_Male_Peak_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[35]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Ascend_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[35]:")+1], 
               mcmc[i,'SzSel_Male_Ascend_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[36]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Descend_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[36]:")+1], 
               mcmc[i,'SzSel_Male_Descend_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[37]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Final_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[37]:")+1], 
               mcmc[i,'SzSel_Male_Final_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[38]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Scale_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[38]:")+1], 
               mcmc[i,'SzSel_Male_Scale_S5_NMFS_LLSE(6)']) 
      
      
      
      
      
      #### TIMEVARYING PARAMETERS ####
      
      #### NOTE THIS IS SPECIFICALLY FOR WHEN M IS FIXED AND TIME_VARYING Q AND SELECTIVITY PARAMS. 
      ###     THis order of parameters may change when more time-varying parameters are added. 
      # time varying parameters
      # parm_dev  parameter
      # 1	  LnQ_base_S1(5)_dev_se
      # 2	  LnQ_base_S2(6)_dev_se
      # 3	  #SizeSel_P1_F1_COM_GOM(1)_dev_se
      # 4	  #SizeSel_P3_F1_COM_GOM(1)_dev_se
      # 5	  #SizeSel_P4_F1_COM_GOM(1)_dev_se
      # 6	  #SizeSel_P1_F2_COM_SA(2)_dev_se
      # 7	  #SizeSel_P2_F2_COM_SA(2)_dev_se
      # 8	  #SizeSel_P1_F3_RecMEX(3)_dev_se
      # 9	  #SizeSel_P4_F3_RecMEX(3)_dev_se
      # 10	#SizeSel_P1_F4_MEN_DSC(4)_dev_se
      # 11	#SizeSel_P2_F4_MEN_DSC(4)_dev_se
      # 12	#SizeSel_P1_S1_LPS(5)_dev_se
      # 13	#SizeSel_P3_S1_LPS(5)_dev_se
      # 14	#SizeSel_P4_S1_LPS(5)_dev_se
      # 15	#SizeSel_P1_S5_NMFS_LLSE(9)_dev_se
      # 16	#SizeSel_P3_S5_NMFS_LLSE(9)_dev_se
      # 17	#SizeSel_P4_S5_NMFS_LLSE(9)_dev_se
      
      
      #lnq1
      mcmcLnQ1A = mcmc[i, colnames(mcmc) %like% "LnQ_base_S1" ] 
      mcmcLnQ1 = mcmcLnQ1A[colnames(mcmcLnQ1A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[1]:")+1] =  paste(as.vector(unlist(mcmcLnQ1)), collapse=" ")
      #lnq2
      mcmcLnQ2A = mcmc[i, colnames(mcmc) %like% "LnQ_base_S5" ] 
      mcmcLnQ2 = mcmcLnQ2A[colnames(mcmcLnQ2A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[2]:")+1] =  paste(as.vector(unlist(mcmcLnQ2)), collapse=" ")
      
      #Selectivity
      #Size_DblN_peak_F1_COM_GOM(1)
      mcmcSel1A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_F1_COM_GOM" ]
      mcmcSel1 = mcmcSel1A[colnames(mcmcSel1A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[3]:")+1] =  paste(as.vector(unlist(mcmcSel1)), collapse=" ")
      
      #Size_DblN_ascend_se_F1_COM_GOM(1)
      mcmcSel2A = mcmc[i, colnames(mcmc) %like% "Size_DblN_ascend_se_F1_COM_GOM" ]
      mcmcSel2 = mcmcSel2A[colnames(mcmcSel2A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[4]:")+1] =  paste(as.vector(unlist(mcmcSel2)), collapse=" ")
      
      #Size_DblN_descend_se_F1_COM_GOM(1)
      mcmcSel3A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_F1_COM_GOM" ]
      mcmcSel3 = mcmcSel3A[colnames(mcmcSel3A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[5]:")+1] =  paste(as.vector(unlist(mcmcSel3)), collapse=" ")
      
      #Size_inflection_F2_COM_SA(2)
      mcmcSel4A = mcmc[i, colnames(mcmc) %like% "Size_inflection_F2_COM_SA" ]
      mcmcSel4 = mcmcSel4A[colnames(mcmcSel4A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[6]:")+1] =  paste(as.vector(unlist(mcmcSel4)), collapse=" ")
      
      #Size_95%width_F2_COM_SA(2)
      mcmcSel5A = mcmc[i, colnames(mcmc) %like% "Size_95%width_F2_COM_SA" ]
      mcmcSel5 = mcmcSel5A[colnames(mcmcSel5A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[7]:")+1] =  paste(as.vector(unlist(mcmcSel5)), collapse=" ")
      
      #Size_DblN_peak_F3_RecMEX(3)
      mcmcSel6A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_F3_RecMEX" ]
      mcmcSel6 = mcmcSel6A[colnames(mcmcSel6A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[8]:")+1] =  paste(as.vector(unlist(mcmcSel6)), collapse=" ")
      
      #Size_DblN_descend_se_F3_RecMEX(3)
      mcmcSel7A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_F3_RecMEX" ]
      mcmcSel7 = mcmcSel7A[colnames(mcmcSel7A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[9]:")+1] =  paste(as.vector(unlist(mcmcSel7)), collapse=" ")
      
      #Size_inflection_F4_MEN_DSC(4)
      mcmcSel8A = mcmc[i, colnames(mcmc) %like% "Size_inflection_F4_MEN_DSC" ]
      mcmcSel8 = mcmcSel8A[colnames(mcmcSel8A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[10]:")+1] =  paste(as.vector(unlist(mcmcSel8)), collapse=" ")
      
      #Size_95%width_F4_MEN_DSC(4)
      mcmcSel9A = mcmc[i, colnames(mcmc) %like% "Size_95%width_F4_MEN_DSC" ]
      mcmcSel9 = mcmcSel9A[colnames(mcmcSel9A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[11]:")+1] =  paste(as.vector(unlist(mcmcSel9)), collapse=" ")
      # newpar[which(newpar=="# parm_dev[11]:")+1] =  paste(as.vector(rep(0,156)), collapse=" ")
      
      #Size_DblN_peak_S1_LPS(5)
      mcmcSel10A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_S1_LPS" ]
      mcmcSel10 = mcmcSel10A[colnames(mcmcSel10A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[12]:")+1] =  paste(as.vector(unlist(mcmcSel10)), collapse=" ")
      
      #Size_DblN_ascend_se_S1_LPS(5)
      mcmcSel11A = mcmc[i, colnames(mcmc) %like% "Size_DblN_ascend_se_S1_LPS" ]
      mcmcSel11 = mcmcSel11A[colnames(mcmcSel11A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[13]:")+1] =  paste(as.vector(unlist(mcmcSel11)), collapse=" ")
      
      #Size_DblN_descend_se_S1_LPS(5)
      mcmcSel12A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_S1_LPS" ]
      mcmcSel12 = mcmcSel12A[colnames(mcmcSel12A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[14]:")+1] =  paste(as.vector(unlist(mcmcSel12)), collapse=" ")
      
      #Size_DblN_peak_S5_NMFS_LLSE(6)
      mcmcSel13A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_S5_NMFS_LLSE" ]
      mcmcSel13 = mcmcSel13A[colnames(mcmcSel13A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[15]:")+1] =  paste(as.vector(unlist(mcmcSel13)), collapse=" ")
      
      #Size_DblN_ascend_se_S5_NMFS_LLSE(6)
      mcmcSel14A = mcmc[i, colnames(mcmc) %like% "Size_DblN_ascend_se_S5_NMFS_LLSE" ]
      mcmcSel14 = mcmcSel14A[colnames(mcmcSel14A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[16]:")+1] =  paste(as.vector(unlist(mcmcSel14)), collapse=" ")
      
      #Size_DblN_descend_se_S5_NMFS_LLSE(6)
      mcmcSel15A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_S5_NMFS_LLSE" ]
      mcmcSel15 = mcmcSel15A[colnames(mcmcSel15A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[17]:")+1] =  paste(as.vector(unlist(mcmcSel15)), collapse=" ")
      
      
      ###########
      
      #... add other parameters as necessary for each example. 
      
      
      
      for(OMD in OMdirs){
        writeLines(newpar, file.path(OMD,"ss.par"))
      }
      
      
      return(paste("Saved new ss.par file(s)"))
    } # end BuildParFile function
  }
  if(SR=="lnR0"){
    BuildParFile = function(MCMCdir, mcmc, i, OMdirs=list()){
      
      # Can optionally put in more than one OM directory in the form of a list to save the ss.par file in each OMdir (for multiple HCRs)
      
      
      ## read-in par file #
      parf = readLines(file.path(MCMCdir,"ss.par")) # take par file from mcmc and save as newpar; edit newpar and save in OM 
      newpar = parf
      
      
      #### Biological/ Life History Parameters ####
      # NOTE: Check these on and off as appropriate...
      newpar[which(newpar=="# MGparm[1]:")+1] = mcmc[i,"L_at_Amin_Fem_GP_1"]
      newpar[which(newpar=="# MGparm[2]:")+1] = mcmc[i,"L_at_Amax_Fem_GP_1"]
      newpar[which(newpar=="# MGparm[3]:")+1] = mcmc[i,"VonBert_K_Fem_GP_1"]
      # newpar[which(newpar=="# MGparm[6]:")+1] = mcmc[i,"Wtlen_1_Fem_GP_1"]
      newpar[which(newpar=="# MGparm[7]:")+1] = mcmc[i,"Wtlen_2_Fem_GP_1"]
      # newpar[which(newpar=="# SR_parm[1]:")+1] = mcmc[i,"SR_LN(R0)"]
      #LFSR
      newpar[which(newpar=="# SR_parm[2]:")+1] = mcmc[i,"SR_surv_zfrac"]
      newpar[which(newpar=="# SR_parm[3]:")+1] = mcmc[i,"SR_surv_Beta"]
      # newpar[which(newpar=="# SR_parm[4]:")+1] = mcmc[i,"SR_autocorr"]
      #BH
      # newpar[which(newpar=="# SR_parm[2]:")+1] = mcmc[i,"SR_BH_steep"]
      
      
      #### Recruitment deviations ####
      
      EarlyRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% "Early_RecrDev_"]))
      MainRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% 'Main_RecrDev_']))
      LateRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% 'Late_RecrDev_']))
      ForecastRecDevs1 = c(as.matrix(mcmc[i,colnames(mcmc) %like% 'ForeRecr_']))
      
      newpar[which(newpar=="# recdev_early:")+1] = paste(EarlyRecDevs1, collapse=" ")
      newpar[which(newpar=="# recdev2:")+1] = paste(MainRecDevs1, collapse=" ")
      newpar[which(newpar=="# Fcast_recruitments:")+1] = paste(c(LateRecDevs1, ForecastRecDevs1), collapse=" ")
      
      
      
      
      #### Process error Parameters ####
      # Based on parameters with process-error: q and selectivity
      
      # q #
      newpar[which(newpar=="# Q_parm[1]:")+1] = mcmc[i, "LnQ_base_S1_LPS(5)"] 
      newpar[which(newpar=="# Q_parm[2]:")+1] = mcmc[i, "LnQ_base_S5_NMFS_LLSE(6)"] 
      
      
      # SELECTIVITY #
      #   subset mcmc parameters to just selectivity; based on size-structured selectivity
      
      # Based on 68 selectivity parameters
      #    Note: this if-else approach allows us to skip over values that won't change
      newpar[which(newpar=="# selparm[1]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[1]:")+1], 
               mcmc[i,'Size_DblN_peak_F1_COM_GOM(1)'])
      
      newpar[which(newpar=="# selparm[2]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[2]:")+1], 
               mcmc[i,'Size_DblN_top_logit_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[3]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[3]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[4]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[4]:")+1], 
               mcmc[i,'Size_DblN_descend_se_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[5]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[5]:")+1], 
               mcmc[i,'Size_DblN_start_logit_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[6]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[6]:")+1], 
               mcmc[i,'Size_DblN_end_logit_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[7]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Peak_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[7]:")+1], 
               mcmc[i,'SzSel_Male_Peak_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[8]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Ascend_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[8]:")+1], 
               mcmc[i,'SzSel_Male_Ascend_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[9]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Descend_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[9]:")+1], 
               mcmc[i,'SzSel_Male_Descend_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[10]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Final_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[10]:")+1], 
               mcmc[i,'SzSel_Male_Final_F1_COM_GOM(1)']) 
      
      newpar[which(newpar=="# selparm[11]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Scale_F1_COM_GOM(1)')==T, newpar[which(newpar=="# selparm[11]:")+1], 
               mcmc[i,'SzSel_Male_Scale_F1_COM_GOM(1)']) 
      
      #
      newpar[which(newpar=="# selparm[12]:") +1] = 
        ifelse(is.null(mcmc$'Size_inflection_F2_COM_SA(2)')==T, newpar[which(newpar=="# selparm[12]:")+1], 
               mcmc[i,'Size_inflection_F2_COM_SA(2)']) 
      
      newpar[which(newpar=="# selparm[13]:") +1] = 
        ifelse(is.null(mcmc$'Size_95%width_F2_COM_SA(2)')==T, newpar[which(newpar=="# selparm[13]:")+1], 
               mcmc[i,'Size_95%width_F2_COM_SA(2)']) 
      
      #
      newpar[which(newpar=="# selparm[14]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[14]:")+1], 
               mcmc[i,'Size_DblN_peak_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[15]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[15]:")+1], 
               mcmc[i,'Size_DblN_top_logit_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[16]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[16]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[17]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[17]:")+1], 
               mcmc[i,'Size_DblN_descend_se_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[18]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[18]:")+1], 
               mcmc[i,'Size_DblN_start_logit_F3_RecMEX(3)']) 
      
      newpar[which(newpar=="# selparm[19]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_F3_RecMEX(3)')==T, newpar[which(newpar=="# selparm[19]:")+1], 
               mcmc[i,'Size_DblN_end_logit_F3_RecMEX(3)']) 
      
      #
      newpar[which(newpar=="# selparm[20]:") +1] = 
        ifelse(is.null(mcmc$'Size_inflection_F4_MEN_DSC(4)')==T, newpar[which(newpar=="# selparm[20]:")+1], 
               mcmc[i,'Size_inflection_F4_MEN_DSC(4)']) 
      
      ## NOTE!!! The priorSD was too large so producing wild values. Modify mcmc iterations by reducing SD by half
      mcmc$`Size_95%width_F4_MEN_DSC(4)` = (((mcmc$`Size_95%width_F4_MEN_DSC(4)`)-1)/2.5)+1
      newpar[which(newpar=="# selparm[21]:") +1] = 
        ifelse(is.null(mcmc$'Size_95%width_F4_MEN_DSC(4)')==T, newpar[which(newpar=="# selparm[21]:")+1], 
               mcmc[i,'Size_95%width_F4_MEN_DSC(4)']) 
      
      #
      newpar[which(newpar=="# selparm[22]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[22]:")+1], 
               mcmc[i,'Size_DblN_peak_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[23]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[23]:")+1], 
               mcmc[i,'Size_DblN_top_logit_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[24]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[24]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[25]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[25]:")+1], 
               mcmc[i,'Size_DblN_descend_se_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[26]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[26]:")+1], 
               mcmc[i,'Size_DblN_start_logit_S1_LPS(5)']) 
      
      newpar[which(newpar=="# selparm[27]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_S1_LPS(5)')==T, newpar[which(newpar=="# selparm[27]:")+1], 
               mcmc[i,'Size_DblN_end_logit_S1_LPS(5)'])
      
      #
      newpar[which(newpar=="# selparm[28]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_peak_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[28]:")+1], 
               mcmc[i,'Size_DblN_peak_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[29]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_top_logit_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[29]:")+1], 
               mcmc[i,'Size_DblN_top_logit_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[30]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_ascend_se_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[30]:")+1], 
               mcmc[i,'Size_DblN_ascend_se_S5_NMFS_LLSE(6)'])
      
      newpar[which(newpar=="# selparm[31]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_descend_se_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[31]:")+1], 
               mcmc[i,'Size_DblN_descend_se_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[32]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_start_logit_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[32]:")+1], 
               mcmc[i,'Size_DblN_start_logit_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[33]:") +1] = 
        ifelse(is.null(mcmc$'Size_DblN_end_logit_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[33]:")+1], 
               mcmc[i,'Size_DblN_end_logit_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[34]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Peak_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[34]:")+1], 
               mcmc[i,'SzSel_Male_Peak_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[35]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Ascend_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[35]:")+1], 
               mcmc[i,'SzSel_Male_Ascend_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[36]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Descend_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[36]:")+1], 
               mcmc[i,'SzSel_Male_Descend_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[37]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Final_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[37]:")+1], 
               mcmc[i,'SzSel_Male_Final_S5_NMFS_LLSE(6)']) 
      
      newpar[which(newpar=="# selparm[38]:") +1] = 
        ifelse(is.null(mcmc$'SzSel_Male_Scale_S5_NMFS_LLSE(6)')==T, newpar[which(newpar=="# selparm[38]:")+1], 
               mcmc[i,'SzSel_Male_Scale_S5_NMFS_LLSE(6)']) 
      
      
      
      
      
      #### TIMEVARYING PARAMETERS ####
      
      #### NOTE THIS IS SPECIFICALLY FOR WHEN M IS FIXED AND TIME_VARYING Q AND SELECTIVITY PARAMS. 
      ###     THis order of parameters may change when more time-varying parameters are added. 
      # time varying parameters
      # parm_dev  parameter
      # 1	  LnQ_base_S1(5)_dev_se
      # 2	  LnQ_base_S2(6)_dev_se
      # 3	  #SizeSel_P1_F1_COM_GOM(1)_dev_se
      # 4	  #SizeSel_P3_F1_COM_GOM(1)_dev_se
      # 5	  #SizeSel_P4_F1_COM_GOM(1)_dev_se
      # 6	  #SizeSel_P1_F2_COM_SA(2)_dev_se
      # 7	  #SizeSel_P2_F2_COM_SA(2)_dev_se
      # 8	  #SizeSel_P1_F3_RecMEX(3)_dev_se
      # 9	  #SizeSel_P4_F3_RecMEX(3)_dev_se
      # 10	#SizeSel_P1_F4_MEN_DSC(4)_dev_se
      # 11	#SizeSel_P2_F4_MEN_DSC(4)_dev_se
      # 12	#SizeSel_P1_S1_LPS(5)_dev_se
      # 13	#SizeSel_P3_S1_LPS(5)_dev_se
      # 14	#SizeSel_P4_S1_LPS(5)_dev_se
      # 15	#SizeSel_P1_S5_NMFS_LLSE(9)_dev_se
      # 16	#SizeSel_P3_S5_NMFS_LLSE(9)_dev_se
      # 17	#SizeSel_P4_S5_NMFS_LLSE(9)_dev_se
      
      
      #lnq1
      mcmcLnQ1A = mcmc[i, colnames(mcmc) %like% "LnQ_base_S1" ] 
      mcmcLnQ1 = mcmcLnQ1A[colnames(mcmcLnQ1A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[1]:")+1] =  paste(as.vector(unlist(mcmcLnQ1)), collapse=" ")
      #lnq2
      mcmcLnQ2A = mcmc[i, colnames(mcmc) %like% "LnQ_base_S5" ] 
      mcmcLnQ2 = mcmcLnQ2A[colnames(mcmcLnQ2A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[2]:")+1] =  paste(as.vector(unlist(mcmcLnQ2)), collapse=" ")
      
      #Selectivity
      #Size_DblN_peak_F1_COM_GOM(1)
      mcmcSel1A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_F1_COM_GOM" ]
      mcmcSel1 = mcmcSel1A[colnames(mcmcSel1A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[3]:")+1] =  paste(as.vector(unlist(mcmcSel1)), collapse=" ")
      
      #Size_DblN_ascend_se_F1_COM_GOM(1)
      mcmcSel2A = mcmc[i, colnames(mcmc) %like% "Size_DblN_ascend_se_F1_COM_GOM" ]
      mcmcSel2 = mcmcSel2A[colnames(mcmcSel2A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[4]:")+1] =  paste(as.vector(unlist(mcmcSel2)), collapse=" ")
      
      #Size_DblN_descend_se_F1_COM_GOM(1)
      mcmcSel3A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_F1_COM_GOM" ]
      mcmcSel3 = mcmcSel3A[colnames(mcmcSel3A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[5]:")+1] =  paste(as.vector(unlist(mcmcSel3)), collapse=" ")
      
      #Size_inflection_F2_COM_SA(2)
      mcmcSel4A = mcmc[i, colnames(mcmc) %like% "Size_inflection_F2_COM_SA" ]
      mcmcSel4 = mcmcSel4A[colnames(mcmcSel4A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[6]:")+1] =  paste(as.vector(unlist(mcmcSel4)), collapse=" ")
      
      #Size_95%width_F2_COM_SA(2)
      mcmcSel5A = mcmc[i, colnames(mcmc) %like% "Size_95%width_F2_COM_SA" ]
      mcmcSel5 = mcmcSel5A[colnames(mcmcSel5A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[7]:")+1] =  paste(as.vector(unlist(mcmcSel5)), collapse=" ")
      
      #Size_DblN_peak_F3_RecMEX(3)
      mcmcSel6A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_F3_RecMEX" ]
      mcmcSel6 = mcmcSel6A[colnames(mcmcSel6A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[8]:")+1] =  paste(as.vector(unlist(mcmcSel6)), collapse=" ")
      
      #Size_DblN_descend_se_F3_RecMEX(3)
      mcmcSel7A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_F3_RecMEX" ]
      mcmcSel7 = mcmcSel7A[colnames(mcmcSel7A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[9]:")+1] =  paste(as.vector(unlist(mcmcSel7)), collapse=" ")
      
      #Size_inflection_F4_MEN_DSC(4)
      mcmcSel8A = mcmc[i, colnames(mcmc) %like% "Size_inflection_F4_MEN_DSC" ]
      mcmcSel8 = mcmcSel8A[colnames(mcmcSel8A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[10]:")+1] =  paste(as.vector(unlist(mcmcSel8)), collapse=" ")
      
      #Size_95%width_F4_MEN_DSC(4)
      mcmcSel9A = mcmc[i, colnames(mcmc) %like% "Size_95%width_F4_MEN_DSC" ]
      mcmcSel9 = mcmcSel9A[colnames(mcmcSel9A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[11]:")+1] =  paste(as.vector(unlist(mcmcSel9)), collapse=" ")
      
      #Size_DblN_peak_S1_LPS(5)
      mcmcSel10A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_S1_LPS" ]
      mcmcSel10 = mcmcSel10A[colnames(mcmcSel10A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[12]:")+1] =  paste(as.vector(unlist(mcmcSel10)), collapse=" ")
      
      #Size_DblN_ascend_se_S1_LPS(5)
      mcmcSel11A = mcmc[i, colnames(mcmc) %like% "Size_DblN_ascend_se_S1_LPS" ]
      mcmcSel11 = mcmcSel11A[colnames(mcmcSel11A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[13]:")+1] =  paste(as.vector(unlist(mcmcSel11)), collapse=" ")
      
      #Size_DblN_descend_se_S1_LPS(5)
      mcmcSel12A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_S1_LPS" ]
      mcmcSel12 = mcmcSel12A[colnames(mcmcSel12A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[14]:")+1] =  paste(as.vector(unlist(mcmcSel12)), collapse=" ")
      
      #Size_DblN_peak_S5_NMFS_LLSE(6)
      mcmcSel13A = mcmc[i, colnames(mcmc) %like% "Size_DblN_peak_S5_NMFS_LLSE" ]
      mcmcSel13 = mcmcSel13A[colnames(mcmcSel13A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[15]:")+1] =  paste(as.vector(unlist(mcmcSel13)), collapse=" ")
      
      #Size_DblN_ascend_se_S5_NMFS_LLSE(6)
      mcmcSel14A = mcmc[i, colnames(mcmc) %like% "Size_DblN_ascend_se_S5_NMFS_LLSE" ]
      mcmcSel14 = mcmcSel14A[colnames(mcmcSel14A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[16]:")+1] =  paste(as.vector(unlist(mcmcSel14)), collapse=" ")
      
      #Size_DblN_descend_se_S5_NMFS_LLSE(6)
      mcmcSel15A = mcmc[i, colnames(mcmc) %like% "Size_DblN_descend_se_S5_NMFS_LLSE" ]
      mcmcSel15 = mcmcSel15A[colnames(mcmcSel15A) %like% "_DEV_MR_rwalk_"]
      newpar[which(newpar=="# parm_dev[17]:")+1] =  paste(as.vector(unlist(mcmcSel15)), collapse=" ")
      
      
      ###########
      
      #... add other parameters as necessary for each example. 
      
      
      
      for(OMD in OMdirs){
        writeLines(newpar, file.path(OMD,"ss.par"))
      }
      
      
      return(paste("Saved new ss.par file(s)"))
    } # end BuildParFile function
  }
  
  ### RunOM_NoHess ###
  RunOM_NoHess = function( OMdir , extras="", intern=FALSE) {
    
    newdir <- file.path(OMdir)
    oldwd <- getwd()              # save working directory
    on.exit(setwd(oldwd))
    setwd(newdir)
    
    system(paste0("./ss -nohess"," ",extras), intern=intern)
    
    # setwd(oldwd)
  }
  
  
  ### BuildEMDatFile ###
  BuildEM = function(EMdir, OMdir, tt, ...) {
    # Get EM data file and add results from MSE_Step2
    ### NOTE: Make data Corrections for variance adjustment!!!
    
    EMdat = SS_readdat(file=file.path(EMdir,"SB.dat"), version="3.30")
    OMboot_dat = SS_readdat(file=file.path(OMdir,"data.ss_new"), section=3, version="3.30")
    
    
    # get new EM data
    NewEMdat = EMdat
    
    # calculate end year of estimation model
    EndYr = tt-1
    NewEMdat$endyr = EndYr
    
    # Replace catch with bootstrapped catch for existing years
    newcatch = subset(OMboot_dat$catch, OMboot_dat$catch$year<=EndYr)
    
    newcatch<-round(newcatch, digits=5)
    NewEMdat$catch = newcatch
    
    # Replace CPUE with bootstrapped CPUE for existing years
    newCPUE = subset(OMboot_dat$CPUE, OMboot_dat$CPUE$year<=EndYr)
    newCPUE<-round(newCPUE, digits=5)
    NewEMdat$CPUE =  newCPUE
    
    
    # replace lencomp data with bootstrapped lencomp data
    newlen = subset(OMboot_dat$lencomp, OMboot_dat$lencomp$Yr<=EndYr)     # subset length comps
    newlen$Yr = ifelse(newlen$Nsamp<1, newlen$Yr*-1, newlen$Yr)          # if Nsamp <=0, make year negative
    newlen<-round(newlen, digits=4)
    NewEMdat$lencomp = newlen
    
    # re-write new EM data file with bootstrapped historical data
    SS_writedat(NewEMdat, outfile=file.path(EMdir,"SB.dat"), version="3.30", overwrite=T)
    
  } # end BuildEM function
  BuildOM = function(OMdir, tt, ...){
    # re-write new OM data file with historical expected values
    OMexpect_dat = SS_readdat(file=file.path(OMdir,"data.ss_new"), section=2, version="3.30")
    OMdat = SS_readdat(file=file.path(OMdir,"data.ss_new"), section=1, version="3.30")
    newdat = OMdat
    
    # Update Data
    newdat$catch[newdat$catch$year<tt,] = OMexpect_dat$catch[OMexpect_dat$catch$year<tt,]
    newdat$catch<-round(newdat$catch, digits=5)
    newdat$CPUE[newdat$CPUE$year<tt,] = OMexpect_dat$CPUE[OMexpect_dat$CPUE$year<tt,]
    newdat$CPUE<-round( newdat$CPUE, digits=5)
    newdat$lencomp[newdat$lencomp$Yr>0 & newdat$lencomp$Yr<tt,] = OMexpect_dat$lencomp[OMexpect_dat$lencomp$Yr<tt,]
    newdat$lencomp<-round(newdat$lencomp, digits=4)
    
    SS_writedat(newdat, outfile=file.path(OMdir,"SB.dat"), version="3.30", overwrite=T)
    
  } # END BuildOM function
  
  
  ### UpdateEMDatFile ###
  UpdateEM = function(EMdir, OMdir, FRQ=5, tt, ...) {
    # Get EM data file and add results from MSE_Step2
    ### Make data Corrections for variance adjustment!
    
    
    ####----------------------------------------------------------------------------------------------------------
    # get data files
    ####----------------------------------------------------------------------------------------------------------
    
    EMdat = SS_readdat(file=file.path(EMdir,"SB.dat"), version="3.30")
    
    OMboot_dat = SS_readdat(file=file.path(OMdir,"data.ss_new"), section=3, version="3.30") 
    OMdat = SS_readdat(file=file.path(OMdir,"SB.dat"), section=1, version="3.30") 
    
    # get new EM data
    NewEMdat = EMdat
    
    
    
    ####----------------------------------------------------------------------------------------------------------
    # calculate years
    ####----------------------------------------------------------------------------------------------------------
    StartYr = tt-FRQ
    EndYr = tt-1
    
    
    
    
    ####----------------------------------------------------------------------------------------------------------
    # Add new catch years
    ####----------------------------------------------------------------------------------------------------------
    #     get old and new catch; subset by fleet and reconstruct.
    oldcatch = EMdat$catch
    newcatch = subset(OMboot_dat$catch, OMboot_dat$catch$year>=StartYr & OMboot_dat$catch$year<=EndYr)  # get new catch data
    catch = c()
    for(l in levels(as.factor(EMdat$catch$fleet))) {                                                    # recombine old+new catch data in order
      assign(paste0("oldcatchF",l), subset(oldcatch, oldcatch$fleet==l))
      assign(paste0("newcatchF",l), subset(newcatch, newcatch$fleet==l))
      catch = rbind(catch, get(paste0("oldcatchF",l)), get(paste0("newcatchF",l)) )
    }
    NewEMdat$catch = round(catch, digits=5)
    
    
    
    ####----------------------------------------------------------------------------------------------------------
    # Add new CPUE years
    ####----------------------------------------------------------------------------------------------------------
    oldCPUE = EMdat$CPUE
    newCPUE = subset(OMboot_dat$CPUE, OMboot_dat$CPUE$year>=StartYr & OMboot_dat$CPUE$year<=EndYr)  # get new CPUE data
    CPUE = c()
    for(m in levels(as.factor(EMdat$CPUE$index))){                                                  # recombine old + new CPUE data in order
      assign(paste0("oldCPUE",m), subset(oldCPUE, oldCPUE$index==m))
      assign(paste0("newCPUE",m), subset(newCPUE, newCPUE$index==m))
      CPUE = rbind(CPUE, get(paste0("oldCPUE",m)), get(paste0("newCPUE",m)) )
    }
    NewEMdat$CPUE = round(CPUE, digits=5)
    
    
    
    ####----------------------------------------------------------------------------------------------------------
    # Add new lencomps
    ####----------------------------------------------------------------------------------------------------------
    
    origlen = EMdat$lencomp
    newlen = subset(OMdat$lencomp, abs(OMdat$lencomp$Yr)>=StartYr & abs(OMdat$lencomp$Yr)<=EndYr)              
    # NOTE: the bootstrapped data ignores negative years; use OMdat to preserve all years
    
    newlen[newlen$Yr>=StartYr & newlen$Yr<=EndYr,] = 
      subset(OMboot_dat$lencomp, OMboot_dat$lencomp$Yr>=StartYr & OMboot_dat$lencomp$Yr<=EndYr)
    # insert bootstrapped data into newlen 
    newlen$Yr = abs(newlen$Yr)                            # take absolute value of year for the purposes of compiling lengthcomps
    
    
    lencomps = c()
    for(n in levels(as.factor(EMdat$lencomp$FltSvy)) ){
      
      if(n %in% levels(as.factor(EMdat$catch$fleet))==TRUE){                                        # if n is a fishery fleet
        
        origl = subset(origlen, origlen$FltSvy==n)                                                  # subset original lencomps  
        newl = subset(newlen, newlen$FltSvy==n)                                                     # subset new lencomps for each fleet
        # obslen = ifelse( get(paste0("newcatchF",n))$catch==0, NA, get(paste0("newcatchF",n))$year ) # Note years with zero catch, as they will have zero lencomp observations
        # newl$Nsamp = ifelse(is.na(obslen), 0, newl$Nsamp)[obslen %in% newl$Yr]                      # replace Nsamp with zero if zero catch
        # # newl = newl[newl$Nsamp > 0,]                                                                # only include non-zero year lencomp observations 
        
        lencomps = rbind(lencomps, origl, newl)                                                     # put lencomps back together            
        
      } # end if n %in% fleet
      
      if(n %in% levels(as.factor(EMdat$CPUE$index))==TRUE){                                         # if n is a survey fleet
        
        origl = subset(origlen, origlen$FltSvy==n)      # subset orig lens
        newl = subset(newlen, newlen$FltSvy==n)         # subset new lens
        # newl = newl[newl$Nsamp > 0,]                    # dont include years where Nsamp is 0 
        
        lencomps = rbind(lencomps, origl, newl)         # put lencomps back together
        
      } # end if n %in% survey
      
    } # end n loop for lencomps
    lencomps$Yr <- ifelse(lencomps$Nsamp<1, -1*abs(lencomps$Yr), lencomps$Yr)
    NewEMdat$lencomp = round(lencomps, digits=4)
    
    ####----------------------------------------------------------------------------------------------------------
    # update endyear
    ####----------------------------------------------------------------------------------------------------------
    NewEMdat$endyr=EndYr
    
    ####----------------------------------------------------------------------------------------------------------
    # re-write new EM data file
    ####----------------------------------------------------------------------------------------------------------
    SS_writedat(NewEMdat, outfile=file.path(EMdir,"SB.dat"), version="3.30", overwrite=T)
    
  } # end UpdateEM function
  UpdateOM <- function(OMdir, tt, FRQ, ...){
    # re-write new OM data file with historical expected values
    OMexpect_dat = SS_readdat(file=file.path(OMdir,"data.ss_new"), section=2, version="3.30") 
    OMdat = SS_readdat(file=file.path(OMdir,"data.ss_new"), section=1, version="3.30") 
    
    OMdat$CPUE[OMdat$CPUE$year>=tt-FRQ & OMdat$CPUE$year<tt,] <- OMexpect_dat$CPUE[OMexpect_dat$CPUE$year>=tt-FRQ & OMexpect_dat$CPUE$year<tt,]
    OMdat$CPUE<-round(OMdat$CPUE, digits=5)
    
    SS_writedat(OMdat, outfile=file.path(OMdir,"SB.dat"), version="3.30", overwrite=T)
  } # end UpdateOM function 
  
  
  ### RunEM ###
  RunEM = function( EMdir , extras="" , intern=FALSE) {
    # CallType="system"
    
    newdir <- file.path(EMdir)
    oldwd <- getwd()
    on.exit(setwd(oldwd))
    setwd(newdir)
    
    system(paste0("./ss -nohess ",extras), intern=intern)
    
  }
  
  
  ### HCR ###
  HCR = function(Btarg="BMSY", Bconst=1, Ftarg="FMSY", Fconst=1, a=a, b=b, modEM=modEM, tt, ...){
    #   This is for a threshold control rule
    #   Btarg can be BMSY, B0, or BSPR
    #   Bconst is a multiplication factor that we use to scale Btarg
    #   Ftarg can be FMSY or F=M
    #   Fconst is a multiplication factor that we use to scale Ftarg
    #   a is proportion of B0; bottom threshold after which F gets set to 0
    #   b is proportion Bt; threshold below which F starts to decline and above which F=Fconst*Ftarg
    
    ###---------------------------------------------------------------------------------------------------
    # get EM results
    ###---------------------------------------------------------------------------------------------------
    # modEM = SS_output(dir=EMdir)
    
    
    # get end year of the EM
    year = tt-1
    
    
    ###---------------------------------------------------------------------------------------------------
    # Define reference management parameters
    ###---------------------------------------------------------------------------------------------------
    # B current
    Bcurrent = modEM$derived_quants[paste("SSB_",year,sep=""),"Value"]
    # total biomass (not just SSB)
    Btotal = modEM$timeseries[modEM$timeseries$Yr==year,"Bio_all"]
    # B0
    B0 = modEM$derived_quants["SSB_unfished","Value"]
    
    
    # define F target
    if(Ftarg=="FMSY") { Ft = Fconst * modEM$derived_quants["annF_MSY","Value"] }
    if(Ftarg=="F=M") {
      NatM = mean(unlist(modEM$M_at_age[nrow(modEM$M_at_age),which(colnames(modEM$M_at_age)=="1"):ncol(modEM$M_at_age)]), na.rm=T) # Take average M of age 1+ of the FINAL YEAR of the EM assessment; implications for time-varying M
      Ft = Fconst*NatM
    }
    
    #define B target 
    if(Btarg=="BMSY") { Bt = Bconst * modEM$derived_quants["SSB_MSY","Value"] }
    if(Btarg=="B0") { Bt = Bconst * B0 }
    if(Btarg=="BSPR") { Bt = Bconst * modEM$derived_quants["SSB_SPR","Value"] }
    
    
    
    ###---------------------------------------------------------------------------------------------------
    # define HCR params a and b 
    ###---------------------------------------------------------------------------------------------------
    
    if(is.numeric(b)==TRUE) {bb = b*Bt}
    
    if(is.numeric(a)==TRUE) {aa = B0*a}
    if(a==b) {aa=bb}
    
    
    ###---------------------------------------------------------------------------------------------------
    # RUN HCR 
    ###---------------------------------------------------------------------------------------------------
    
    if(Bcurrent < aa) {Fset = 0}
    if(Bcurrent <=bb & Bcurrent>=aa) { Fset= ( ((Ft/(bb-aa))*Bcurrent) - ((aa*Ft)/(bb-aa)) ) }
    if(Bcurrent > bb) {Fset=Ft}
    
    B_at_age = modEM$batage[modEM$batage$Yr==(max(modEM$batage$Yr)-1) & modEM$batage$'Beg/Mid' == "B",]   # get B_at_age this year
    B_at_age = B_at_age[,-c(1:12)]   # remove first col lables so just B at age by sex
    # M_at_age = modEM$M_at_age[modEM$M_at_age$Yr == max(modEM$M_at_age$Yr),]    # get M_at_age
    # Z_at_age = modEM$Z_at_age[modEM$Z_at_age$Yr == max(modEM$Z_at_age$Yr),]    # get Z_at_age
    # Z_at_age - M_at_age                                                    # subtract to get F_at_age (for 2015)
    # F_at_age = modEM$fatage[modEM$fatage$Yr == max(modEM$fatage$Yr),]
    # F_at_age = modEM$fatage[modEM$fatage$Yr == max(modEM$fatage$Yr) - 1,]
    # F_at_ageF = F_at_age[F_at_age$Sex==1, ]                                   # subset F_at_age by sex; Females
    # F_at_ageF = colSums(F_at_ageF[,-c(1:7)] )                                 # remove first labels so just F at age for Females for each fleet; Sum Fs
    # F_at_ageM = F_at_age[F_at_age$Sex==2, ]                                   # subset F_at_age by sex; Males
    # F_at_ageM = colSums(F_at_ageM[,-c(1:7)] )                                 # remove first labels so just F at age for Males for each fleet; Sum Fs
    # F_at_age = rbind(F_at_ageF, F_at_ageM)                                    # redefine F_at_age cumulative F for each Sex
    # 
    # # use if statement to ensure that F_report_basis matches Fendyr calculation
    # if(modEM$F_report_basis == "(F)/(Fmsy);_with_F=sum(full_Fs)"){
    #   Fendyr = modEM$derived_quants[paste0("F_",max(modEM$M_at_age$Yr)),"Value"] * modEM$derived_quants["Fstd_MSY","Value"]
    # }
    # 
    # Fprop = F_at_age / Fendyr         # divide F_at_age in 2015 to get age-specific proportion of F relative to F 
    
    
    Fprop = rbind(c(0.4885988, 0.4597670, 0.3600514, 0.2761254, 0.2255882, 0.2017680, 0.1932426, 0.1911232, 0.1903312, 0.1886617, 0.1855537, 
                    0.1811965, 0.1760202, 0.1704546, 0.1648404, 0.1594134, 0.1543187, 0.1496327, 0.1453845, 0.1415724, 0.1381764, 0.1351665, 
                    0.1325079, 0.1301654, 0.1281045, 0.1262932, 0.1247019, 0.1233043, 0.1220767, 0.1209983, 0.1200508, 0.1179860), 
                  c(0.4316876, 0.4939675, 0.3939772, 0.2936559, 0.2294996, 0.1966944, 0.1826377, 0.1772807, 0.1748025, 0.1725445, 0.1696375, 
                    0.1660356, 0.1619793, 0.1577488, 0.1535708, 0.1495992, 0.1459239, 0.1425869, 0.1395980, 0.1369467, 0.1346112, 0.1325642, 
                    0.1307765, 0.1292193, 0.1278654, 0.1266896, 0.1256695, 0.1247850, 0.1240184, 0.1233541, 0.1227786, 0.1217628))
    
    Fset_at_age = Fset*Fprop          # take Fprop and apply to new Fset
    ACL = sum(Fset_at_age * B_at_age) # Take new Fset_at_age and apply to predicted B_at_age next year to approximate ACL 
    
    # ACL = Fset*Btotal; ACL ####### THIS IS NOT ACCOUNTING FOR SELECTIVITY: SO IT IS BIASED WAY HIGH
    
    return(list(Fset = Fset, ACL = ACL))
  } # end HCR function
  
  
  ### ImplementHCR ###
  if(implement=="default"){
    implementHCR = function(hcr, tt, FRQ, modEM, OMdir, i, seed=430, MaxCatch=NA, ...){
      set.seed(seed*tt)
      modOM = SS_output(OMdir, forecast=F)
      
      #-------------------------------------------------------------------------------------------------------------
      # Implementation uncertainty + allocation
      #-------------------------------------------------------------------------------------------------------------
      
      ## Corrections for Max Catch ###
      #if max catch present
      if(!is.na(MaxCatch)) { hcr$ACL = ifelse(hcr$ACL > MaxCatch, MaxCatch, hcr$ACL) }
      
      # if ACL > 50% total biomass, limit catch
      if(hcr$ACL >= 0.5 * modOM$timeseries[modOM$timeseries$Yr==(tt-1),]$Bio_all) {
        
        c1=vector(length=FRQ)
        for(f in 1:FRQ){
          c1[f] = 0.5*((1-0.5)^(f-1))*modOM$timeseries[modOM$timeseries$Yr==tt,]$Bio_all
        } # end f loop
        
        hcr$ACL <- c1
        
      } # end if ACL > 50% total biomass
      
      
      # COMMERCIAL CATCH #
      ### calculate expected commercial ACL ###
      # 41.7 mt DW => 58 mt round weight
      comACL = hcr$ACL - 58
      
      ### commercial catch w implementation uncertainty!   ###
      # actualCatch = rlnorm(FRQ, -0.2722412, 0.3306523) * comACL
      actualCatch = rlnorm(FRQ, -0.6015450, 0.3306523) * comACL
      # actualCatch = ifelse(actualCatch > MaxCatch, 0, actualCatch)
      
      
      ### allocate commercial catch to area ###
      # F1 #
      GOMprop = rbeta(FRQ, 8.533997, 8.731176) # GOM proportion actualCatch
      F1catch = actualCatch * GOMprop
      F1catch = ifelse(F1catch<0, 0, F1catch)
      
      # F2 #
      Atlprop = 1-GOMprop                    # Atl proportion actualCatch
      F2catch = actualCatch * Atlprop
      F2catch = ifelse(F2catch<0, 0, F2catch)
      
      
      # RECREATIONAL AND DISCARDS #
      # F3 #
      #     estimate next year's EM forecasted population size
      #     parameters are based on a linear regression between EM observed biomass and F3 catch
      lr3 = lm(modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$`dead(B):_3` ~
                 modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$Bio_all)
      F3exp = (lr3$coefficients[1]) + ( (lr3$coefficients[2] )*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all )
      # F3catch = rep(as.numeric(F3exp), FRQ)
      # # F3exp = (-146.0739) + ((0.01690873)*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all)      # expected F3 catch
      # F3exp = (-1670.934) + ( (0.07053087 )*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all )      # expected F3 catch
      F3catch = F3exp + rnorm(FRQ,0,102.0899 / 5 )                     # actual F3 catch w implementation uncertainty; true sd too hgih
      # # note: chosing to not include uncertainty at this stage, because the data generating process will add appropriate uncertainty;
      #       included b/c more consistent with historical data
      
      F3catch = ifelse(F3catch<0, 0, F3catch)
      ###     NOTE: I am cheating and reducing SD by an order of magnitude; otherwise very crazy results
      
      
      # F4 #
      #     estimate next year's EM forecasted population size
      #     parameters are based on a linear regression between EM observed biomass and F4 catch
      # F4exp = (0.2286625) + ((5.37979e-06)*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all)     # expected F4 catch
      lr4 = lm(modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$`dead(N):_4` ~
                 modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$Bio_all)
      F4exp = (  lr4$coefficients[1] ) + ( ( lr4$coefficients[2] )*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all )     # expected F4 catch
      # F4catch = rep(as.numeric(F4exp), FRQ)
      # F4exp = (  0.1964266 ) + ((6.277744e-06)*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all)     # expected F4 catch
      F4catch = F4exp + rnorm(FRQ,0,0.04200714/2 )                         # actual F3 catch w implementation uncertainty; true sd too high
      # # note: considered chosing to not include uncertainty at this stage, because the data generating process will add appropriate uncertainty; 
      #       included b/c more consistent with historical data
      
      F4catch = ifelse(F4catch<0, 0, F4catch)
      
      
      
      #-------------------------------------------------------------------------------------------------------------
      # Calculate Nsamp for LFreqs
      #-------------------------------------------------------------------------------------------------------------
      # SCALE LFreq effNs
      #        comm effN relationship w/ commercial catch
      #        by scaling relationship between survey effN and commercial catch
      
      # NOTE: parameters estiamted via empirical relationships
      
      # Commercial Fleets #
      F1c = ifelse(F1catch==0, 1e-5, F1catch)
      NsampF1 = round( ( 10.72071 * log(F1c) ) + -36.72194 + rnorm(FRQ, 0, 14.86394 ) )
      NsampF1 = ifelse(NsampF1<0, 0, NsampF1)
      F2c = ifelse(F2catch==0, 1e-5, F2catch)
      NsampF2 = round( ( 2.196819 * log(F2c) ) + -7.636586 + rnorm(FRQ, 0, 2.99855) )
      NsampF2 = ifelse(NsampF2<0, 0, NsampF2)
      F3c = ifelse(F3catch==0, 1e-5, F3catch)
      NsampF3 = round( (  1.221945 * log(F3c)  ) + -3.150376 + rnorm(FRQ, 0, 1.907433) )
      NsampF3 = ifelse(NsampF3<0, 0, NsampF3)
      
      # Surveys #
      # S1 #
      #  based on empirically estimated linear relationship between log(Nsamp) and predicted biomass
      NsampF5 = round(exp( -0.7597465 + (4.564626e-05 * modEM$timeseries$Bio_all[ nrow(modEM$timeseries) ] ) + rnorm(FRQ, 0, 0.5243653) + 0.1546644))
      
      # S2 # 
      # sample from a truncated normal distribution (with bounds to restrict observations within realm of observed data)
      NsampF6 = round( rtnorm(FRQ, 8.074, 4.609146 , 0, 25) )
      
      
      #-------------------------------------------------------------------------------------------------------------
      # Save Results
      #-------------------------------------------------------------------------------------------------------------
      ### SAVE RESULTS ###
      
      # Create MSEResults$ACL_i (if it doesn't already exist)
      if(is.null(MSEResults[[paste0("ACL_",i)]]) == TRUE ){
        MSEResults[[paste0("ACL_",i)]] = 
          data.frame(Year=numeric(), ACL_from_HCR=numeric(), corrected_ACL=numeric(), Implemented_Catch=numeric(), F1Catch = numeric(), 
                     F2Catch=numeric(), F3Catch=numeric(), F4Catch=numeric(), HCR_Fset=numeric(), Estimated_FMSY=numeric())
      }
      
      # define endyr of EM assessed year
      endyr = tt-1
      
      # Save results in MSEResults tagged in the present iteration i
      MSEResults[[paste0("ACL_",i)]] <- rbind(MSEResults[[paste0("ACL_",i)]], 
                                              cbind(Year = endyr + c(1:FRQ), 
                                                    ACL_from_HCR = rep(hcr$ACL, FRQ), 
                                                    corrected_ACL = rep(comACL,5), 
                                                    Implemented_Catch = actualCatch, 
                                                    F1Catch = F1catch, 
                                                    F2Catch = F2catch, 
                                                    F3Catch = F3catch, 
                                                    F4Catch = F4catch, 
                                                    HCR_Fset = rep(hcr$Fset, FRQ),
                                                    Estimated_FMSY = rep(modEM$derived_quants["Fstd_MSY","Value"], FRQ) ) )
      
      assign("MSEResults", MSEResults, envir=globalenv())       # save MSEResults in global environment
      
      
      #-------------------------------------------------------------------------------------------------------------
      # Add new data to OM
      #-------------------------------------------------------------------------------------------------------------
      # Put future catches into OM
      
      OMdat = SS_readdat(file=file.path(OMdir,"SB.dat"), version="3.30") 
      newOMdat = OMdat
      endyr = tt-1
      for(y in (endyr+1):(endyr+FRQ)){
        
        # Update catches for each fleet
        for( f in levels(as.factor(newOMdat$catch$fleet)) ){
          newOMdat$catch[newOMdat$catch$year==y & newOMdat$catch$fleet==f, "catch"] =
            get(paste0("F", f, "catch"))[y-endyr]
        } # end fishing fleet f loop
        
        
        # update Lfreqs for each fleet/survey
        for(fs in levels(as.factor(newOMdat$lencomp$FltSvy)) ){
          newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Nsamp"] = get(paste0("NsampF",fs))[y-endyr]
          
          # IF Nsamp is zero or negative, set year = -year. 
          newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"] = 
            ifelse(newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Nsamp"]<=0, 
                   -1*newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"], 
                   newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"])
        } # end Lfreq fs loop
        
        
      } # end year loop
      
      # limit number of digits
      newOMdat$catch<-round(newOMdat$catch, digits=5)
      newOMdat$lencomp<-round(newOMdat$lencomp, digits=4)
      
      # Re-write OM data file with additional FRQ years of data. 
      SS_writedat(newOMdat, outfile=file.path(OMdir,"SB.dat"), version="3.30", overwrite=T)
      
      
      # return(MSEResults = MSEResults)
    } # End implementHCR function
  }
  if(implement=="MexRec"){
    implementHCR = function(hcr, tt, FRQ, modEM, OMdir, i, seed=430, MaxCatch=NA, ...){
      set.seed(seed*tt)
      modOM = SS_output(OMdir, forecast=F)
      
      #-------------------------------------------------------------------------------------------------------------
      # Implementation uncertainty + allocation
      #-------------------------------------------------------------------------------------------------------------
      
      ## Corrections for Max Catch ###
      #if max catch present
      if(!is.na(MaxCatch)) { hcr$ACL = ifelse(hcr$ACL > MaxCatch, MaxCatch, hcr$ACL) }
      
      # if ACL > 50% total biomass, limit catch
      if(hcr$ACL >= 0.5 * modOM$timeseries[modOM$timeseries$Yr==(tt-1),]$Bio_all) {
        
        c1=vector(length=FRQ)
        for(f in 1:FRQ){
          c1[f] = 0.5*((1-0.5)^(f-1))*modOM$timeseries[modOM$timeseries$Yr==tt,]$Bio_all
        } # end f loop
        
        hcr$ACL <- c1
        
      } # end if ACL > 50% total biomass
      
      
      # COMMERCIAL CATCH #
      ### calculate expected commercial ACL ###
      # 41.7 mt DW => 58 mt round weight
      comACL = hcr$ACL / 2
      
      ### commercial catch w implementation uncertainty!   ###
      # actualCatch = rlnorm(FRQ, -0.2722412, 0.3306523) * comACL
      actualCatch = rlnorm(FRQ, -0.6015450, 0.3306523) * comACL
      # actualCatch = ifelse(actualCatch > MaxCatch, 0, actualCatch)
      
      
      ### allocate commercial catch to area ###
      # F1 #
      GOMprop = rbeta(FRQ, 8.533997, 8.731176) # GOM proportion actualCatch
      F1catch = actualCatch * GOMprop
      F1catch = ifelse(F1catch<0, 0, F1catch)
      
      # F2 #
      Atlprop = 1-GOMprop                    # Atl proportion actualCatch
      F2catch = actualCatch * Atlprop
      F2catch = ifelse(F2catch<0, 0, F2catch)
      
      
      # RECREATIONAL AND DISCARDS #
      # F3 #
      # OLD WAY  for HiMexRec#
      
      #     estimate next year's EM forecasted population size
      #     parameters are based on a linear regression between EM observed biomass and F3 catch
      # lr3 = lm(modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$`dead(B):_3` ~
      #            modEM$timeseries[modEM$timeseries$Yr>1994 & modEM$timeseries$Yr<2016,]$Bio_all)
      # F3exp = (lr3$coefficients[1]) + ( (lr3$coefficients[2] )*modEM$timeseries[modEM$timeseries$Yr==tt-1,]$Bio_all )
      
      # NEW WAY / NEW IMPLEMENT HCR CODE # 
      F3exp <- hcr$ACL / 2
      F3catch = F3exp + rnorm(FRQ,0,102.0899 / 5 )                     # actual F3 catch w implementation uncertainty; true sd too hgih
      # # note: chosing to not include uncertainty at this stage, because the data generating process will add appropriate uncertainty;
      #       included b/c more consistent with historical data
      
      F3catch = ifelse(F3catch<0, 0, F3catch)
      ###     NOTE: I am cheating and reducing SD by an order of magnitude; otherwise very crazy results
      
      
      # F4 #
      #     estimate next year's EM forecasted population size
      #     parameters are based on a linear regression between EM observed biomass and F4 catch
      # F4exp = (0.2286625) + ((5.37979e-06)*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all)     # expected F4 catch
      lr4 = lm(modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$`dead(N):_4` ~
                 modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$Bio_all)
      F4exp = (  lr4$coefficients[1] ) + ( ( lr4$coefficients[2] )*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all )     # expected F4 catch
      # F4catch = rep(as.numeric(F4exp), FRQ)
      # F4exp = (  0.1964266 ) + ((6.277744e-06)*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all)     # expected F4 catch
      F4catch = F4exp + rnorm(FRQ,0,0.04200714/2 )                         # actual F3 catch w implementation uncertainty; true sd too high
      # # note: considered chosing to not include uncertainty at this stage, because the data generating process will add appropriate uncertainty; 
      #       included b/c more consistent with historical data
      
      F4catch = ifelse(F4catch<0, 0, F4catch)
      
      
      
      
      #-------------------------------------------------------------------------------------------------------------
      # Calculate Nsamp for LFreqs
      #-------------------------------------------------------------------------------------------------------------
      # SCALE LFreq effNs
      #        comm effN relationship w/ commercial catch
      #        by scaling relationship between survey effN and commercial catch
      
      # NOTE: parameters estiamted via empirical relationships
      
      # Commercial Fleets #
      F1c = ifelse(F1catch==0, 1e-5, F1catch)
      NsampF1 = round( ( 10.72071 * log(F1c) ) + -36.72194 + rnorm(FRQ, 0, 14.86394 ) )
      NsampF1 = ifelse(NsampF1<0, 0, NsampF1)
      F2c = ifelse(F2catch==0, 1e-5, F2catch)
      NsampF2 = round( ( 2.196819 * log(F2c) ) + -7.636586 + rnorm(FRQ, 0, 2.99855) )
      NsampF2 = ifelse(NsampF2<0, 0, NsampF2)
      F3c = ifelse(F3catch==0, 1e-5, F3catch)
      NsampF3 = round( (  1.221945 * log(F3c)  ) + -3.150376 + rnorm(FRQ, 0, 1.907433) )
      NsampF3 = ifelse(NsampF3<0, 0, NsampF3)
      
      # Surveys #
      # S1 #
      #  based on empirically estimated linear relationship between log(Nsamp) and predicted biomass
      NsampF5 = round(exp( -0.7597465 + (4.564626e-05 * modEM$timeseries$Bio_all[ nrow(modEM$timeseries) ] ) + rnorm(FRQ, 0, 0.5243653) + 0.1546644))
      
      # S2 # 
      # sample from a truncated normal distribution (with bounds to restrict observations within realm of observed data)
      NsampF6 = round( rtnorm(FRQ, 8.074, 4.609146 , 0, 25) )
      
      
      #-------------------------------------------------------------------------------------------------------------
      # Save Results
      #-------------------------------------------------------------------------------------------------------------
      ### SAVE RESULTS ###
      
      # Create MSEResults$ACL_i (if it doesn't already exist)
      if(is.null(MSEResults[[paste0("ACL_",i)]]) == TRUE ){
        MSEResults[[paste0("ACL_",i)]] = 
          data.frame(Year=numeric(), ACL_from_HCR=numeric(), corrected_ACL=numeric(), Implemented_Catch=numeric(), F1Catch = numeric(), 
                     F2Catch=numeric(), F3Catch=numeric(), F4Catch=numeric(), HCR_Fset=numeric(), Estimated_FMSY=numeric())
      }
      
      # define endyr of EM assessed year
      endyr = tt-1
      
      # Save results in MSEResults tagged in the present iteration i
      MSEResults[[paste0("ACL_",i)]] <- rbind(MSEResults[[paste0("ACL_",i)]], 
                                              cbind(Year = endyr + c(1:FRQ), 
                                                    ACL_from_HCR = rep(hcr$ACL, FRQ), 
                                                    corrected_ACL = rep(comACL,5), 
                                                    Implemented_Catch = actualCatch, 
                                                    F1Catch = F1catch, 
                                                    F2Catch = F2catch, 
                                                    F3Catch = F3catch, 
                                                    F4Catch = F4catch, 
                                                    HCR_Fset = rep(hcr$Fset, FRQ),
                                                    Estimated_FMSY = rep(modEM$derived_quants["Fstd_MSY","Value"], FRQ) ) )
      
      assign("MSEResults", MSEResults, envir=globalenv())       # save MSEResults in global environment
      
      
      #-------------------------------------------------------------------------------------------------------------
      # Add new data to OM
      #-------------------------------------------------------------------------------------------------------------
      # Put future catches into OM
      
      OMdat = SS_readdat(file=file.path(OMdir,"SB.dat"), version="3.30") 
      newOMdat = OMdat
      endyr = tt-1
      for(y in (endyr+1):(endyr+FRQ)){
        
        # Update catches for each fleet
        for( f in levels(as.factor(newOMdat$catch$fleet)) ){
          newOMdat$catch[newOMdat$catch$year==y & newOMdat$catch$fleet==f, "catch"] =
            get(paste0("F", f, "catch"))[y-endyr]
        } # end fishing fleet f loop
        
        
        # update Lfreqs for each fleet/survey
        for(fs in levels(as.factor(newOMdat$lencomp$FltSvy)) ){
          newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Nsamp"] = get(paste0("NsampF",fs))[y-endyr]
          
          # IF Nsamp is zero or negative, set year = -year. 
          newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"] = 
            ifelse(newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Nsamp"]<=0, 
                   -1*newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"], 
                   newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"])
        } # end Lfreq fs loop
        
        
      } # end year loop
      
      # limit number of digits
      newOMdat$catch<-round(newOMdat$catch, digits=5)
      newOMdat$lencomp<-round(newOMdat$lencomp, digits=4)
      
      # Re-write OM data file with additional FRQ years of data. 
      SS_writedat(newOMdat, outfile=file.path(OMdir,"SB.dat"), version="3.30", overwrite=T)
      
      
      # return(MSEResults = MSEResults)
    } # End implementHCR function
  }
  if(implement=="LoMexRec"){
    implementHCR = function(hcr, tt, FRQ, modEM, OMdir, i, seed=430, MaxCatch=NA, ...){
      set.seed(seed*tt)
      modOM = SS_output(OMdir, forecast=FALSE)
      
      #-------------------------------------------------------------------------------------------------------------
      # Implementation uncertainty + allocation
      #-------------------------------------------------------------------------------------------------------------
      
      ## Corrections for Max Catch ###
      #if max catch present
      if(!is.na(MaxCatch)) { hcr$ACL = ifelse(hcr$ACL > MaxCatch, MaxCatch, hcr$ACL) }
      
      # if ACL > 50% total biomass, limit catch
      if(hcr$ACL >= 0.5 * modOM$timeseries[modOM$timeseries$Yr==(tt-1),]$Bio_all) {
        
        c1=vector(length=FRQ)
        for(f in 1:FRQ){
          c1[f] = 0.5*((1-0.5)^(f-1))*modOM$timeseries[modOM$timeseries$Yr==tt,]$Bio_all
        } # end f loop
        
        hcr$ACL <- c1
        
      } # end if ACL > 50% total biomass
      
      
      # COMMERCIAL CATCH #
      ### calculate expected commercial ACL ###
      # 41.7 mt DW => 58 mt round weight
      comACL = hcr$ACL - 58
      comACL <- ifelse(comACL<0, 0, comACL)
      
      ### commercial catch w implementation uncertainty!   ###
      # actualCatch = rlnorm(FRQ, -0.2722412, 0.3306523) * comACL
      actualCatch = rlnorm(FRQ, -0.6015450, 0.3306523) * comACL
      # actualCatch = ifelse(actualCatch > MaxCatch, 0, actualCatch)
      
      
      ### allocate commercial catch to area ###
      # F1 #
      GOMprop = rbeta(FRQ, 8.533997, 8.731176) # GOM proportion actualCatch
      F1catch = actualCatch * GOMprop
      F1catch = ifelse(F1catch<0, 0, F1catch)
      
      # F2 #
      Atlprop = 1-GOMprop                    # Atl proportion actualCatch
      F2catch = actualCatch * Atlprop
      F2catch = ifelse(F2catch<0, 0, F2catch)
      
      
      # RECREATIONAL AND DISCARDS #
      # F3 #
      #     estimate next year's EM forecasted population size
      #     parameters are based on a linear regression between EM observed biomass and F3 catch
      # lr3 = lm(modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$`dead(B):_3` ~
      #            modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$Bio_all)
      # F3exp = (lr3$coefficients[1]) + ( (lr3$coefficients[2] )*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all )
      # # F3catch = rep(as.numeric(F3exp), FRQ)
      # # # F3exp = (-146.0739) + ((0.01690873)*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all)      # expected F3 catch
      # # F3exp = (-1670.934) + ( (0.07053087 )*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all )      # expected F3 catch
      # F3catch = F3exp + rnorm(FRQ,0,102.0899 / 5 )                     # actual F3 catch w implementation uncertainty; true sd too hgih
      # # note: chosing to not include uncertainty at this stage, because the data generating process will add appropriate uncertainty;
      #       included b/c more consistent with historical data
      F3catch = rnorm(FRQ, 109, 17.7)
      F3catch = ifelse(F3catch<0, 0, F3catch)
      ###     NOTE: I am cheating and reducing SD by an order of magnitude; otherwise very crazy results
      
      
      # F4 #
      #     estimate next year's EM forecasted population size
      #     parameters are based on a linear regression between EM observed biomass and F4 catch
      # F4exp = (0.2286625) + ((5.37979e-06)*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all)     # expected F4 catch
      lr4 = lm(modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$`dead(N):_4` ~
                 modOM$timeseries[modOM$timeseries$Yr>1994 & modOM$timeseries$Yr<2016,]$Bio_all)
      F4exp = (  lr4$coefficients[1] ) + ( ( lr4$coefficients[2] )*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all )     # expected F4 catch
      # F4catch = rep(as.numeric(F4exp), FRQ)
      # F4exp = (  0.1964266 ) + ((6.277744e-06)*modOM$timeseries[modOM$timeseries$Yr==tt-1,]$Bio_all)     # expected F4 catch
      F4catch = F4exp + rnorm(FRQ,0,0.04200714/2 )                         # actual F3 catch w implementation uncertainty; true sd too high
      # # note: considered chosing to not include uncertainty at this stage, because the data generating process will add appropriate uncertainty; 
      #       included b/c more consistent with historical data
      
      F4catch = ifelse(F4catch<0, 0, F4catch)
      
      
      
      #-------------------------------------------------------------------------------------------------------------
      # Calculate Nsamp for LFreqs
      #-------------------------------------------------------------------------------------------------------------
      # SCALE LFreq effNs
      #        comm effN relationship w/ commercial catch
      #        by scaling relationship between survey effN and commercial catch
      
      # NOTE: parameters estiamted via empirical relationships
      
      # Commercial Fleets #
      F1c = ifelse(F1catch==0, 1e-5, F1catch)
      NsampF1 = round( ( 10.72071 * log(F1c) ) + -36.72194 + rnorm(FRQ, 0, 14.86394 ) )
      NsampF1 = ifelse(NsampF1<0, 0, NsampF1)
      F2c = ifelse(F2catch==0, 1e-5, F2catch)
      NsampF2 = round( ( 2.196819 * log(F2c) ) + -7.636586 + rnorm(FRQ, 0, 2.99855) )
      NsampF2 = ifelse(NsampF2<0, 0, NsampF2)
      F3c = ifelse(F3catch==0, 1e-5, F3catch)
      NsampF3 = round( (  1.221945 * log(F3c)  ) + -3.150376 + rnorm(FRQ, 0, 1.907433) )
      NsampF3 = ifelse(NsampF3<0, 0, NsampF3)
      
      # Surveys #
      # S1 #
      #  based on empirically estimated linear relationship between log(Nsamp) and predicted biomass
      NsampF5 = round(exp( -0.7597465 + (4.564626e-05 * modEM$timeseries$Bio_all[ nrow(modEM$timeseries) ] ) + rnorm(FRQ, 0, 0.5243653) + 0.1546644))
      
      # S2 # 
      # sample from a truncated normal distribution (with bounds to restrict observations within realm of observed data)
      NsampF6 = round( rtnorm(FRQ, 8.074, 4.609146 , 0, 25) )
      
      
      #-------------------------------------------------------------------------------------------------------------
      # Save Results
      #-------------------------------------------------------------------------------------------------------------
      ### SAVE RESULTS ###
      
      # Create MSEResults$ACL_i (if it doesn't already exist)
      if(is.null(MSEResults[[paste0("ACL_",i)]]) == TRUE ){
        MSEResults[[paste0("ACL_",i)]] = 
          data.frame(Year=numeric(), ACL_from_HCR=numeric(), corrected_ACL=numeric(), Implemented_Catch=numeric(), F1Catch = numeric(), 
                     F2Catch=numeric(), F3Catch=numeric(), F4Catch=numeric(), HCR_Fset=numeric(), Estimated_FMSY=numeric())
      }
      
      # define endyr of EM assessed year
      endyr = tt-1
      
      # Save results in MSEResults tagged in the present iteration i
      MSEResults[[paste0("ACL_",i)]] <- rbind(MSEResults[[paste0("ACL_",i)]], 
                                              cbind(Year = endyr + c(1:FRQ), 
                                                    ACL_from_HCR = rep(hcr$ACL, FRQ), 
                                                    corrected_ACL = rep(comACL,5), 
                                                    Implemented_Catch = actualCatch, 
                                                    F1Catch = F1catch, 
                                                    F2Catch = F2catch, 
                                                    F3Catch = F3catch, 
                                                    F4Catch = F4catch, 
                                                    HCR_Fset = rep(hcr$Fset, FRQ),
                                                    Estimated_FMSY = rep(modEM$derived_quants["Fstd_MSY","Value"], FRQ) ) )
      
      assign("MSEResults", MSEResults, envir=globalenv())       # save MSEResults in global environment
      
      
      #-------------------------------------------------------------------------------------------------------------
      # Add new data to OM
      #-------------------------------------------------------------------------------------------------------------
      # Put future catches into OM
      
      OMdat = SS_readdat(file=file.path(OMdir,"SB.dat"), version="3.30") 
      newOMdat = OMdat
      endyr = tt-1
      for(y in (endyr+1):(endyr+FRQ)){
        
        # Update catches for each fleet
        for( f in levels(as.factor(newOMdat$catch$fleet)) ){
          newOMdat$catch[newOMdat$catch$year==y & newOMdat$catch$fleet==f, "catch"] =
            get(paste0("F", f, "catch"))[y-endyr]
        } # end fishing fleet f loop
        
        
        # update Lfreqs for each fleet/survey
        for(fs in levels(as.factor(newOMdat$lencomp$FltSvy)) ){
          newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Nsamp"] = get(paste0("NsampF",fs))[y-endyr]
          
          # IF Nsamp is zero or negative, set year = -year. 
          newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"] = 
            ifelse(newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Nsamp"]<=0, 
                   -1*newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"], 
                   newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"])
          
          # IF Nsamp is > 1000, set year = -year. 
          newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"] = 
            ifelse(newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Nsamp"]>1000, 
                   -1*newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"], 
                   newOMdat$lencomp[newOMdat$lencomp$Yr==y & newOMdat$lencomp$FltSvy==fs, "Yr"])
        } # end Lfreq fs loop
        
        
      } # end year loop
      
      # limit number of digits
      newOMdat$catch<-round(newOMdat$catch, digits=5)
      newOMdat$lencomp<-round(newOMdat$lencomp, digits=4)
      
      
      # Re-write OM data file with additional FRQ years of data. 
      SS_writedat(newOMdat, outfile=file.path(OMdir,"SB.dat"), version="3.30", overwrite=T)
      
      
      # return(MSEResults = MSEResults)
    } # End implementHCR function
  }
  
  
  ### EditStarterFile ###
  EditStarterFile = function(OMdir, seed, tt){
    starter = SS_readstarter(file.path(OMdir, "starter.ss") )
    starter$seed = seed * tt
    SS_writestarter(starter, dir=OMdir, overwrite=T)
  }
  
  
  # copy files to *save results* folder; maybe save relevant results in .Rdata form
  
  
  #convert data files to starter version. 
  file.copy(from=file.path(OMdir,"SB_START.dat"),to=file.path(OMdir,"SB.dat"), overwrite=T)
  file.copy(from=file.path(EMdir,"SB_START.dat"),to=file.path(EMdir,"SB.dat"), overwrite=T)
  
  
  # required libraries
  library(r4ss)
  library(data.table)
  library(msm)
  
  
  #-------------------------------------------------------------------------------------------------------------
  # Housekeeping
  #-------------------------------------------------------------------------------------------------------------
  
  set.seed(seed)
  
  MSEResults <<- list()     # empty list to store MSE results
  # SSgetMCMC(dir="D:\\MSE_Run\\RUN_MCMC\\sandbar_330_OM_BH_MCMC", writecsv=F)
  mcmc = SSgetMCMC(dir=MCMCdir, writecsv=FALSE) # get mcmc file
  OMdat = SS_readdat(file=file.path(OMdir,"SB.dat"), version="3.30")
  # modEM = SS_output(EMdir)
  
  StartYear = OMdat$styr
  EndYear = OMdat$endyr
  StartSimYear = EndYear - (simYrs-1)
  
  #get niters as sequence
  if(length(niters)<=1){
    ni = ifelse(is.na(niters), 1000, niters)
    niters = 1:ni
  }
  
  for(i in niters) {
    # i=1
    
    if(BuildPar==T){
      #-------------------------------------------------------------------------------------------------------------
      # Build Par File
      #-------------------------------------------------------------------------------------------------------------
      BuildParFile(MCMCdir,mcmc,i,OMdirs=list(OMdir) )
    } # End if BuildPar==T
    
    
    for(tt in seq(StartSimYear,(EndYear+1),by=FRQ) ){ # maybe by FRQ!
      # for(tt in seq(StartSimYear,2041,by=FRQ)){ # maybe by FRQ!
      # timet <<- tt
      
      #-------------------------------------------------------------------------------------------------------------
      # RUN OM -nohess (BOOTSTRAP  - DATA GENERATING PROCESS)
      #-------------------------------------------------------------------------------------------------------------
      EditStarterFile(OMdir, seed, tt)
      RunOM_NoHess(OMdir)
      
      
      #-------------------------------------------------------------------------------------------------------------
      # BUILD / UPDATE EM DAT FILE
      #-------------------------------------------------------------------------------------------------------------
      if(tt==StartSimYear){             # run a separate file to include historical observation error; and update OM
        BuildOM(OMdir, tt)
        BuildEM(EMdir, OMdir, tt)
      } #end if tt==1
      
      if(tt>StartSimYear){              # this is to include future observation error
        UpdateOM(OMdir, tt, FRQ)
        UpdateEM(EMdir, OMdir, FRQ, tt)
      } #end if tt>1
      
      
      #-------------------------------------------------------------------------------------------------------------
      # RUN EM
      #-------------------------------------------------------------------------------------------------------------
      RunEM(EMdir)
      # Copy control.ss_new to SB.ctl for next run -- to help starting values for next run. 
      # file.copy(from=paste0(EMdir,"\\control.ss_new"),to=paste0(EMdir,"\\SB.ctl"), overwrite=T)
      
      
      
      #-------------------------------------------------------------------------------------------------------------
      # FIT HCR
      #-------------------------------------------------------------------------------------------------------------
      modEM <<- SS_output(dir=EMdir)
      
      if(tt < EndYear){                                                     # Only do HCR if tt < EndYear.
        hcr = HCR(Btarg, Bconst=1, Ftarg, Fconst, a, b, modEM, tt, Fprop)
        
        #-------------------------------------------------------------------------------------------------------------
        # UPDATE OM TO APPLY HCR
        #-------------------------------------------------------------------------------------------------------------
        implementHCR(hcr, tt, FRQ, modEM, OMdir, i, MaxCatch=MaxCatch)
        # MSEResults <<- imphcr$MSEResults
        
      } # End HCR and implementHCR
      
      
    } # end tt loop ; time loop
    
    # save files to StoreResults
    # file.copy(from=paste0(OMdir,"\\data.ss_new"),to=paste0(StoreResults,"\\OMdata_",i,".ss_new"))
    file.copy(from=file.path(OMdir,"Report.sso"),to=file.path(StoreResults,paste0("OMReport_",i,".sso")), overwrite=T)
    # file.copy(from=paste0(EMdir,"\\data.ss_new"),to=paste0(StoreResults,"\\EMdata_",i,".ss_new"))
    file.copy(from=file.path(EMdir,"Report.sso"),to=file.path(StoreResults,paste0("EMReport_",i,".sso")), overwrite=T)
    # OM = SS_output(OMdir)
    # EM = SS_output(EMdir)
    # MSEResults[[paste0("OM_",i)]] <- OM
    # MSEResults[[paste0("EM_",i)]] <- EM
    assign("MSEResults",MSEResults, envir=globalenv())
    # Save MSEResults data in store results
    save(MSEResults, file=file.path(StoreResults,"MSEResults.RData"))
    
    #convert data files to starter version. 
    file.copy(from=file.path(OMdir,"SB_START.dat"),to=file.path(OMdir,"SB.dat"), overwrite=T)
    file.copy(from=file.path(EMdir,"SB_START.dat"),to=file.path(EMdir,"SB.dat"), overwrite=T)
    
    
  }  # end for i:nrow(mcmc); iteration loop
  
  return(print("End MSE_func"))
} # end MSE_func

foreach(h=names(list.hcr)) %dopar% {
  # GET MSE_func. #--> you need to put functions and packages within loop. 
  MSE_func(MCMCdir, OMdir=list.hcr[[h]]$OMdir, EMdir=list.hcr[[h]]$EMdir, 
           StoreResults=list.hcr[[h]]$StoreResults, FRQ=5,
           Btarg="BMSY", Bconst=1, Ftarg=list.hcr[[h]]$Ftarg, 
           Fconst=list.hcr[[h]]$Fconst, a=list.hcr[[h]]$a, b=list.hcr[[h]]$b, 
           sourcedir=sourcedir, 
           SR="LFSR", implement="MexRec", 
           niters=seq(from=233, to=245, by=2) )
  # niters=seq(from=99, to=101, by=2) )
}


stopCluster(c1)

# h=1
# OMdir=list.hcr[[h]]$OMdir; EMdir=list.hcr[[h]]$EMdir; StoreResults=list.hcr[[h]]$StoreResults; FRQ=5;
# Btarg="BMSY"; Bconst=1; Ftarg=list.hcr[[h]]$Ftarg; Fconst=list.hcr[[h]]$Fconst; a=list.hcr[[h]]$a; b=list.hcr[[h]]$b;
# sourcedir=sourcedir; SR="BH"; simYrs=100; seed=430


