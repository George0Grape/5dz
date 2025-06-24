FROM fedora:latest

RUN dnf update -y && \
    dnf install -y \
        texlive-scheme-full \
        latexmk \
        fontconfig \
        dejavu-sans-fonts \
        dejavu-serif-fonts \
        dejavu-sans-mono-fonts \
        vim \
    && dnf clean all

WORKDIR /workspace
COPY . .
CMD ["latexmk", "-pdf", "main.tex"]
