#!bin/bash

ch=1;
while [ $ch -eq 1 ]
do
echo "1.Rename the all files with extension .txt inside your assignment directory and list them on console"
echo "2.Rename the all files whose name starts with letter "x" inside your assignment directory and list them on console"
echo "3.Create a folder named public_html, Place a 'readme.txt' file in there. Set up file permissions to 777 ";
echo "4.Exit";
read ch;
    case  $ch  in
        1)ls
           rename 's//abcd/' *.txt|tee -a assignment_log.tx ;
           ls|tee -a assignment_log.tx ;
           date|tee -a assignment_log.tx ;
           echo $var>assignment_log.tx;
           ;;
        2) ls -c
           rename 's//abcd/' x*|tee -a assignment_log.tx ;
           ls|tee -a assignment_log.tx ;
           date|tee -a assignment_log.tx ;
           ;;
        3)mkdir public_html;
          touch public_html/readme.txt;
          cd public_html;
          chmod 777 readme.txt;
          ls -r|tee -a assignment_log.tx ;
          date|tee -a assignment_log.tx ;
          ;;
        4)ch=0;;
        *)echo "invalid choice";
    esac 

done






