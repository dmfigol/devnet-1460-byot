FROM stilliard/pure-ftpd

# e.g. you could change the defфult command run:
CMD pure-pw useradd ftpuser -f /etc/pure-ftpd/passwd/pureftpd.passwd -m -u ftpuser -d /home/ftpusers/ftpuser 
CMD /run.sh -c 30 -C 10 -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -j -R -P $PUBLICHOST -p 30000:30059