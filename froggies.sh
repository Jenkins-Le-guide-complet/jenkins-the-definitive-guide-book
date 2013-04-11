#!/bin/sh

echo "<itemizedlist>"
git log --pretty=format:%an hudsonbook-content-fr/ | sort -u | while read line ;do
   echo "  <listitem>$line</listitem>"
done
echo "</itemizedlist>"

