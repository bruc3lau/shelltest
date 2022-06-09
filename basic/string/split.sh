IN="bla@some.com;john@home.com"
mails=$(echo $IN | tr ";" "\n")
for addr in $mails
do
    echo "> [$addr]"
done