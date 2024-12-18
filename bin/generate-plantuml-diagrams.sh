#! /bin/sh
#cd /Users/micro/IdeaProjects/1ANO_2SEMESTRE/PI
echo "LOG: Generate Plantuml Diagrams"
exportFormat="svg"
#monochrome="true"
extra="-SdefaultFontSize=20"
#extra="-SdefaultFontName=Times New Roman -SdefaultFontSize=10"

processing single files
# shellcheck disable=SC2044
for plantuml_file in `find ../docs -name "*.puml" -type f`;
do
 path=${plantuml_file%/*}
 #filename=${plantuml_file##*/}
 echo "Processing file: $plantuml_file"

  path="$path/svg"

  echo "PATH:$path"
  mkdir -p $path

  #-Smonochrome=$monochrome
	java -jar ../libs/plantuml-1.2023.1.jar -t$exportFormat $plantuml_file -o "../svg"
done

#for folder in `find docs -name "puml" -type d`;
#do
  #-Smonochrome=$monochrome
 # echo "Processing folder: $folder"
	#java -jar libs/plantuml-1.2023.1.jar $extra -t$exportFormat $folder -o "../svg"
#done

#echo "Finished"