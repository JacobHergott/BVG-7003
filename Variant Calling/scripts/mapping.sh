#!/bin/bash
DATA=/home/dator/NGS
REF=../refgenome/Gmax_275_v2.0.fa
CPU=3
THR=2
BWA=/home/dator/bwa/bwa

exec &> bwa.log
cd ../'GBS data'
		parallel -j $CPU $BWA mem -t $THR $REF {}.fastq ">" {}.sam ::: $(ls -1 *.fastq | sed 's/.fastq//')
		if [ $? -ne 0 ]
			then 
				printf There is a problem in the alignment step
				exit 1
		fi
