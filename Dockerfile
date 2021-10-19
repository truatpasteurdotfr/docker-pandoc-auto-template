FROM pandoc/latex
MAINTAINER Tru Huynh <tru@pasteur.fr>

# build env
RUN apk update && apk upgrade && apk add --no-cache bash ghostscript &&\
	apk info -v > /apk-info-v.txt && \
	tlmgr update --self && tlmgr update --all && \
	tlmgr install \
	 latexmk epstopdf \
	 bbding \
	 blindtext \
	 cbfonts \
	 cbfonts-fd \
	 chemgreek \
	 cleveref \
	 enumitem \
	 greek-fontenc \
	 ifsym \
	 lastpage \
	 lettrine \
	 mhchem \
	 minifp \
	 preprint \
	 sidecap \
	 siunitx \
	 textgreek \
	 titlesec \
	 was && \
	date +"%Y-%m-%d-%H%M" > /last_update
