#!/bin/bash
# data file


# echo "Enter Folder Path" 
# read folder


# echo "Enter Name For MindMap" 
# read name



tmpfile=$(mktemp /tmp/abc-script.yaml)
echo "dasdsa" >"$tmpfile"
cat $tmpfile
rm $tmpfile

cat $tmpfile

INPUT='/Users/charankumar/Downloads/text-to-freemind-master/temp.yaml'

# while loop
echo "Mindmap" > /Users/charankumar/Downloads/text-to-freemind-master/b.yaml


echo -e "\n\n----->>>>>>>"

callCharacters(){

	space=" " 
	indent=""
	word=""
	n=0

		# echo "In callCharacters()"
		# tmpfile=$(mktemp /tmp/abc-script.yaml)
		t='/Users/charankumar/Downloads/text-to-freemind-master/dum.yaml'
		# tmpfile=$t;
		echo -e "$line" > "$t"


		# echo -e "$line" > $t
		echo -e "Line is : $line" 
		
		while IFS= read -r -n1 char

			do
				# echo "in Inner While"
			if [[ "$char" != "$space" ]] ; then
				# echo "Not $char"
				word=$word$char
			else 
				indent=$indent$space
				# echo "YES"
				n=$(( $n + 1 ))
			fi


			# echo $n
			tabs=$(($n/4))
			# echo "tabs needed $tabs"



			i=0
			out=""
			comma=","
				while [[ "$i" -lt "$tabs" ]]
				do
					out=$out$comma
					i=`expr $i+1`
				done

			# echo "$out"
			dash="\t"

			
			# echo -e "\n${out//?/$dash}${word}" >> /Users/charankumar/Downloads/text-to-freemind-master/b.yaml

# cat /Users/charankumar/Downloads/text-to-freemind-master/b.yaml



		done < "$t"
		# done < echo -e "$line" 
	
	    echo -e "${out//?/$dash}${word}" >> /Users/charankumar/Downloads/text-to-freemind-master/b.yaml
		# cat /Users/charankumar/Downloads/text-to-freemind-master/b.yaml

}

while IFS= read -r line
do
		callCharacters $line
		echo -e "$line" > /Users/charankumar/Downloads/text-to-freemind-master/dum.yaml
done < "$INPUT"


cat /Users/charankumar/Downloads/text-to-freemind-master/b.yaml



echo -e "\n\n<<<<<<-----"
