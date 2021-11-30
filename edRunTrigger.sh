#!/bin/bash


cd /afs/cern.ch/work/e/escott/private/HeeAnalysis/TriggerStuff/CMSSW_10_6_8/src/egm_tnp_analysis
eval `scramv1 runtime -sh`


python tnpEGM_fitter.py etc/config/settings_edtrigger_RR2016.py --flag trigger --checkBins
python tnpEGM_fitter.py etc/config/settings_edtrigger_RR2016.py --flag trigger --createBins
python tnpEGM_fitter.py etc/config/settings_edtrigger_RR2016.py --flag trigger --createHists
python tnpEGM_fitter.py etc/config/settings_edtrigger_RR2016.py --flag trigger --doFit

python tnpEGM_fitter.py etc/config/settings_edtrigger_RR2016.py --flag trigger --doFit --mcSig --altSig
python tnpEGM_fitter.py etc/config/settings_edtrigger_RR2016.py --flag trigger --doFit --altSig
python tnpEGM_fitter.py etc/config/settings_edtrigger_RR2016.py --flag trigger --doFit --altBkg

python tnpEGM_fitter.py etc/config/settings_edtrigger_RR2016.py --flag trigger --sumUp


#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --checkBins
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --createBins
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --createHists
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --doFit

#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --doFit --mcSig --altSig
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --doFit --altSig
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --doFit --altBkg

#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --sumUp


#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2018.py --flag trigger --checkBins
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2018.py --flag trigger --createBins
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2018.py --flag trigger --createHists
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2018.py --flag trigger --doFit
#
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2018.py --flag trigger --doFit --mcSig --altSig
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2018.py --flag trigger --doFit --altSig
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2018.py --flag trigger --doFit --altBkg
#
#python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2018.py --flag trigger --sumUp
