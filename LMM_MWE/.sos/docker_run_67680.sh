bolt \
--bfile=/Users/shuaihaoyue/Desktop/LMM_MWE/genotypes \
--phenoFile=/Users/shuaihaoyue/Desktop/LMM_MWE/phenotypes.txt \
--phenoCol=BMI \
--covarFile=/Users/shuaihaoyue/Desktop/LMM_MWE/phenotypes.txt \
--covarCol=SEX  \
--covarMaxLevels=10 \
--qCovarCol=AGE  \
--LDscoresFile=/Users/shuaihaoyue/Desktop/LMM_MWE/LDSCORE.1000G_EUR.tab.gz \
--geneticMapFile=/Users/shuaihaoyue/Desktop/LMM_MWE/genetic_map_hg19_withX.txt.gz \
 \
--statsFile=/Users/shuaihaoyue/Desktop/LMM_MWEoutput/cache/imputed_genotypes_chr22.phenotypes_BMI.boltlmm.ref_stats.gz \
--numThreads=5 \
--bgenFile=/Users/shuaihaoyue/Desktop/LMM_MWE/imputed_genotypes_chr22.bgen \
--bgenMinMAF=0.001 \
--bgenMinINFO=0.1 \
--sampleFile=/Users/shuaihaoyue/Desktop/LMM_MWE/imputed_genotypes.sample \
--statsFileBgenSnps=/Users/shuaihaoyue/Desktop/LMM_MWEoutput/cache/imputed_genotypes_chr22.phenotypes_BMI.boltlmm.snp_stats.gz \
--verboseStats
