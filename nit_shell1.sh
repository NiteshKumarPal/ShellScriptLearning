#!bin/bash

cat assignment_log.txt
ch=1;
while [ $ch -eq 1 ]
do

echo "1.Hostname of the system you are on"
echo "2.Type and version of the operating system the machine machine is running"
echo "3.Full path to your home directory"
echo "4.Other users are logged into the machine you are using?"
echo "5.Groups you belong to"
echo "6.Files (excluding directories) are located in your home directory and all its subdirectories"
echo "7. Exit"

echo "Enter the choice"

read ch;



          case  $ch  in
                1)  echo "`hostname&&date`"|tee -a assignment_log.tx ;   
     		    
                    ;;
                2)  echo "operating system:`uname -o`"|tee -a assignment_log.tx ; 
                    lsb_release -r|tee -a assignment_log.tx; 
                    date|tee -a assignment_log.tx ;
                    ;;
                3)  echo "$HOME"|tee -a assignment_log.tx ;
                    date|tee -a assignment_log.tx ;
                    ;;
                4)  who|tee -a assignment_log.tx;
                    date|tee -a assignment_log.tx ;
                    ;;
                5)  whoami|tee -a assignment_log.tx;
                    date|tee -a assignment_log.tx ;
                    ;;
                6)  find -type f -print|tee -a assignment_log.tx; 
                    date|tee -a assignment_log.tx ;
                    ;;
                7)  ch=0
                    ;;
                *) echo "Invalid choice";;             
          esac 

done


