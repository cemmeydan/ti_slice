FROM dynverse/dynwrap:bioc

LABEL version 0.1.1

RUN R -e 'devtools::install_github("dynverse/SLICE")'

ADD . /code

ENTRYPOINT Rscript /code/run.R
