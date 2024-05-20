FROM ubuntu:jammy

RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y vim
RUN apt-get update && apt-get install -y ghostscript

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y texlive-base texlive-latex-base texlive-latex-extra texlive-xetex texlive-fonts-recommended texlive-fonts-extra texlive-lang-greek
RUN apt-get install -y pandoc
RUN apt-get install -y graphviz

RUN set -xe \
    && apt-get update \
    && apt-get install -y python3-pip
RUN pip3 install -U sphinx    
RUN pip3 install sphinx-jsonschema
RUN pip3 install sphinxcontrib-drawio
RUN pip3 install --upgrade myst-parser
# Fix locale error (https://unix.stackexchange.com/questions/87745/what-does-lc-all-c-do)
RUN export LC_ALL="C"
RUN pip3 install notebook

CMD ["/bin/bash"]