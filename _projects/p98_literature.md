---
layout: single
title: Biomechanics Literature Search
excerpt: Python script searches/collects biomechanics papers published in the last week
header:
  teaser: pubmed_teaser2.png
collection: project
author_profile: false
share: true
---
<br>  
PubMed has an API that you can use to access their database of research articles!
<br>  
First, I modified python code from a blog post by [Marco Bonzanini](https://marcobonzanini.com/2015/01/12/searching-pubmed-with-python/) to search PubMed for Biomechanics-related research articles. It prints out a bibliography in GitHub markdown format that contains the matching research papers with hyperlinks to their page on PubMed:
<br>  
> * [Extrapolating Metabolic Savings in Running: Implications for Performance Predictions.](https://www.ncbi.nlm.nih.gov/pubmed/30804807)
> Kram R,
> Hoogkamer W,
> Frontiers in physiology
> <br>  
> 
> * [Does Metabolic Rate Increase Linearly with Running Speed in all Distance Runners?](https://www.ncbi.nlm.nih.gov/pubmed/30539111)
> Kipp S,
> Grabowski AM,
> Kram R,
> Byrnes WC,
> Sports medicine international open
<br>  

Next, I’m going to see if I can use machine learning to classify papers similar to how the Literature Update is constructed on [Biomch-L](https://biomch-l.isbweb.org/forums/7-Literature-Update)!
<br>  
The script and instructions on how to change search terms or date range can be found at my [Literature Update Repository](https://github.com/alcantarar/literature_update)

