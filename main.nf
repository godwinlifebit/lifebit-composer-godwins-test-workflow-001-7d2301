nextflow.enable.dsl=2

include { fastqc_1 } from './modules/fastqc_1/module.nf'
include { twas_vcf_1 } from './modules/twas_vcf_1/module.nf'

workflow {
input1 = Channel.fromPath(params.fastqc_1.fastq)
input2 = Channel.fromPath(params.twas_vcf_1.ch_codon_file)
input3 = Channel.fromPath(params.twas_vcf_1.ch_priority_file)
input4 = Channel.fromPath(params.twas_vcf_1.ch_ref_fasta)
input5 = Channel.fromPath(params.twas_vcf_1.ch_ref_fasta_index)
input6 = Channel.fromPath(params.twas_vcf_1.ch_ld_reference)
input7 = Channel.fromPath(params.twas_vcf_1.ch_eqtl_weights)
input8 = Channel.fromPath(params.twas_vcf_1.ch_gwas_sumstats)
fastqc_1(input1)
twas_vcf_1(fastqc_1.out.output1, input2, input3, input4, input5, input6, input7, input8)
}
