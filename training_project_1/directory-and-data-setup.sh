#!/bin/bash
# This file will create and download all of the neces

cd $USER_HOME

mkdir wiki_hive_project
cd wiki_hive_project

mkdir clickstream
cd clickstream
wget 'https://dumps.wikimedia.org/other/clickstream/2020-09/clickstream-enwiki-2020-10.tsv.gz'
gunzip *.gz

cd ..
mkdir pageview
cd pageview
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201019-220000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201019-230000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-000000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-010000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-020000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-030000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-040000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-050000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-060000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-070000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-080000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-090000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-100000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-110000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-120000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-130000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-140000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-150000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-160000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-170000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-180000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-190000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-200000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-210000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-220000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201020-230000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201021-000000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201021-010000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201021-020000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201021-030000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201021-040000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201021-050000.gz'
wget 'https://dumps.wikimedia.org/other/pageviews/2020/2020-10/pageviews-20201021-060000.gz'
gunzip *.gz
cat pageviews-* >> cummulative_pageviews

cd ..
mkdir revision_history
cd revision_history
echo "This file needs a most recent month update"
echo "Please enter current year (4-digit, YYYY): "
read year
echo "Please enter *last* month (2-digit, MM): "
read month

date_string = $year + "-" + $month

wget "https://dumps.wikimedia.org/other/mediawiki_history/$date_string/enwiki/$date-string.enwiki.2020-10.tsv.bz2"
bunzip2 *.bz2
