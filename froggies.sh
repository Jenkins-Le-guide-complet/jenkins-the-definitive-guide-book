#!/bin/sh

echo "<itemizedlist>"
git log --pretty=format:"%an" hudsonbook-content-fr/ | sort -u | while read line ;do
	tosearch=`echo $line|sed "s/ /%20/g"`
	result=`curl -s https://api.github.com/legacy/user/search/$tosearch | grep login | tr -s ' ' | cut -d'"' -f4`
   echo "  <listitem><ulink url=\"http://github.com/$result\">$line</ulink></listitem>"
done
echo "</itemizedlist>"

