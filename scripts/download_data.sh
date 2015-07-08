#!/bin/bash

cd $1

mkdir wiki && cd wiki
wget http://dumps.wikimedia.org/dewiki/latest/dewiki-latest-pages-articles1.xml.bz2
bunzip2 dewiki-latest-pages-articles1.xml.bz2 
cd ..

mkdir dbpedia && cd dbpedia
wget -O wikipedia_links_de.nt.gz http://de.dbpedia.org/downloads/20140813/dewiki-20140813-wikipedia-links.nt.gz
gunzip wikipedia_links_de.nt.gz
wget -O redirects_de.nt.gz http://de.dbpedia.org/downloads/20140813/dewiki-20140813-redirects.nt.gz
gunzip redirects_de.nt.gz
wget -O instance_types_de.nt.gz http://de.dbpedia.org/downloads/20140813/dewiki-20140813-instance-types.nt.gz
gunzip instance_types_de.nt.gz
