SEED=`echo $[\`date +%s\`-(\`date +%s\`+28800)%64800]$USER|sha512sum|od -An -t d|tr -cd 0-9|head -c 16`;awk "BEGIN{srand($SEED);print(int(101*rand()))}";SEED=
