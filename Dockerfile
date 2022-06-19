FROM aahnik/tgcf

CMD ["timeout", "-s", "2", "10s", "tgcf", "--loud"]
