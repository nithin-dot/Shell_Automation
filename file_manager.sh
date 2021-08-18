#!/bin/bash
exec 2>/dev/null
d=$(ls -d */ | wc -l) 
if [ $a -ne 0 ];
then 
echo "Directory  : $d"
fi
tf=$(ls | wc -l)
txtf=$(expr $tf - $d)
echo "Text files : $txtf"


# #audio_files
#  =$(ls *.mp3 | wc -l)
#  =$(ls *.aif | wc -l)
#  =$(ls *.cda | wc -l)
#  =$(ls *.mid | wc -l)
#  =$(ls *.midi | wc -l)
#  =$(ls *.mpa | wc -l)
#  =$(ls *.ogg | wc -l)
#  =$(ls *.wav | wc -l)
#  =$(ls *.wma | wc -l)
#  =$(ls *.wpl | wc -l)
 

#zip_files
var1=0
 file_zip_[0]=$(ls *.7z)
 file_zip_[1]=$(ls *.arj)
 file_zip_[2]=$(ls *.deb)
 file_zip_[3]=$(ls *.pkg)
 file_zip_[4]=$(ls *.rar)
 file_zip_[5]=$(ls *.rpm)
 file_zip_[6]=$(ls *.tar)
 file_zip_[7]=$(ls *.tar.gz)
 file_zip_[8]=$(ls *.tar.xz)
 file_zip_[9]=$(ls *.z)
 file_zip_[10]=$(ls *.zip)
 file_zip_[11]=$(ls *.jar)
 echo -e "\n"
 for i in {0..11}
 do
 if [[ ! -z ${file_zip_[$i]} ]]
 then
      var1=$(($var1+$(echo "${file_zip_[$i]}" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m${file_zip_[$i]}" 
fi
done

echo -e "\e[0m\e[1m$var1 Zip files"

# #disc_image
#  =$(ls *.bin | wc -l)
#  =$(ls *.dmg | wc -l)
#  =$(ls *.iso | wc -l)
#  =$(ls *.toast | wc -l)
#  =$(ls *.vcd | wc -l)
 
# #database_files
#  =$(ls *.csv | wc -l)
#  =$(ls *.dat | wc -l)
#  =$(ls *.db | wc -l)
#  =$(ls *.dbf | wc -l)
#  =$(ls *.log | wc -l)
#  =$(ls *.mdb | wc -l)
#  =$(ls *.sav | wc -l)
#  =$(ls *.sql | wc -l)
#  =$(ls *.xml | wc -l)
 
# #E-mail_files
#  =$(ls *.email | wc -l)
#  =$(ls *.eml | wc -l)
#  =$(ls *.emlx | wc -l)
#  =$(ls *.msg | wc -l)
#  =$(ls *.oft | wc -l)
#  =$(ls *.ost | wc -l)
#  =$(ls *.pst | wc -l)
#  =$(ls *.vcf | wc -l)
 
 
# #executable_files
#  =$(ls *.apk | wc -l)
#  =$(ls *.bat | wc -l)
#  =$(ls *.cgi | wc -l)
#  =$(ls *.pl | wc -l)
#  =$(ls *.exe | wc -l)
#  =$(ls *.gadget | wc -l)
#  =$(ls *.msi | wc -l)
#  =$(ls *.py | wc -l)
#  =$(ls *.wsf | wc -l)

 
# #Font_files
#  =$(ls *.fnt | wc -l)
#  =$(ls *.fon | wc -l)
#  =$(ls *.otf | wc -l)
#  =$(ls *.ttf | wc -l)
 
# #images_format 
#  =$(ls *.ai | wc -l)
#  =$(ls *.bmp | wc -l)
#  =$(ls *.gif | wc -l)
#  =$(ls *.ico | wc -l)
#  =$(ls *.jpeg | wc -l)
#  =$(ls *.jpg | wc -l)
#  =$(ls *.png | wc -l)
#  =$(ls *.ps | wc -l)
#  =$(ls *.psd | wc -l)
#  =$(ls *.svg | wc -l)
#  =$(ls *.tif | wc -l)
 
# #internet_based_files
#  =$(ls *.asp | wc -l)
#  =$(ls *.cer | wc -l)
#  =$(ls *.cfm | wc -l)
#  =$(ls *.cgi | wc -l)
#  =$(ls *.pl | wc -l)
#  =$(ls *.css | wc -l)
#  =$(ls *.htm | wc -l)
#  =$(ls *.js | wc -l)
#  =$(ls *.jsp | wc -l)
#  =$(ls *.part | wc -l)
#  =$(ls *.php | wc -l)
#  =$(ls *.py | wc -l)
#  =$(ls *.rss | wc -l)
#  =$(ls *.xhtml | wc -l)
 
# #presentation_formats
#  =$(ls *.key | wc -l)
#  =$(ls *.odp | wc -l)
#  =$(ls *.pps | wc -l)
#  =$(ls *.ppt | wc -l)
#  =$(ls *.pptx | wc -l)
 
# #Spreadsheet file
#  =$(ls *.ods | wc -l)
#  =$(ls *.xls | wc -l)
#  =$(ls *.xlsm | wc -l)
#  =$(ls *.xlsx | wc -l)
 
# #system_related_files
#  =$(ls *.bak | wc -l)
#  =$(ls *.cab | wc -l)
#  =$(ls *.cfg | wc -l)
#  =$(ls *.cpl | wc -l)
#  =$(ls *.cur | wc -l)
#  =$(ls *.dll | wc -l)
#  =$(ls *.dmp | wc -l)
#  =$(ls *.drv | wc -l)
#  =$(ls *.icns | wc -l)
#  =$(ls *.ico | wc -l)
#  =$(ls *.ini | wc -l)
#  =$(ls *.lnk | wc -l)
#  =$(ls *.sys | wc -l)
#  =$(ls *.tmp | wc -l)
 
# #Video file formats
#  =$(ls *.3g2 | wc -l)
#  =$(ls *.3gp | wc -l)
#  =$(ls *.avi | wc -l)
#  =$(ls *.flv | wc -l)
#  =$(ls *.h264 | wc -l)
#  =$(ls *.m4v | wc -l)
#  =$(ls *.mkv | wc -l)
#  =$(ls *.mov | wc -l)
#  =$(ls *.mp4 | wc -l)
#  =$(ls *.mpg | wc -l)
#  =$(ls *.mpeg | wc -l)
#  =$(ls *.rm | wc -l)
#  =$(ls *.swf | wc -l)
#  =$(ls *.vob | wc -l)
#  =$(ls *.wmv | wc -l)
 
 
# #Word processor
#  =$(ls *.doc | wc -l)
#  =$(ls *.odt | wc -l)
#  =$(ls *.pdf | wc -l)
#  =$(ls *.rtf | wc -l)
#  =$(ls *.tex | wc -l)
#  =$(ls *.txt | wc -l)
#  =$(ls *.wpd | wc -l)
 
# #program_files
#     #objective c
#  =$(ls *.h | wc -l)
#     #C
#  =$(ls *.c | wc -l)
#     #C++
#  =$(ls *.cpp | wc -l)
#     #java
#  =$(ls *.class | wc -l)
#  =$(ls *.java | wc -l)
#     #php
#  =$(ls *.php | wc -l)
#     #csharp
#  =$(ls *.cs | wc -l)
#     #swift
#  =$(ls *.swift | wc -l)
#     #Visual_Basic_language
#  =$(ls *.vb | wc -l)
#     #Dart
#  =$(ls *.dart | wc -l)
#     #TypeScript
#  =$(ls *.ts | wc -l)
#  =$(ls *.tsx | wc -l)
#     #Scala
#  =$(ls *.sc | wc -l)
#  =$(ls *.scala | wc -l)
#     #Scheme
#  =$(ls *.scm | wc -l)
#     #Kotlin
#  =$(ls *.kt | wc -l)
#  =$(ls *.kts | wc -l)
#  =$(ls *.ktm | wc -l)
#     #Mat_lab
#  =$(ls *.m | wc -l)
#  =$(ls *.mat | wc -l)
#     #Golang
#  =$(ls *.go | wc -l)
#     #R
#  =$(ls *.rb | wc -l)
#  =$(ls *.r | wc -l)
#  =$(ls *.rdata | wc -l)
#  =$(ls *.rds | wc -l)
#  =$(ls *.rda | wc -l)
#  =$(ls * | wc -l)
#  =$(ls * | wc -l)
#  =$(ls * | wc -l)
#  =$(ls * | wc -l)
#  =$(ls * | wc -l)
#  =$(ls * | wc -l)
#  =$(ls * | wc -l)
#  =$(ls * | wc -l)
#  =$(ls * | wc -l)
#  =$(ls * | wc -l)


