FROM archlinux:latest
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm ansible ansible-lint && \
    pacman -Scc --noconfirm && \
    rm -rf /var/cache/pacman/pkg
