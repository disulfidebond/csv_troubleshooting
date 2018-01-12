# common problems are any of the following: 
  # # rows are mashed together
  # # newlines intermittently do not appear
  # # last line of file is half of document mashed together
# WHEN the following is true:
  # # the document readily opens in a text editor, or displays text using *head*, *tail*, or *less* commands in bash

# solution:  There are misplaced or unconnected quotes.  

# To remove all double quotes, which should not affect the content in the file
# but as always, making a backup beforehand is advisable 
cp filename.txt.csv filename.bk.txt.csv
# use:
sed -i -e 's/\"//g' filename.txt.csv

# to display where the first 5 double quotes are, use:
grep -m 5 '"' filename.txt

