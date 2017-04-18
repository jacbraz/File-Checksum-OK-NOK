# File-Checksum-OK-NOK

When I download a file from a web site, I want to know if 
all bytes are exactly the same as published. Normaly I do a
checksum then compare with the value published. 
 
In Linux using the command line, doing a checksum using the system tool 
ex: sha256, then copy paste result to an editor ex: nano or gedit to 
compare it to site value. 
Or creating a file containing the checksum value published in the downloaded 
file's folder, edit it, append the checksum value published, save it, then 
do the checksum  ex. sha256 using this local file. 
Really after this check I simply delete it. I want a single command to do it automatically, 
one single step !  


This bash file extends the sha256 checksum, allowing me to write a single 
command passing as parameters the file and expected checksum with a color 
result OK in green(match) or NOK in red (corrupted).

Usage: 

Download filename 

then check it in one step:
```shell
sha256Ex <filename> <checksum as published on web site>
```

