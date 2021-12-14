#!/bin/bash


cd /afs/cern.ch/work/j/jlangfor/postdoc/hee/Dec21/CMSSW_10_6_8/src/egm_tnp_analysis
eval `scramv1 runtime -sh`

python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg1 --checkBins
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg1 --createBins
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg1 --createHists
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg1 --doFit

python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg1 --doFit --mcSig --altSig
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg1 --doFit --altSig
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg1 --doFit --altBkg

python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg1 --sumUp


python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg2 --checkBins
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg2 --createBins
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg2 --createHists
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg2 --doFit

python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg2 --doFit --mcSig --altSig
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg2 --doFit --altSig
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg2 --doFit --altBkg

python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger_leg2 --sumUp

