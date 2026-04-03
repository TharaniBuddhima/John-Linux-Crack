#!/bin/bash

# Step 1: Create passwd file
nano passwd.txt

# Step 2: Create shadow file (with real SHA-512 hash)
nano shadow.txt

# Step 3: Combine passwd and shadow files
unshadow passwd.txt shadow.txt > crack.txt

# Step 4: View combined file
cat crack.txt

# Step 5: Run John the Ripper with wordlist
john --wordlist=/usr/share/wordlists/rockyou.txt --rules crack.txt

# Step 6: Show cracked passwords
john --show crack.txt >> results.txt

# Step 7: View results
cat results.txt
