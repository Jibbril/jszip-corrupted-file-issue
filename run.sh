rm -rf results/* input/input.zip 

input="${1:-./input/modified-original.docx}"
zip input/input.zip "$input"

node index.js 

rm input/input.zip

unzip -o -d results/result results/result.zip

cp -r results/result/input/* results/
rm -rf results/result results/input

inputFile="results/modified-original.docx"

if [ -f "$inputFile" ]; then
  cp "$inputFile" "${inputFile%.docx}.zip"
  echo "Unzipping ${inputFile%.docx}.zip"
  unzip results/modified-original.zip -d results/modified-original
fi