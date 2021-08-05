# BIRDtools
aligned files to BIRD input


Order of using scripts : 
1. Make a set of VCF files with samples you need
2. use subsetVCFtolocus.sh to select the regions to test with BIRD
3. then use the Hetsite.sh using awk commands to select the Het sites in your population of subset snps
4. Then use the f3q10toBIRD which does an mpileup and the ocnverts the data to an input format used by BIRD
5. then runBIRD.sh using parameters
