wget https://raw.githubusercontent.com/s7117/csce215labs/main/mnist_condensed.csv mnist_condensed.csv
head mnist_condensed.csv
tail -n 10 mnist_condensed.csv | head -n 3 > lab05.out
wc -l < lab05.out
sed -n 23p mnist_condensed.csv > lab05.out
cat lab05.out | wc -l
tail mnist_condensed.csv | head -n 10 | tail -n 3 >> lab05.out
sed -n 23p mnist_condensed.csv >> lab05.out
wc -l lab05.out
mkdir dir{A..Z} && touch dir{A..Z}/file{01..10}.txt
mkdir dir123 dir
mkdir OLD
mv dir* mnist_condensed.csv OLD/
rm -r OLD
