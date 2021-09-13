
#!/bin/bash
exec 2>/dev/null #it prevent from the error
IFS=$'\n' # To add new line in every list

#list directory
check_dir(){
d=$(ls -rtd */ ) 
if [[ ! -z $d ]];
then    
    echo -e "\n"
  for i in $d 
  do
     echo -e "  \e[0;91m\e[1m🗀 $i"| sed 's/.$//'   
  done
    echo -e " -$(echo "$d" | wc -l )" "Directory-"
    echo -e "\n"
fi

}

tf=$(ls)
if [[ $tf -eq 0 ]] #if the directory is empty it shows
then 
      echo "This dirctory is Empty,"
fi

# print the value from every funtion
check_null(){ 
if [[ $1 -ne 0 ]]
then
      echo -e " -$1 $2-\e[0m\n"
fi
}

#audio_files
check_audio(){
CAL_AUDIO=0 #variable for assignment
#exetensions to list
 audio_file=("$(ls *.mp3)" "$(ls *.aif)" "$(ls *.cda)" "$(ls *.mid)" "$(ls *.midi)" "$(ls *.mpa)" "$(ls *.ogg)" "$(ls *.wav)" "$(ls *.wma)" "$(ls *.wpl)")
 #list all files in the file named audio_files
  echo -e "\n"
 for i in ${audio_file[@]}
 do
 if [[ ! -z $i ]] #check whether the data is empty
 then
     CAL_AUDIO=$(($CAL_AUDIO+$(echo "$i" | wc -l)))  # print value
      echo -e "\e[3\e[94m 𝄞 $i" #giving color
fi
done
# if [[ $CAL_AUDIO -eq 0 ]] #exe if the fuction don't have output
# then 
#     echo "There is no formats under this exetensions"
# fi

check_null $CAL_AUDIO audio #return value to funtion check_null
}

#zip_files
check_zip()
 {
CAL_ZIP=0
 file_zip_=("$(ls *.arj)" "$(ls *.deb)" "$(ls *.pkg)" "$(ls *.rar)" "$(ls *.rpm)" "$(ls *.tar)" "$(ls *.tar.gz)" "$(ls *.tar.xz)" "$(ls *.z)" "$(ls *.zip)" "$(ls *.jar)" "$(ls *.7z)")
 for i in ${file_zip_[@]}
 do
 if [[ ! -z $i ]] 
 then
     CAL_ZIP=$(($CAL_ZIP+$(echo "$i" | wc -l)))
      echo -e "\e[93m\e[1m 🤐 $i" 
fi
done

# if [[ $CAL_ZIP -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_ZIP Zip 
 }


#disc_image
check_bin(){
CAL_IMAGE=0
 disc_image=("$(ls *.vcd)" "$(ls *.bin)" "$(ls *.dmg)" "$(ls *.iso)" "$(ls *.toast)")
 for i in ${disc_image[@]}
 do
 if [[ ! -z $i ]]
 then
     CAL_IMAGE=$(($CAL_IMAGE+$(echo "$i" | wc -l)))
      echo -e " \e[1m📄$i"
      
fi
done
# if [[ $CAL_IMAGE -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_IMAGE Disc 
}

#database_files
check_db(){
CAL_DATA=0
 database_file=("$(ls *.csv)" "$(ls *.dat)" "$(ls *.db)"  "$(ls *.dbf)"  "$(ls *.log)"  "$(ls *.mdb)"  "$(ls *.sav)"  "$(ls *.sql)"  "$(ls *.xml)")
  for i in ${database_file[@]}
 do
 if [[ ! -z $i ]]
 then
     CAL_DATA=$(($CAL_DATA+$(echo "$i" | wc -l)))
      echo -e " 🗄️\e[90m\e[1m$i" 
fi
done

# if [[ $CAL_DATA -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_DATA Database 
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
     echo -e " 📮\e[91m\e[1m$i"  
fi
done

# if [[ $CAL_EFILE -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_EFILE E-mail 
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
     echo -e " ⚙️\e[90m\e[1m $i"
fi
done

# if [[ $CAL_EXEFILE -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_EXEFILE Executable 
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
    echo -e "\e[35m\e[1m 🅕 $i" 
fi
done
 
# if [[ $CAL_FFILE -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_FFILE Font 
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
    echo -e " 🖼️\e[92m\e[1m $i"   
fi
done

# if [[ $CAL_IMAFILE -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_IMAFILE Image 
}



#internet_based_files
check_net(){
CAL_INTERFILE=0
 internet_based_file=("$(ls *.asp)"  "$(ls *.cer)"  "$(ls *.cfm)"  "$(ls *.cgi)"  "$(ls *.pl)"  "$(ls *.css)"  "$(ls *.htm)"  "$(ls *.js)"  "$(ls *.jsp)"  "$(ls *.part)"  "$(ls *.php)"  "$(ls *.py)"  "$(ls *.rss)"  "$(ls *.xhtml)")
 for i in ${internet_based_file[@]}
 do
 if [[ ! -z $i ]]
 then
    CAL_INTERFILE=$(($CAL_INTERFILE+$(echo "$i" | wc -l)))
    echo -e " \e[90m\e[1m🕸️ $i"
fi
done

# if [[ $CAL_INTERFILE -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_INTERFILE Internet
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
    echo -e " \e[34m\e[1m🕮 $i" 
fi
done

# if [[ $CAL_PPTE -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_PPTE Ppt
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
      echo -e " \e[32m\e[1m❎$i" 
fi
done

# if [[ $CAL_EXCEL -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_EXCEL Excel 
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
    echo -e " 💻\e[1m$i" 
fi
done

# if [[ $CAL_SYSFILE -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_SYSFILE sysfile 
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
    echo -e " 🎥\e[90m\e[1m$i" 
fi
done

# if [[ $CAL_VIDEO -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_VIDEO Video 
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
       echo -e " 🗒️\e[3m\e[1m $i"
fi
done

# if [[ $CAL_WORD -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_WORD word 
}



#program_files
check_program(){
 CAL_PROGRAM=0
  program_file=("$(ls *.h)" "$(ls *.c)" "$(ls *.cpp)" "$(ls *.class)" "$(ls *.java)" "$(ls *.php)" "$(ls *.cs)" "$(ls *.swift)" "$(ls *.vb)" "$(ls *.dart)" "$(ls *.ts)" "$(ls *.tsx)" "$(ls *.sc)"  "$(ls *.scala)" "$(ls *.scm)" "$(ls *.kt)" "$(ls *.kts)" "$(ls *.ktm)" "$(ls *.m)" "$(ls *.mat)" "$(ls *.go)" "$(ls *.rb)" "$(ls *.r)" "$(ls *.rdata)" "$(ls *.rds)" "$(ls *.rda)" "$(ls *.py)")
  for i in ${program_file[@]}
  do
  if [[ ! -z $i ]]
  then
    CAL_PROGRAM=$(($CAL_PROGRAM+$(echo "$i" | wc -l)))
      echo -e " 👨‍💻\e[93m\e[1m$i" 
fi
done

# if [[ $CAL_PROGRAM -eq 0 ]]
# then 
#     echo "There is no formats under this exetensions"
# fi
check_null $CAL_PROGRAM Program 
}

#These are the program exetensions that were added..

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

get_help()
{
cat << _EOF_ 

      -zip : It will list the "Compressed file".

      -audio : It will list the "Audio file".

      -bin : It will list the "Disc and media file". 

      -email : It will list the "E-mail file".

      -db : It will list the "Data and database file".

      -exe : It will list the "Executable file".

      -font : It will list the "Font file".	

      -image : It will list the "Image file".	

      -net : It will list the "Internet-related file".

      -ppt : It will list the "Presentation file".

      -excel : It will list the "Spreadsheet file".

      -sys : It will list the "System related file".  

      -video : It will list the "Video file".

      -program : It will list the "Programming files".

      -word : It will list the "Word processor and text file".

      -list : It will list the files on that directory.

      -dir : It will the directory.
      
_EOF_
}

# if [ "$1" == "-zip" ]; then
# 	check_zip
# fi
# if [[ ! $# -eq 1 ]]
# then
#     echo "use lf -help to know how to use this command :)"
# fi
# check_dir
# check_zip
# check_audio
# check_bin
# check_email
# check_db
# check_exe
# check_image
# check_net
# check_ppt
# check_excel
# check_sys
# check_video
# check_program
# check_word

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
             -help)
			get_help
			exit
			;;
             -list)
                  echo $(ls -1)| xargs -n 1
                  exit
                  ;;
             -dir)
                  check_dir
                  exit
                  ;;
             
             
	esac
	shift
done
#help

