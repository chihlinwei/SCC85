library(raster)
epc <- brick("G:/CIMP5/Raster/epcBottom/epcBottom_Omon_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")
o2 <- brick("G:/CIMP5/Raster/o2Bottom/o2Bottom_Oyr_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")
ph <- brick("G:/CIMP5/Raster/phBottom/phBottom_Oyr_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")
thetao <- brick("G:/CIMP5/Raster/thetaoBottom/thetaoBottom_Omon_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")
arag <- brick("G:/CIMP5/Raster/aragBottom/aragBottom_Oyr_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")
calc <- brick("G:/CIMP5/Raster/calcBottom/calcBottom_Oyr_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")
co3 <- brick("G:/CIMP5/Raster/co3Bottom/co3Bottom_Oyr_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")
co3satarag <- brick("G:/CIMP5/Raster/co3sataragBottom/co3sataragBottom_Oyr_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")
co3satcalc <- brick("G:/CIMP5/Raster/co3satcalcBottom/co3satcalcBottom_Oyr_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")
aragsat <- brick("G:/CIMP5/Raster/aragsatBottom/aragsatBottom_Oyr_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")
calcsat <- brick("G:/CIMP5/Raster/calcsatBottom/calcsatBottom_Oyr_GFDL-ESM2G_IPSL-CM5A-MR_MPI-ESM-MR_rcp85_r1i1p1.grd")

cimp5_1951_2000_av <- brick(subset(epc, 1), subset(o2, 1), subset(ph, 1), subset(thetao, 1),
                            subset(arag, 1), subset(calc, 1), subset(co3, 1), subset(co3satarag, 1), subset(co3satcalc, 1),
                            subset(aragsat, 1), subset(calcsat, 1))
save(cimp5_1951_2000_av, file="data/cimp5_1951_2000_av.rda")
cimp5_2041_2060_av <- brick(subset(epc, 2), subset(o2, 2), subset(ph, 2), subset(thetao, 2),
                            subset(arag, 2), subset(calc, 2), subset(co3, 2), subset(co3satarag, 2), subset(co3satcalc, 2),
                            subset(aragsat, 2), subset(calcsat, 2))
save(cimp5_2041_2060_av, file="data/cimp5_2041_2060_av.rda")
cimp5_2081_2100_av <- brick(subset(epc, 3), subset(o2, 3), subset(ph, 3), subset(thetao, 3),
                            subset(arag, 3), subset(calc, 3), subset(co3, 3), subset(co3satarag, 3), subset(co3satcalc, 3),
                            subset(aragsat, 3), subset(calcsat, 3))
save(cimp5_2081_2100_av, file="data/cimp5_2081_2100_av.rda")

cimp5_1951_2000_cv <- brick(subset(epc, 4), subset(o2, 4), subset(ph, 4), subset(thetao, 4),
                            subset(arag, 4), subset(calc, 4), subset(co3, 4), subset(co3satarag, 4), subset(co3satcalc, 4),
                            subset(aragsat, 4), subset(calcsat, 4))
save(cimp5_1951_2000_cv, file="data/cimp5_1951_2000_cv.rda")
cimp5_2041_2060_cv <- brick(subset(epc, 5), subset(o2, 5), subset(ph, 5), subset(thetao, 5),
                            subset(arag, 5), subset(calc, 5), subset(co3, 5), subset(co3satarag, 5), subset(co3satcalc, 5),
                            subset(aragsat, 5), subset(calcsat, 5))
save(cimp5_2041_2060_cv, file="data/cimp5_2041_2060_cv.rda")
cimp5_2081_2100_cv <- brick(subset(epc, 6), subset(o2, 6), subset(ph, 6), subset(thetao, 6),
                            subset(arag, 6), subset(calc, 6), subset(co3, 6), subset(co3satarag, 6), subset(co3satcalc, 6),
                            subset(aragsat, 6), subset(calcsat, 6))
save(cimp5_2081_2100_cv, file="data/cimp5_2081_2100_cv.rda")

cimp5_1951_2000_sd <- brick(subset(epc, 7), subset(o2, 7), subset(ph, 7), subset(thetao, 7),
                            subset(arag, 7), subset(calc, 7), subset(co3, 7), subset(co3satarag, 7), subset(co3satcalc, 7),
                            subset(aragsat, 7), subset(calcsat, 7))
save(cimp5_1951_2000_sd, file="data/cimp5_1951_2000_sd.rda")
cimp5_2041_2060_sd <- brick(subset(epc, 8), subset(o2, 8), subset(ph, 8), subset(thetao, 8),
                            subset(arag, 8), subset(calc, 8), subset(co3, 8), subset(co3satarag, 8), subset(co3satcalc, 8),
                            subset(aragsat, 8), subset(calcsat, 8))
save(cimp5_2041_2060_sd, file="data/cimp5_2041_2060_sd.rda")
cimp5_2081_2100_sd <- brick(subset(epc, 9), subset(o2, 9), subset(ph, 9), subset(thetao, 9),
                            subset(arag, 9), subset(calc, 9), subset(co3, 9), subset(co3satarag, 9), subset(co3satcalc, 9),
                            subset(aragsat, 9), subset(calcsat, 9))
save(cimp5_2081_2100_sd, file="data/cimp5_2081_2100_sd.rda")

cimp5_1951_2000_ds <- brick(subset(epc, 10), subset(o2, 10), subset(ph, 10), subset(thetao, 10),
                            subset(arag, 10), subset(calc, 10), subset(co3, 10), subset(co3satarag, 10), subset(co3satcalc, 10),
                            subset(aragsat, 10), subset(calcsat, 10))
#save(cimp5_1951_2000_ds, file="data/cimp5_1951_2000_ds.rda")
#cimp5_2041_2060_ds <- brick(subset(epc, 11), subset(o2, 11), subset(ph, 11), subset(thetao, 11),
#                            subset(arag, 11), subset(calc, 11), subset(co3, 11), subset(co3satarag, 11), subset(co3satcalc, 11),
#                            subset(aragsat, 11), subset(calcsat, 11))
#save(cimp5_2041_2060_ds, file="data/cimp5_2041_2060_ds.rda")
#cimp5_2081_2100_ds <- brick(subset(epc, 12), subset(o2, 12), subset(ph, 12), subset(thetao, 12),
#                            subset(arag, 12), subset(calc, 12), subset(co3, 12), subset(co3satarag, 12), subset(co3satcalc, 12),
#                            subset(aragsat, 12), subset(calcsat, 12))
#save(cimp5_2081_2100_ds, file="data/cimp5_2081_2100_ds.rda")

cimp5_2041_2060_ch <- brick(subset(epc, 13), subset(o2, 13), subset(ph, 13), subset(thetao, 13),
                            subset(arag, 13), subset(calc, 13), subset(co3, 13), subset(co3satarag, 13), subset(co3satcalc, 13),
                            subset(aragsat, 13), subset(calcsat, 13))
save(cimp5_2041_2060_ch, file="data/cimp5_2041_2060_ch.rda")
cimp5_2081_2100_ch <- brick(subset(epc, 14), subset(o2, 14), subset(ph, 14), subset(thetao, 14),
                            subset(arag, 14), subset(calc, 14), subset(co3, 14), subset(co3satarag, 14), subset(co3satcalc, 14),
                            subset(aragsat, 14), subset(calcsat, 14))
save(cimp5_2081_2100_ch, file="data/cimp5_2081_2100_ch.rda")

cimp5_2041_2060_exsd <- brick(subset(epc, 15), subset(o2, 15), subset(ph, 15), subset(thetao, 15),
                              subset(arag, 15), subset(calc, 15), subset(co3, 15), subset(co3satarag, 15), subset(co3satcalc, 15),
                              subset(aragsat, 15), subset(calcsat, 15))
save(cimp5_2041_2060_exsd, file="data/cimp5_2041_2060_exsd.rda")
cimp5_2081_2100_exsd <- brick(subset(epc, 16), subset(o2, 16), subset(ph, 16), subset(thetao, 16),
                              subset(arag, 16), subset(calc, 16), subset(co3, 16), subset(co3satarag, 16), subset(co3satcalc, 16),
                              subset(aragsat, 16), subset(calcsat, 16))
save(cimp5_2081_2100_exsd, file="data/cimp5_2081_2100_exsd.rda")

#cimp5_2041_2060_exds <- brick(subset(epc, 17), subset(o2, 17), subset(ph, 17), subset(thetao, 17),
#                              subset(arag, 17), subset(calc, 17), subset(co3, 17), subset(co3satarag, 17), subset(co3satcalc, 17),
#                              subset(aragsat, 17), subset(calcsat, 17))
#save(cimp5_2041_2060_exds, file="data/cimp5_2041_2060_exds.rda")
#cimp5_2081_2100_exds <- brick(subset(epc, 18), subset(o2, 18), subset(ph, 18), subset(thetao, 18),
#                              subset(arag, 18), subset(calc, 18), subset(co3, 18), subset(co3satarag, 18), subset(co3satcalc, 18),
#                              subset(aragsat, 18), subset(calcsat, 18))
#save(cimp5_2081_2100_exds, file="data/cimp5_2081_2100_exds.rda")

cimp5_sdtoe_early <- brick(subset(epc, 19), subset(o2, 19), subset(ph, 19), subset(thetao, 19),
                           subset(arag, 19), subset(calc, 19), subset(co3, 19), subset(co3satarag, 19), subset(co3satcalc, 19),
                           subset(aragsat, 19), subset(calcsat, 19))
save(cimp5_sdtoe_early, file="data/cimp5_sdtoe_early.rda")
cimp5_sdtoe_constant <- brick(subset(epc, 20), subset(o2, 20), subset(ph, 20), subset(thetao, 20),
                              subset(arag, 20), subset(calc, 20), subset(co3, 20), subset(co3satarag, 20), subset(co3satcalc, 20),
                              subset(aragsat, 20), subset(calcsat, 20))
save(cimp5_sdtoe_constant, file="data/cimp5_sdtoe_constant.rda")

#cimp5_dstoe_early <- brick(subset(epc, 21), subset(o2, 21), subset(ph, 21), subset(thetao, 21),
#                           subset(arag, 21), subset(calc, 21), subset(co3, 21), subset(co3satarag, 21), subset(co3satcalc, 21),
#                           subset(aragsat, 21), subset(calcsat, 21))
#save(cimp5_dstoe_early, file="data/cimp5_dstoe_early.rda")
#cimp5_dstoe_constant <- brick(subset(epc, 22), subset(o2, 22), subset(ph, 22), subset(thetao, 22),
#                              subset(arag, 22), subset(calc, 22), subset(co3, 22), subset(co3satarag, 22), subset(co3satcalc, 22),
#                              subset(aragsat, 22), subset(calcsat, 22))
#save(cimp5_dstoe_constant, file="data/cimp5_dstoe_constant.rda")
