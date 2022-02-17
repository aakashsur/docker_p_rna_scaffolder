# P RNA Scaffolder in Docker

[P RNA Scaffolder](https://github.com/CAFS-bioinformatics/P_RNA_scaffolder) is a RNA-seq based scaffolding algorithm. Since it requires bioperl I have wrapped the project in a container. 

## Usage
After pulling the image, first a run script is generated by using the configuration file, then the run script can be executed to the container - 

```
docker pull \
  aakashsur/p_rna_scaffolder
  
docker run \
  --rm \
  --volume $PWD:/root/results \
  --workdir /root/results \
  aakashsur/p_rna_scaffolder \
  
```

# Details

The `p_rna_scaffolder` command has been placed in $PATH.

For running in an HPC setting, where singularity is often the choice of containerization - 

```
singularity pull \
  docker://aakashsur/masurca
  
singularity run 
  --bind $PWD:/root/results \
  --home /root/results \
  masurca_latest.sif \
  masurca \
  config.txt
```
