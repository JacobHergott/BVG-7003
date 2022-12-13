#!/bin/bash
DATA=/path/to/fastq
BARCODE=/path/to/barcode
TOOL=path/to/sabre
exec &> sabre.log

sabre se -f FC20150701_1.fq.gz -b FC20150701_1.txt -u unk.fastq
