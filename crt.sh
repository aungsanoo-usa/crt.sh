#!/bin/bash

# Check if the domain name is passed, otherwise prompt the user
if [ -z "$1" ]; then
  read -p "Enter the domain name: " DOMAIN
else
  DOMAIN="$1"
fi

# Check if the user provided a valid domain
if [ -z "$DOMAIN" ]; then
  echo "Error: No domain provided. Exiting."
  exit 1
fi

# Define the output file name
OUTPUT_FILE="${DOMAIN}_subdomains.txt"

# Fetch the subdomains from crt.sh, display them, and save them to the output file
curl -s "https://crt.sh/?q=$DOMAIN" | \
grep -oP "(?<=<TD>)[a-zA-Z0-9.-]+\\.$DOMAIN(?=</TD>)" | \
sort -u | tee "$OUTPUT_FILE"

echo "Subdomains saved to $OUTPUT_FILE"
