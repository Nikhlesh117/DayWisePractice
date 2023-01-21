for files in *.log
do
        folderName=`echo $files | date |awk -F. '{print $1, $3 , $2, $6}'`;
	echo $files;
        echo $folderName;
        printf "\n";
        if [ -d $folderName ]
        then
                rm -r $folderName;
        fi
        mkdir $folderName;
        cp $files $folderName/$files;
	
done
