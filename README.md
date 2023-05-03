# File zipping error
Dummy repo to investigate issue with word files containing characters outside of 
the ASCII range being corrupted when zipping using jszip.

## Steps to reproduce 
Run the run.sh script. This generates a zip file and extracts its contents to the results folder. Optionally, provide a path to any file as an argument, default value is  "input/modified-original.docx".