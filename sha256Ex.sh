#!/bin/bash
# Validate file hash direct in command line, doesnt use file with hash values. 
#   FAKE FAKE but a test
# Usage: ./sha256Ex.sh fileName <SHA-256 value as listed in website>
# -----------------------------------------------------------------------------

# ANSY escape color codes
RED='\033[1;91m'
GREEN='\033[1;92m'
BYELLOW='\033[1;93m'
BWHITE='\033[1;37m'
NC='\033[0m' # No Color


# we need two parameters : filename and checksumValue
if [ $# != 2 ]
then
  echo -e "${RED}ERROR ! we need two parameters !! ${NC}"
  echo -e "${RED}Usage : sha256Ex <filename> <expectedHashValue> ${NC}"
exit 1
fi

# calculate file hash value
fileCheckSum=`sha256sum $1`
# internal field separator to split string, with space has delimiter !
IFS=' ' read -a NAMES <<< "$fileCheckSum"    #Convert string to arra

calcCheckSum=${NAMES[0]}



echo -e "${BWHITE}Check if file has the SHA-256 checksum valid ! ${NC}"
echo -e "${YELLOW}MIT License JacBraz 2017 v0.1"
# Version in :201702032030

echo "Checking file : $1"
echo "Using checksum: $2"
echo "Calc  checksum: $calcCheckSum"

echo ""


if [ $calcCheckSum !=  $2 ]
then
  echo -e "${RED}Checksums mismatch ! File is modified.  ${NC}"
else
  echo -e "${GREEN}Checksums OK ! File is original.  ${NC}"
fi

exit 0




