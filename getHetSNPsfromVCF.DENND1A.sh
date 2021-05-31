#!/bin/bash
#
#SBATCH --mem=250000
#SBATCH -J getHetsite
#SBATCH -o getHetsite.%J.output
#SBATCH -e getHetsite.%J.error
#SBATCH --array=1
#SBATCH --cpus-per-task=16
#SBATCH --mail-user=ls331@duke.edu
#SBATCH --mail-type=FAIL,END
#SBATCH -p new,all


module load vcftools
vcftools --gzvcf /data/common/1000_genomes/VCF/20130502/GRCh38/lifted-over/chr9-hg38.vcf.gz --chr 9 --from-bp 123279654 --to-bp 124030107 --keep 1KGP-DENND1A-5samples.txt --recode --out 1KGP-POPSS-DENND1A-filtered
vcftools --gzvcf /data/common/1000_genomes/VCF/20130502/GRCh38/lifted-over/chr9-hg38.vcf.gz --keep 1KGP-DENND1A-5samples.txt --recode --out 1KGP-POPSS-DENND1A

#grep -v "^#" 1KGP-POPSS-DENND1A.recode.vcf | awk '($(NF-2)$(NF-1)$NF~/0/)&&($(NF-2)$(NF-1)$NF~/1/)' | cat >> 1KGP-POPSS-DENND1A-HetSites.txt
