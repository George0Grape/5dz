FROM fedora:32
RUN dnf update -y && \
    dnf install -y \
        texlive-scheme-basic \
        texlive-collection-latex \
        texlive-collection-latexrecommended \
        texlive-collection-latexextra \
        texlive-collection-fontsrecommended \
        texlive-collection-langcyrillic \
        texlive-collection-xetex \
        texlive-collection-fontsrecommended \
        latexmk \
        ghostscript \
        poppler-utils \
        wget \
        git \
        which \
        fontconfig && \
    dnf clean all
RUN dnf install -y dejavu-sans-fonts dejavu-serif-fonts dejavu-mono-fonts && dnf clean all
RUN dnf install -y vim && dnf clean all
WORKDIR /workspace
CMD ["bash"]
