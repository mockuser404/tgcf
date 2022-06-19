FROM aahnik/tgcf

CMD ["sh", "-c", "timeout -s 2 10s tgcf --loud || ( [[ $? -eq 124 ]] && echo \"WARNING: Timeout reached, but that's OK\" )]"]
