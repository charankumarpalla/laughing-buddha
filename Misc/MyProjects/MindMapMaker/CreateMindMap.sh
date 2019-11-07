#!/bin/bash



########################################################
# Stage 1 : RAW Tree Structure to Final Tree Structure
########################################################

echo "Enter Folder Path" 
read folder

echo "Enter Name For MindMap" 
read name

tree_a=$(mktemp /tmp/tree_xXXX)
tree_final=$(mktemp /tmp/tree_xXXX)
mm_first=$(mktemp /tmp/tree_xXXX)
mm_temp=$(mktemp /tmp/tree_xXXX)
mm_txt=$(mktemp /tmp/tree_xXXX)

# echo "$tree_a" 
# cat "$tree_a"
(exec tree -d -L 6 $folder) > $tree_a
# cat $tree_a

(sed   '1d;$d;s/├──/   /g;s/├──/   /g;s/└──/   /g;s/│/ /g;' $tree_a) > $tree_final

# cat $tree_final

# INPUT='/Users/charankumar/Downloads/text-to-freemind-master/temp.yaml'

###############################################
# Stage 2 : Convert Spaces to Indentations
###############################################

# while loop
echo "$name" > $mm_first

echo -e "\n\n----->>>>>>>"

callCharacters(){

	space=" " 
	indent=""
	word=""
	n=0

		# echo "In callCharacters()"
	
		t='/Users/charankumar/Downloads/text-to-freemind-master/dum.yaml'
		# tmpfile=$t;
		echo -e "$line" > $mm_temp


		# echo -e "$line" > $t
		# echo -e "Line is : $line" 
		
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



		done < $mm_temp
		# done < echo -e "$line" 
	
	    echo -e "${out//?/$dash}${word}" >> $mm_first
		# cat /Users/charankumar/Downloads/text-to-freemind-master/b.yaml

}

while IFS= read -r line
do
		callCharacters $line
		echo -e "$line" > /Users/charankumar/Downloads/text-to-freemind-master/dum.yaml
done < "$tree_final"


cat $mm_first

cp $mm_first $mm_txt

echo -e "\n\n<<<<<<-----"

(exec text-to-freemind $mm_txt > $name".mm") 


rm /tmp/tree_*
