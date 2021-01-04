---
layout: single
title: BiomchBERT + Biomch-L Literature Updates
excerpt: Using Google's BERT network to classify biomechanics publications
header:
  teaser: bert.jpg
collection: project
author_profile: true
share: true
layout: splash
---
<br>

Since 1998, volunteers in the Biomechanics community have searched publication databases for relevant articles, categorized 
them, and shared them via the 
[Biomch-L Literature Update](https://biomch-l.isbweb.org/forum/biomch-l-forums/literature-update). While parts of the 
current Literature Update process are automated (e.g. publication search, parsing of publication information), a 
substantial amount of time is required to go through the papers and categorize them. Neural networks performed well
in classification tasks and may be a viable solution to automating the Biomch-L Literature Update process, but large
datasets are needed to train neural networks. Thanks to those who have diligently maintained the Literature Updates over
the years, there are tens of thousands of categorized publications ready to be used to train a neural network!

### Who's BERT?
[BERT](https://ai.googleblog.com/2018/11/open-sourcing-bert-state-of-art-pre.html) is an open-source neural network
developed by Google AI and originally trained on all the Wikipedia text to discern the relationship between
sentences (semantic similarity) in a given corpus and improve the quality of Google search results. BERT has been used
to improve a computer's ability to accomplish a variety of natural language processing tasks, such as sentiment
analysis, question answering, and document classification. Using BERT to classify biomechanics publications would
reduce the time required to generate the Biomch-L Literature Update. 

### Introducing BiomchBERT
In order to fine-tune BERT to classify biomechanics publications, we needed to create a dataset from the previous Biomch-L 
Literature Updates (16,000 papers). Gary Bruening developed a webscraper that extracted the publication information (title,
abstract, authors, journal) and assigned topic for each Literature Update published from 2010-2018. Then, Ryan Alcantara
fine-tuned a [version of BERT trained on text from MEDLINE/PubMed](https://tfhub.dev/google/experts/bert/pubmed/2) to
classify publications into 1 of 27 categories. This fine-tuned BERT network, named BiomchBERT, can now be used to classify 
new publications based on their title and abstract with 72% accuracy. That level of accuracy may not seem very impressive
at first, but consider the overlap between categories like "Comparative" and "Evolution/Anthropology", or 
"Joints/Cartilage", and "Orthopaedics/Surgery". Many publications can reasonably be categorized into one of several 
categories.

![BiomchBERT_Accuracy](https://raw.githubusercontent.com/alcantarar/BiomchBERT/main/Plots/BiomchBERT_confusion_matrix.png) *BiomchBERT has a prediction accuracy of 72% across 27 categories (tested on 1,600 publications)*

Starting January 1st, 2021, BiomchBERT will be used to categorize the publications in the Biomch-L Literature Update. 
Don't worry, a human will still be involved in double checking BiomchBERT's work. Source code for BiomchBERT can be found
[here](https://github.com/alcantarar/BiomchBERT). Weekly Literature Updates are posted on [Biomch-L](https://biomch-l.isbweb.org/forum/biomch-l-forums/literature-update).

*Read about the early attempt to automate the Biomch-L Literature Update [here](https://ryan-alcantara.com/projects/p98_literature/)*
