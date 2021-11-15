FROM archlinux:latest
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm ansible unzip ansible-lint openssh && \
    pacman -Scc --noconfirm && \
    rm -rf /var/cache/pacman/pkg
