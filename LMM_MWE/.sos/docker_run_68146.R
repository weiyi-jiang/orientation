library('qqman')
data <- read.table(gzfile('/Users/shuaihaoyue/Desktop/LMM_MWE/bol_output/phenotypes_BMI.boltlmm.snp_stats.gz'), header=T)
lambda <- median(qchisq(1-data$P,1))/qchisq(0.5,1)
ifelse((0 == 0 && min(data$P)!=0), ylim <- abs(floor(log10(min(data$P)))), ylim <- abs(floor(log10(2.225074e-308))))
# Creating manhattan plot
png('/Users/shuaihaoyue/Desktop/LMM_MWE/bol_output/phenotypes_BMI.boltlmm.manhattan.png', width = 6, height = 4, unit='in', res=300)
manhattan_plot <- manhattan(data, chr='CHR', bp='POS', snp='SNP', p='P', main = 'Manhattan plot for BMI (boltlmm)', ylim = c(0, ylim), cex = 0.6, 
cex.axis = 0.9, col = c("blue4", "orange3"), chrlabs = as.character(c(1:22)))
dev.off()
# Creating qqplot
png('/Users/shuaihaoyue/Desktop/LMM_MWE/bol_output/phenotypes_BMI.boltlmm.qq.png', width = 5, height = 5, unit='in', res=300)
qq_plot <- qq(data$P, main = 'QQ Plot for BMI (boltlmm)', xlim = c(0, 8), ylim = c(0, ylim), pch = 18, col = "blue4", cex = 1.5, las = 1)
dev.off()
write('## p-value summary:', '/Users/shuaihaoyue/Desktop/LMM_MWE/bol_output/phenotypes_BMI.boltlmm.analysis_summary.md', append=T)
write('', '/Users/shuaihaoyue/Desktop/LMM_MWE/bol_output/phenotypes_BMI.boltlmm.analysis_summary.md', append = T)
write(paste("Genomic inflation factor is", round(lambda,3), "for", nrow(data), "variants analyzed.

---
"), '/Users/shuaihaoyue/Desktop/LMM_MWE/bol_output/phenotypes_BMI.boltlmm.analysis_summary.md', append=T)

