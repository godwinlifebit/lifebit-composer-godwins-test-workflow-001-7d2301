# Godwins.Test.Workflow.001

## Description

This workflow is created to verify a successful job run


## Components

The present workflow is composed by the following unique components (Note that some components may be repeated):

### lifebitai_fastqc

**Description**: Quality control assessment of FastQ files using FastQC.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: @odiogosilva

### lifebitai_twas_vcf

**Description**: Pipeline for transcriptome-wide association analysis using PTWAS/GAMBIT software. This version has a .vcf input file.\
**Inputs**: 8\
**Outputs**: 1\
**Parameters**: 3\
**Authors**: 

## Inputs

- `--fastqc_1.fastq`: FastQ files, which can be compressed or uncompressed
- `--twas_vcf_1.ch_codon_file`: 
- `--twas_vcf_1.ch_priority_file`: 
- `--twas_vcf_1.ch_ref_fasta`: 
- `--twas_vcf_1.ch_ref_fasta_index`: 
- `--twas_vcf_1.ch_ld_reference`: 
- `--twas_vcf_1.ch_eqtl_weights`: 
- `--twas_vcf_1.ch_gwas_sumstats`: 
## Parameters

### Required

- `--twas_vcf_1.gwas_sample_size`: Sample size of GWAS study
    - **Component**: twas_vcf_1 
    - Type: number



### Optional

- `--twas_vcf_1.outdir`: Output directory for the results
    - **Component**: twas_vcf_1 
    - Type: path
    - Default: `results/` 

- `--twas_vcf_1.gambit_exec_path`: Path to the gambit executables
    - **Component**: twas_vcf_1 
    - Type: path
    - Default: `/GAMBIT/bin/GAMBIT` 

