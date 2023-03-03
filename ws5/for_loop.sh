FILE="customer_reviews.txt"
LINES=$(cat $FILE)
for LINE in $LINES
do
fgrep -h "$LINE" amazon_reviews_us_Books_v1_02.tsv  > CUSTOMERS/$LINE.txt
done
