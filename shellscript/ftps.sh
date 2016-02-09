#!/bin/sh
SERVER='FTPURL' ### Like (google.ftp.com, Gmail.ftp.com)
USER='Username' ### FTP Username for login 
PASSW='password' ### Password for user
ROOT='/home/username/python' #### where files stored in local Server
FILE='*.py' ### type of files like *.txt, *.sh, *.py, *.xsx
Dir='/gmail' ### FTP location where files want store[(.mdelete $FILE for deleting files in ftp)].

ftp -v -n $SERVER <<END_OF_SESSION
ascii
user $USER $PASSW
prompt
cd $Dir
lcd $ROOT
mput $FILE
mdelete $FILE 
close
quit

