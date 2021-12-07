#!/bin/bash


cd /afs/cern.ch/work/j/jlangfor/postdoc/hee/Dec21/CMSSW_10_6_8/src/egm_tnp_analysis
eval `scramv1 runtime -sh`


#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016pre.py --flag trigger --checkBins
#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016pre.py --flag trigger --createBins
#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016pre.py --flag trigger --createHists
#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016pre.py --flag trigger --doFit

#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016pre.py --flag trigger --doFit --mcSig --altSig
#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016pre.py --flag trigger --doFit --altSig
#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016pre.py --flag trigger --doFit --altBkg

#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016pre.py --flag trigger --sumUp



#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016post.py --flag trigger --checkBins
#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016post.py --flag trigger --createBins
#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016post.py --flag trigger --createHists
#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016post.py --flag trigger --doFit

#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016post.py --flag trigger --doFit --mcSig --altSig
#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016post.py --flag trigger --doFit --altSig
#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016post.py --flag trigger --doFit --altBkg

#python tnpEGM_fitter.py etc/config/settings_jonnotrigger_UL2016post.py --flag trigger --sumUp



python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --checkBins
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --createBins
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --createHists
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --doFit

python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --doFit --mcSig --altSig
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --doFit --altSig
python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --doFit --altBkg

python tnpEGM_fitter.py etc/config/settings_edtrigger_UL2017.py --flag trigger --sumUp


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
