FROM debian:latest

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
      git \
      ca-certificates \
      bioperl && \
    apt-get autoremove && \
    apt-get clean

RUN chmod +x /root/P_RNA_scaffolder/P_RNA_scaffolder.sh && \
    ln -s /root/P_RNA_scaffolder/P_RNA_scaffolder.sh /usr/local/bin/p_rna_scaffolder
  
ENV LC_ALL=C.UTF-8 \
    LANGUAGE=C.UTF-8 \
    LANG=C.UTF-8 
