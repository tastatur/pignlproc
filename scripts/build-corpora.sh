#!/bin/bash


echo "Extract sentences"
pig -x local \
  -p PIGNLPROC_JAR=target/pignlproc-0.1.0-SNAPSHOT.jar \
  -p LANG=de \
  -p INPUT=$1/wiki/dewiki-latest-pages-articles1.xml \
  -p OUTPUT=$1/wspace \
  examples/ner-corpus/01_extract_sentences_with_links.pig

#echo "Extract types"
#pig -x local \
#  -p PIGNLPROC_JAR=target/pignlproc-0.1.0-SNAPSHOT.jar \
#  -p LANG=de \
#  -p INPUT=$1/dbpedia \
#  -p OUTPUT=$1/wspace \
#  examples/ner-corpus/02_dbpedia_article_types.pig

#echo "Merging"
#pig -x local \
#  -p PIGNLPROC_JAR=target/pignlproc-0.1.0-SNAPSHOT.jar \
#  -p INPUT=$1/wspace \
#  -p OUTPUT=$1/wspace \
#  -p LANG=de \
#  -p TYPE_NAMES=examples/ner-corpus/dbpedia_to_opennlp_types.tsv \
#  -p TYPE_URI=http://dbpedia.org/ontology/Person \
#  examples/ner-corpus/03_join_by_type_and_convert.pig
