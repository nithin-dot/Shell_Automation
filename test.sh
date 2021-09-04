# ext]=$(for f in *.*; do echo "${f##*.}"; done | sort -u | paste -sd,)
# echo "$ext"
# exec 2>/dev/null
IFS=$'\n' 
# var1=0
#  file_zip_[0]=$(ls *.7z)
#  file_zip_[1]=$(ls *.arj)
#  file_zip_[2]=$(ls *.deb)
#  file_zip_[3]=$(ls *.pkg)
#  file_zip_[4]=$(ls *.rar)
#  file_zip_[5]=$(ls *.rpm)
#  file_zip_[6]=$(ls *.tar)
#  file_zip_[7]=$(ls *.tar.gz)
#  file_zip_[8]=$(ls *.tar.xz)
#  file_zip_[9]=$(ls *.z)
#  file_zip_[10]=$(ls *.zip)
#  file_zip_[11]=$(ls *.jar)
# #  echo -e "\n"
#  for i in {0..11}
#  do
#  if [[ ! -z ${file_zip_[$i]} ]]
#  then
#       var1=$(($var1+$(echo "${file_zip_[$i]}" | wc -l)))
#       echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m${file_zip_[$i]}\n" 
# fi
# done

# echo -e "\e[0m\e[1m$var1 Zip files"


check_null(){
if [[ $1 -ne 0 ]]
then
      echo -e "\e[0m\e[1m  $1 $2 files\n"
fi
}

 CAL_PROGRAM=0
  program_file=("$(ls *.h)" "$(ls *.c)" "$(ls *.cpp)" "$(ls *.class)" "$(ls *.java)" "$(ls *.php)" "$(ls *.cs)" "$(ls *.swift)" "$(ls *.vb)" "$(ls *.dart)" "$(ls *.ts)" "$(ls *.tsx)" "$(ls *.sc)"  "$(ls *.scala)" "$(ls *.scm)" "$(ls *.kt)" "$(ls *.kts)" "$(ls *.ktm)" "$(ls *.m)" "$(ls *.mat)" "$(ls *.go)" "$(ls *.rb)" "$(ls *.r)" "$(ls *.rdata)" "$(ls *.rds)" "$(ls *.rda)")
  for i in ${program_file[@]}
  do
  if [[ ! -z $i ]]
  then
    CAL_PROGRAM=$(($CAL_PROGRAM+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_PROGRAM PROGRAM 




