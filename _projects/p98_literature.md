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
  
For over 20 years there have been a number of people in the Biomechanics community who have searched publication databases for relevant articles, categorized them, and then shared them with the Biomch-L community in the form of a weekly [Literature Update](https://biomch-l.isbweb.org/forums/7-Literature-Update). The first Literature Update post was by Dr. Rodger Kram in 1998 (at 2:02am!): 

>Biomch-Lers:  
UC Berkeley library allows campus users to have free use of the Current  
Contents data base.  
I have coupled this directly to my e-mail so that once per week the UC system  
conducts an automatic search of the data base for specified keywords etc.  
and sends me the updated results by e-mail.  
>  
>Relevent to this list, I search the keywords "biomechanics OR locomotion".  
This has made me aware of the breadth of biomechanics and also of articles  
in journals that I don't subscribe to and seldom scan. I think that  
this could be useful to a significant number ofl of Biomch-L users, and  
having received the blessings of the list moderators, I will begin posting  
my "weekly update" to Biomch-L.
>  
>One thing that I have learned is that there is a tremendous amount of  
research taking place on the biomechanics and "locomotion" of cells and  
organelles within cells. Biomch-L deals mostly with the organ or organism  
scale of things. Similarly, many "locoomotion" hits are for studies of  
pharmacological effects on rats. Locomotion is apparently used as an index  
or assay of drug effect.
>  
>I post these references only in an effort to give something back to  
Biomch-L. If you find these posts annoying, let me know. If you find them  
useful and want me to continue, let me hear that too.  
>
>Rodger
  
What stands out to me about Rodger's post was that he found a way to automate part of the literature search and wanted to give something back to Biomch-L. I'm find myself in a similar place 20 years later: I want to further automate the weekly Literature Update, but by using [Machine Learning](/images/ML.gif) to predict the general topic of a biomechanics-related paper given its title. 
  
While parts of the current Literature Update process are automated, there is still a significant time commitment required to go through the papers and categorize them. Thanks to the many people who have maintained the Literature Updates over the years, there are years of weekly Literature Updates containing paper titles and their assigned topic. 
  
Luckily for me, I was able to convince another graduate student, Gary Bruening, that this was an interesting idea. He wrote a python script that crawls through the Literature Updates and parses out the paper's information (title, authors, assigned topic, etc.) and suprised me with an dataset of over 37,000 biomechanics papers published since 2010! This provided a reasonable dataset to train and test the classification model. 

We trained and compared multiple classification Machine Learning algorithms, settling on a Convolutional Neural Network. Then, we created a python script that searches PubMed for biomechanics-related papers published in the last week using Rodger's original keywords: `'Biomech*[Title/Abstract] OR locomot*[Title/Abstract]'`. We then use the trained CNN model to classify the papers from PubMed. Last, the script compiles the search results, formats their citations, and organizes them by topic. The end product is a markdown (.md) file saved to the [Literature Updates](https://github.com/alcantarar/literature_update/tree/master/Literature_Updates) folder. Here's a preview:  



>BONE
----
>
>* [Computational Modeling of Bone Cells and Their Biomechanical Behaviors in Responses to Mechanical Stimuli.](https://www.ncbi.nlm.nih.gov/pubmed/31002595)
Wang L, Dong J, Xian CJ,
*Critical reviews in eukaryotic gene expression*.  
>
>* [Computational modal analysis of a composite pelvic bone: convergence and validation studies.](https://www.ncbi.nlm.nih.gov/pubmed/30999766)
Henyš P, Čapek L,
*Computer methods in biomechanics and biomedical engineering*.  
  
While the Classification model is fairly robust, there's always room to improve its performance. If you're interested in contributing to this project, the code and data used are located in my repository: [www.github.com/alcantarar/literature_update/](https://github.com/alcantarar/literature_update/)



