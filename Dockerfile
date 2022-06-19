FROM aahnik/tgcf

CMD ["bash", "-c", "timeout -s 2 10s tgcf --loud || ( [[ $? -eq 124 ]] && echo \"WARNING: Timeout reached, but that's OK\" )]"]
