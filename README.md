## Context & Citation:   
# Unexpected worker mating and colony-founding in a superorganism  

This repository contains scripts related to the transcriptomic analysis of tissues (reproductive tissues (spermetheca, median oviduct, vagina), fat bodies, brains, and ovaries) collected from worker and queen bumblebees. Findings of the analysis are reported in the following manuscript:   

M Zhuang, TJ Colgan, Y Guo, Z Zhang, F Liu, Z Xia, X Dai, Z Zhang, Y Li, L Wang, J Xu, Y Guo, Y Qu, J Yao, H Yang, F Yang, J Guo, MJF Brown and J Li. 
[<b>Unexpected worker mating and colony-founding in a superorganism.</b>](https://www.nature.com/articles/s41467-023-41198-6)    

The following directory contains scripts for:  
- **The quality assessment of RNA-seq FASTQ sequences.**  
	- Performed using [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/).   
- **The filtering of sequences.**  
	- Performed using [fastp](https://github.com/OpenGene/fastp) and [Trimmomatic](https://github.com/usadellab/Trimmomatic)  
- **The alignment of filtered reads.**  
	- Performed using [STAR](https://github.com/alexdobin/STAR).  
- **Data exploration, including differential expression analysis.**    
	- Performed using [DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html).   
- **Weighted gene co-expression network analysis.**.  
	- Performed using [WGCNA](https://cran.r-project.org/web/packages/WGCNA/index.html).  
- **Gene Ontology term enrichment analysis.**  
        - Performed using [topGO](https://bioconductor.org/packages/release/bioc/html/topGO.html).  


Scripts here, especially those for transcript quantification, differential expression, and Gene Ontology enrichment analysis used modifications of scripts published along with the following manuscripts:
- [Colgan et al. (2019), _Molecular ecology_](https://onlinelibrary.wiley.com/doi/full/10.1111/mec.15047) - [Github repository](https://github.com/wurmlab/Bter_neonicotinoid_exposure_experiment)  
