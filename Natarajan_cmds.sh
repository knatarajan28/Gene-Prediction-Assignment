
  # Create a new Conda environment named ex4_pt1
conda create -n ex4_pt1 -y

# Activate the created Conda environment
conda activate ex4_pt1

# Install barrnap and bedtools from the bioconda and conda-forge channels
conda install -c bioconda -c conda-forge barrnap bedtools -y

# Use barrnap to identify 16S rRNA genes in the genomic sequence and save the results in a GFF file
barrnap GCF_034427945.1_ASM3442794v1_genomic.fna | grep "Name=16S_rRNA;product=16S ribosomal RNA" > 16S.gff

# Use bedtools getfasta to extract the DNA sequences of the identified 16S rRNA genes
bedtools getfasta -fi GCF_034427945.1_ASM3442794v1_genomic.fna -bed 16S.gff -fo 16S.fa

# Display the content of the 16S.gff file
cat 16S.gff

# Remove files with .fai and .gff extensions in the current directory
rm -v *.{fai,gff}

# Display the content of the 16S.fa file
cat 16S.fa

# Deactivate the current Conda environment
conda deactivate

# Create a new Conda environment named ex4_pt2
conda create -n ex4_pt2 -y

# Activate the newly created Conda environment
conda activate ex4_pt2

# Install prodigal and pigz from the bioconda and conda-forge channels
conda install -c bioconda -c conda-forge prodigal pigz -y

# Use prodigal to predict genes in the genomic sequence, output the results in GFF and protein sequences in FAA
prodigal -i GCF_034427945.1_ASM3442794v1_genomic.fna -o gene_predictions.gff -a protein_sequences.faa > gene_prediction.log 2>&1

# Compress the generated files with pigz, using maximum compression
pigz -9f *.gbk log.txt

# Display the header of the compressed .gbk files
zhead *.gbk.gz

# Display the content of the compressed log.txt file
zcat log.txt.gz
