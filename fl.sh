
#!/bin/bash
exec 2>/dev/null
 IFS=$'\n' 
check_dir(){
d=$(ls -rtd */ ) 
if [[ ! -z $d ]];
then 
  for i in $d 
  do
      echo -e "  \e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
        
  done
      echo -e "\e[0m\e[1m  $(echo "$d" | wc -l )" "Directory\n"
fi
}
tf=$(ls)
if [[ $tf -eq 0 ]]
then 
      echo "This dirctory is Empty,"
fi
# txtf=$(expr $tf - $d)
# echo "Text files : $txtf"

check_null(){
if [[ $1 -ne 0 ]]
then
      echo -e "\e[0m\e[1m  $1 $2 files\n"
fi
}

#audio_files
check_audio(){
CAL_AUDIO=0

 audio_file=("$(ls *.mp3)" "$(ls *.aif)" "$(ls *.cda)" "$(ls *.mid)" "$(ls *.midi)" "$(ls *.mpa)" "$(ls *.ogg)" "$(ls *.wav)" "$(ls *.wma)" "$(ls *.wpl)")
 for i in ${audio_file[@]}
 do
 if [[ ! -z $i ]]
 then
     CAL_AUDIO=$(($CAL_AUDIO+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_AUDIO AUDIO 
}


check_zip()
 {
#zip_files
CAL_ZIP=0
 file_zip_=("$(ls *.arj)" "$(ls *.deb)" "$(ls *.pkg)" "$(ls *.rar)" "$(ls *.rpm)" "$(ls *.tar)" "$(ls *.tar.gz)" "$(ls *.tar.xz)" "$(ls *.z)" "$(ls *.zip)" "$(ls *.jar)" "$(ls *.7z)")
 for i in ${file_zip_[@]}
 do
 if [[ ! -z $i ]]
 then
     CAL_ZIP=$(($CAL_ZIP+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m    $i" 
fi
done

check_null $CAL_ZIP Zip 
 }



check_bin(){
#disc_image
CAL_IMAGE=0

 disc_image=("$(ls *.vcd)" "$(ls *.bin)" "$(ls *.dmg)" "$(ls *.iso)" "$(ls *.toast)")
 for i in ${disc_image[@]}
 do
 if [[ ! -z $i ]]
 then
     CAL_IMAGE=$(($CAL_IMAGE+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_IMAGE DISC 
}
check_db(){
#database_files
CAL_DATA=0
 database_file=("$(ls *.csv)" "$(ls *.dat)" "$(ls *.db)"  "$(ls *.dbf)"  "$(ls *.log)"  "$(ls *.mdb)"  "$(ls *.sav)"  "$(ls *.sql)"  "$(ls *.xml)")
  for i in ${database_file[@]}
 do
 if [[ ! -z $i ]]
 then
     CAL_DATA=$(($CAL_DATA+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_DATA DATABASE 
}
#E-mail_files
check_email(){
CAL_EFILE=0
mail_file=("$(ls *.email)"  "$(ls *.eml)"  "$(ls *.emlx)"  "$(ls *.msg)"  "$(ls *.oft)"  "$(ls *.ost)"  "$(ls *.pst)"  "$(ls *.vcf)")
 for i in ${mail_file[@]}
 do
 if [[ ! -z $i ]]
 then
     CAL_EFILE=$(($CAL_EFILE+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_EFILE E-MAIL 
}
#executable_files
check_exe(){
CAL_EXEFILE=0
executable_file=("$(ls *.apk)"  "$(ls *.bat)"  "$(ls *.cgi)"  "$(ls *.pl)"  "$(ls *.exe)"  "$(ls *.gadget)"  "$(ls *.msi)"  "$(ls *.py)"  "$(ls *.wsf)" "$(ls *.sh)")
 for i in ${executable_file[@]}
 do
 if [[ ! -z $i ]]
 then
     CAL_EXEFILE=$(($CAL_EXEFILE+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_EXEFILE EXECUTABLE 
}
#Font_files
check_font(){
CAL_FFILE=0
Font_file=("$(ls *.fnt)"  "$(ls *.fon)"  "$(ls *.otf)"  "$(ls *.ttf)")
 for i in ${Font_file[@]}
 do
 if [[ ! -z $i ]]
 then
    CAL_FFILE=$(($CAL_FFILE+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_FFILE FONT 
}
#images_format
check_image(){
CAL_IMAFILE=0 
 images_format=("$(ls *.ai)" "$(ls *.bmp)" "$(ls *.gif)" "$(ls *.ico)" "$(ls *.jpeg)" "$(ls *.jpg)" "$(ls *.png)" "$(ls *.ps)" "$(ls *.psd)" "$(ls *.svg)" "$(ls *.tif)")
 for i in ${images_format[@]}
 do
 if [[ ! -z $i ]]
 then
    CAL_IMAFILE=$(($CAL_IMAFILE+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_IMAFILE IMAGE 
}
check_net(){
#internet_based_files
CAL_INTERFILE=0
 internet_based_file=("$(ls *.asp)"  "$(ls *.cer)"  "$(ls *.cfm)"  "$(ls *.cgi)"  "$(ls *.pl)"  "$(ls *.css)"  "$(ls *.htm)"  "$(ls *.js)"  "$(ls *.jsp)"  "$(ls *.part)"  "$(ls *.php)"  "$(ls *.py)"  "$(ls *.rss)"  "$(ls *.xhtml)")
 for i in ${internet_based_file[@]}
 do
 if [[ ! -z $i ]]
 then
    CAL_INTERFILE=$(($CAL_INTERFILE+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_INTERFILE INTERNET
}
#presentation_formats
check_ppt(){
CAL_PPTE=0
 presentation_format=("$(ls *.key)"  "$(ls *.odp)"  "$(ls *.pps)"  "$(ls *.ppt)"  "$(ls *.pptx)")
 for i in ${presentation_format[@]}
 do
 if [[ ! -z $i ]]
 then
    CAL_PPTE=$(($CAL_PPTE+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_PPTE PPT 
}
#Spreadsheet_file
check_excel(){
CAL_EXCEL=0
 Spreadsheet_file=("$(ls *.ods)"  "$(ls *.xls)"  "$(ls *.xlsm)"  "$(ls *.xlsx)")
 for i in ${Spreadsheet_file[@]}
 do
 if [[ ! -z $i ]]
 then
    CAL_EXCEL=$(($CAL_EXCEL+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_EXCEL EXCEL 
}
#system_files
check_sys(){
CAL_SYSFILE=0
 system_file=("$(ls *.bak)"  "$(ls *.cab)"  "$(ls *.cfg)"  "$(ls *.cpl)"  "$(ls *.cur)"  "$(ls *.dll)"  "$(ls *.dmp)"  "$(ls *.drv)"  "$(ls *.icns)"  "$(ls *.ico)"  "$(ls *.ini)"  "$(ls *.lnk)"  "$(ls *.sys)"  "$(ls *.tmp)")
 for i in ${system_file[@]}
 do
 if [[ ! -z $i ]]
 then
   CAL_SYSFILE=$(($CAL_SYSFILE+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_SYSFILE SYSFILE 
}
#Video_file_formats
check_video(){
CAL_VIDEO=0
 Video_file_format=("$(ls *.3g2)"  "$(ls *.3gp)"  "$(ls *.avi)"  "$(ls *.flv)"  "$(ls *.h264)"  "$(ls *.m4v)"  "$(ls *.mkv)"  "$(ls *.mov)"  "$(ls *.mp4)"  "$(ls *.mpg)"  "$(ls *.mpeg)"  "$(ls *.rm)"  "$(ls *.swf)"  "$(ls *.vob)"  "$(ls *.wmv)")
 for i in ${Video_file_format[@]}
 do
 if [[ ! -z $i ]]
 then
    CAL_VIDEO=$(($CAL_VIDEO+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_VIDEO VIDEO 
}
#Word_process_files
check_word(){
CAL_WORD=0
 Word_process_file=("$(ls *.doc)"  "$(ls *.docx)"  "$(ls *.odt)"  "$(ls *.pdf)"  "$(ls *.rtf)"  "$(ls *.tex)"  "$(ls *.txt)"  "$(ls *.wpd)")
 for i in ${Word_process_file[@]}
 do
 if [[ ! -z $i ]]
 then
    CAL_WORD=$(($CAL_WORD+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_WORD WORD 
}
# check_null $CAL_WORD WORD 
#program_files
check_program(){
 CAL_PROGRAM=0
  program_file=("$(ls *.h)" "$(ls *.c)" "$(ls *.cpp)" "$(ls *.class)" "$(ls *.java)" "$(ls *.php)" "$(ls *.cs)" "$(ls *.swift)" "$(ls *.vb)" "$(ls *.dart)" "$(ls *.ts)" "$(ls *.tsx)" "$(ls *.sc)"  "$(ls *.scala)" "$(ls *.scm)" "$(ls *.kt)" "$(ls *.kts)" "$(ls *.ktm)" "$(ls *.m)" "$(ls *.mat)" "$(ls *.go)" "$(ls *.rb)" "$(ls *.r)" "$(ls *.rdata)" "$(ls *.rds)" "$(ls *.rda)" "$(ls *.py)")
  for i in ${program_file[@]}
  do
  if [[ ! -z $i ]]
  then
    CAL_PROGRAM=$(($CAL_PROGRAM+$(echo "$i" | wc -l)))
      echo -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))m\e[1m  $i" 
fi
done

check_null $CAL_PROGRAM PROGRAM 
}
#objective c
#C
#C++
#java
#php
#csharp
#swift
#Visual_Basic_language
#Dart
#TypeScript
#Scala
#Scheme
#Kotlin
#Mat_lab
#Golang
#R

# if [ "$1" == "-zip" ]; then
# 	check_zip
# fi
while [ ! $# -eq 0 ]
do
	case "$1" in
		 -zip)
			check_zip
			exit
			;;
		 -audio)
			check_audio
			exit
			;;
             -bin)
			check_bin
			exit
			;;
             -email)
			check_email
			exit
			;;
             -db)
			check_db
			exit
			;;
             -exe)
			check_exe
			exit
			;;
             -font)
			check_font
			exit
			;;
             -image)
			check_image
			exit
			;;
             -net)
			check_net
			exit
			;;
             -ppt)
			check_ppt
			exit
			;;
             -excel)
			check_excel
			exit
			;;
             -sys)
			check_sys
			exit
			;;
             -video)
			check_video
			exit
			;;
             -program)
			check_program
			exit
			;;
             -word)
			check_word
			exit
			;;
             
	esac
	shift
done
