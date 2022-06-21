FROM aahnik/tgcf

# https://stackoverflow.com/a/60996259/8608146
# man timeout
CMD ["bash", "-c", "timeout -s 2 350m tgcf --loud || ( [[ $? -eq 124 ]] && echo \"WARNING: Timeout reached, but that's OK\" )"]
