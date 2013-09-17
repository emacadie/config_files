TIME_VAR=`date +%Y-%m-%d_%H.%M.%S`

find . -name "*~" -exec rm -v {} \;
mkdir ./archive/$TIME_VAR

cp -v backup.sh  ./archive/$TIME_VAR/backup.$TIME_VAR.sh
cp -v file001.txt  ./archive/$TIME_VAR/file001.$TIME_VAR.txt 
cp -v file002.txt  ./archive/$TIME_VAR/file002.$TIME_VAR.txt 
cp -v file003.txt  ./archive/$TIME_VAR/file003.$TIME_VAR.txt 

#- EOF
