#!/bin/bash
echo '*--------------------------------------------------*'
echo 'Searching all sequences with GGGenome...'
echo '*--------------------------------------------------*'

while IFS= read -r p || [[ -n "$p" ]];
  do curl 'https://gggenome.dbcls.jp/ja/mm39/'"${p}"  -o results/$p.html;
done < gggenome_example.txt

echo '*--------------------------------------------------*'
echo 'Completed downloading all sequences in the list.'
echo '*--------------------------------------------------*'
