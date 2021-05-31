#!/bin/bash
grep -v "^#" 1KGP-POPSS-DENND1A.recode.vcf | awk '($2>=123279654)&&($2<=124030107)' | awk '($(NF-2)$(NF-1)$NF~/0/)&&($(NF-2)$(NF-1)$NF~/1/)'| cat >> 1KGP-POPSS-DENND1Alocus-Hetsites.txt
