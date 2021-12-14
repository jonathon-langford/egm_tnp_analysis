import libPython.EGammaID_scaleFactors as egm_sf

ptBins  = [(25.0, 50.0), (50.0, 100.0), (100.0, 200.0), (200.0, 500)]
etaBins = [(-2.5, -2.0), (-2.0, -1.566), (-1.566, -1.444), (-1.444, -0.8), (-0.8, 0.0), (0.0, 0.8), (0.8, 1.444), (1.444, 1.566), (1.566, 2.0), (2.0, 2.5)]

year = "UL2016post"
blank = "            "

def printEffList(effList,leg="1",mode="data"):
  for iBin, ptBin in enumerate(ptBins):
    print "%s## pT %.0f-%.0f"%(blank,ptBin[0],ptBin[1])
    if iBin == 0:
      effStr = "%seffLeg%s_%s = np.array( ["%(blank,leg,mode)
      uncStr = "%suncLeg%s_%s = np.array( ["%(blank,leg,mode)
    else:
      effStr = "%seffLeg%s_%s = np.array( effLeg%s_%s, ["%(blank,leg,mode,leg,mode)
      uncStr = "%suncLeg%s_%s = np.array( uncLeg%s_%s, ["%(blank,leg,mode,leg,mode)

    for etaBin in etaBins:
      if mode == "data":
        eff = effList[ptBin][etaBin].effData
        unc = effList[ptBin][etaBin].systEffData
      else:
        eff = effList[ptBin][etaBin].effMC
        unc = effList[ptBin][etaBin].systEffMC

      effStr += "%.3f, "%eff
      uncStr += "%.3f, "%unc

    if iBin == 0:
      effStr = effStr[:-2] + "] )"
      uncStr = uncStr[:-2] + "] )"
    else:
      effStr = effStr[:-2] + "] ] )"
      uncStr = uncStr[:-2] + "] ] )"

    print effStr
    print uncStr
  print ""

    
for mode in ['data','MC']:
  for leg in ['1','2']:
    filein = "./results/%s/pass1/trigger_leg%s/egammaEffi.txt"%(year,leg)
    effList = egm_sf.extractEGM_SFs(filein).effList
    printEffList(effList,leg,mode)
