pandoc -s $1 --template rss-template.html -t html -o temp.xml
sed -i -e "s/LINKTAG/$HTMLNAME/g" temp.xml
sed -i -e "s/PUBDATETAG/$(date -R)/g" temp.xml
mv ../rss.xml ../rss.xml.old
head -8 ../rss.xml.old >> ../rss.xml
cat temp.xml >> ../rss.xml
tail -n+9 ../rss.xml.old >> ../rss.xml
rm temp.xml
