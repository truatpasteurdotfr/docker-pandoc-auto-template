FROM pandoc/latex
MAINTAINER Tru Huynh <tru@pasteur.fr>

# build env
RUN apk update && apk upgrade && apk add --no-cache bash ghostscript &&\
	apk info -v > /apk-info-v.txt && \
	tlmgr update --self && tlmgr update --all && \
	tlmgr install \
	 latexmk epstopdf \
accfonts \
accfonts.x86_64-linuxmusl \
afm2pl \
afm2pl.x86_64-linuxmusl \
albatross \
albatross.x86_64-linuxmusl \
avantgar \
bookman \
charter \
cmextra \
cm-super \
collection-fontsrecommended \
collection-fontutils \
courier \
dosepsbin \
dosepsbin.x86_64-linuxmusl \
dvipsconfig \
euro-ce \
euro \
fontinst \
fontinst.x86_64-linuxmusl \
fontools \
fontools.x86_64-linuxmusl \
fontware \
fontware.x86_64-linuxmusl \
fpl \
helvetic \
lcdftypetools \
lcdftypetools.x86_64-linuxmusl \
manfnt-font \
marvosym \
mathpazo \
metatype1 \
mf2pt1 \
mf2pt1.x86_64-linuxmusl \
mflogo-font \
ncntrsbk \
palatino \
ps2eps \
ps2eps.x86_64-linuxmusl \
ps2pk \
ps2pk.x86_64-linuxmusl \
psutils \
psutils.x86_64-linuxmusl \
pxfonts \
rsfs \
t1utils \
t1utils.x86_64-linuxmusl \
tex-gyre-math \
tex-gyre \
texliveonfly \
texliveonfly.x86_64-linuxmusl \
ttfutils \
ttfutils.x86_64-linuxmusl \
txfonts \
utopia \
wasysym \
wasy \
wasy-type1 \
zapfchan \
\
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
