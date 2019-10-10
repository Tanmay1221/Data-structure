echo -e "1.Number and Name of player\n2.Enter Numbers and print in acending\n3.Show Maximum Number\n4.Three largest Number\n5.Three smallest Number\n6.Count of numbers\n7.Enter a names in file and show\n8.Print name file in acending\n9.Print name file in acending\n10.Print file without blank lines\n11.Show Highest CPU usage process\n12.Accept String and print vertically\n13.Concat string\n14.Palindrom string or not\n15.String Upper\n16.String Lower\n17.remove all the numbers from the string\n18.remove all the vowels from the string\n19.Exit"
read ch

until [ $ch -eq 19 ]
do 
	case $ch in
	1)
		echo "Enter Number and Name of player"
		read number name
		echo "$number  $name" >> player
		echo "The data of file is follow:"
		cat player
		echo "*************************************"
		;;
		
	2)	
		echo "Enter Numbers the loop will stop when you enter -1"
		read n
		while [ $n -ne -1 ]
		do
			echo "$n" >> number
			read n
		done
		echo "The file in sorted format is as follow"
		sort -n number
		echo "*************************************"
		;;
	3)
		echo "The maximum number is:"
		sort -n number | tail -1 
		echo "*************************************"
		;;
	4)
		echo "The three largest numbers are:"
		sort -n number | tail -3 
		echo "*************************************"
		;;
	5)
		echo "The three smallest numbers are:"
		sort -n number | head -3 
		echo "*************************************"
		;;
	6)
		wc -c number
		echo "*************************************"	
		;;
	7)
		echo "Enter names.....the loop will stop when you enter :Quit"
		read n
		while [ $n != 'quit' ]
		do
			echo "$n" >> names
			read n
		done
		echo "The data entered in file is as follw"
		cat names
		echo "*************************************"
		;;
	8)
		echo "The file in asending order as follow:"
		sort names
		echo "*************************************"
		;;
	9)
		echo "The file in asending order as follow:"
		sort -r names
		echo "*************************************"
		;;
	10)
		echo "Ente a filename"
		read fname
		echo "The file Without blank lines is as follow:"
		grep "\S" $fname
		echo "The Number of blank lines are:"
		grep "^$" $fname | wc -l
		echo "The Number of Non blank lines are:"
		grep "\S" $fname | wc -l
		echo "*************************************"
		;;
	11)
		echo "The processes are as follow:"
		ps -e -o pid,pcpu |sort -k 2|tail -2
		echo "*************************************"
		;;
	12)
		echo "Enter a String"
		read str
		echo "$str" > string
		i=1
		length=`expr length "$str"`
		((length=length+1))
		until [ $i -eq $length ]
		do
		cut  -c $i string
		((i=i+1))
		done
		echo "*************************************"
		;;
	13)
		echo "Enter first String"
		read str1
		echo "Enter second String"
		read str2
		echo "$str1$str2" > string
		wc -c string
		echo "*************************************"
		;;
	14)
		echo "Enter a string:"
		read str
		str1=$(echo $str | rev)
		echo "$str1"
		if [ $str == $str1 ]
		then 
			echo "The String is Palindrome"
		else
			echo "The String is not Palindrome"
		fi
		echo "*************************************"
		;;
	15)
		echo "Enter a string:"
		read str
		echo "$str" | tr a-z A-Z 
		echo "*************************************"
		;;
	16)
		echo "Enter a string:"
		read str
		echo "$str" | tr A-Z a-z 
		echo "*************************************"
		;;
	17)
		echo "Enter a string:"
		read str
		echo "$str" | tr -d '0123456789'
		echo "*************************************"
		;;
	18)
		echo "Enter a string:"
		read str
		echo "$str" | tr -d 'aeiou'
		echo "*************************************"
		;;
	19)	
		;;
	
	*)
		echo "Wrong Choice please enter again"
		echo "*************************************"
		
	esac 
	echo -e "1.Number and Name of player\n2.Enter Numbers and print in acending\n3.Show Maximum Number\n4.Three largest Number\n5.Three smallest Number\n6.Count of number\n7.Enter a names in file and show\n8.Print name file in acending\n9.Print name file in acending\n10.Print file without blank lines\n11.Show Highest CPU usage process\n12.Accept String and print vertically\n13.Concat String\n14.Palindrom string or not\n15.String Upper\n16.String Lower\n17.remove all the numbers from the string\n18.remove all the vowels from the string\n19.Exit"
	read ch
done
