#for each roll no, name
#       find record corresponding to roll no
#               add marks of corresponding project
#       print roll no, name, marks

awk -v pF="$2" mF="$3" 'BEGIN{FS=","}
{
    print $1"\t" $2
}' $1



awk 'BEGIN {
        cmd = "tr [a-z] [A-Z]"
        print "hello, world !!!" |& cmd
        close(cmd, "to")
        
        cmd |& getline out
        print out;
        close(cmd);
    }' $1
