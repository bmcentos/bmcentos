#Uso: dif2files <file1> <file2>
#O programa funciona como um diff, comparando dois arquivos
if [ -z $1 -o -z $2] ; then
echo -e "Informe os dois arquivo como parametro --- \n Ex: $0 <arq1> <arq2>"
exit
fi
for x in `cat $1`
do
   diff=`cat $2 | grep -w "$x"`
         if [ "$diff" = "" ]
                  then
                                 echo "$x"
         fi
            done
