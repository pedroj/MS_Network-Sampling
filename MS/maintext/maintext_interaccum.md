---
Title:   Sampling interactions manuscript  
Author:   Pedro Jordano  
Date:     February 24, 2015  
Comment:  Manuscript draft for the sampling interactions study.   
BibTeX:      refs   

--- 
  
#Sampling interaction networks

###Pedro Jordano^1

#####*1, Integrative Ecology Group, Estación Biológica de Doñana, Consejo Superior de Investigaciones Científicas (EBD-CSIC), Avenida Americo Vespucio s/n, E-41092 Sevilla, Spain*



*Correspondence*: Pedro Jordano, Fax: + 34 954 62 11 25.   
E-mail: `jordano@ebd.csic.es` 
 
*Running headline*: Sampling networks

*Keywords*: complex networks, mutualism, plant-animal interactions, frugivory, pollination, seed dispersal, food webs

------------
  
### ABSTRACT  

Sampling ecological interactions presents similar challenges, problems, potential biases, and constraints as sampling individuals and species in biodiversity inventories. Interactions are just pairwise relationships among individuals of two unrelated species, such as those among plants and their seed dispersers in frugivory interactions or those among plants and their pollinators. Sampling interactions is a fundamental step to build robustly estimated interaction networks, yet few analyses have attempted a formal approach to their sampling protocols. 
Here I provide a conceptual framework for interaction sampling by building an explicit analogue to individuals and species sampling, thus extending diversity-monitoring approaches to the characterization of complex networks of ecological interactions.  


---
  
### INTRODUCTION

```
Biodiversity sampling is a labour-intensive activity, and sampling is often not 
sufficient to detect all or even most of the species present in an assemblage.   

Gotelli & Colwell (2011).
```

 

Biodiversity assessment aims at sampling individuals in collections and determining the number of species represented. Given that, by definition, samples are incomplete, these collections enumerate a lower number of the species actually present. The ecological literature dealing with robust estimators of species richness and diversity in collections of individuals is immense, and a number of useful approaches have been used to obtain such estimates [#Magurran:1988mm][#Gotelli:2001uo][#Hortal:2006dc][#Gotelli:2011tb]. Yet sampling species is just probing a single component of biodiversity; interactions among species are another fundamental component, the one that supports the existence of species. For example, the extinction of interactions represents a dramatic loss of biodiversity because it entails the loss of fundamental ecological functions [#ValienteBanuet:2014bw]. This missed component of biodiversity loss, the extinction of ecological interactions, very often accompanies, or even precedes, species disappearance. I can't emphasize enough the relevance of sampling interactions in addition to sampling species and higher taxa in biodiversity assessment programs. Interactions among species are a key component of biodiversity and here I aim to show that most problems associated to sampling interactions in natural communities have to do with problems associated to sampling diversity.    

Interactions in natural ecosystems can be a much better indicator of the richness and diversity of ecosystem functions than a simple list of taxa. Thus, sampling interactions should be a central issue when identifying and diagnosing ecosystem services (e.g., pollination, natural seeding by frugivores, etc.). Fortunately, all the whole battery of biodiversity-related tools used by ecologists to sample biodiversity (species, *sensu stricto*) can be extended and applied to the sampling of interactions. Analogs are common between these approaches. Monitoring interactions is analogous to any biodiversity sampling (i.e., a species inventory [#E31/2562][#Jordano:2009c]) and is subject to similar methodological shortcomings, especially under-sampling [#Coddington:2009fi][#Vazquez:2009p82][#Dorado:2011cf]. When we study mutualistic networks, our goal is to make an inventory of pairwise interactions. We are interested in having a complete list of all the pairwise interactions among species (e.g., all the distinct, species-species interactions among the pollinators and flowering plants) that can exist in a given community. And sampling interactions entails exactly the same problems, limitations, constraints, and potential biases as sampling individual organisms and species diversity.    

The number of distinct pairwise interaction that we can record in a landscape (an area of relatively homogeneous vegetation, analogous to the one we would use to monitor species diversity) is equivalent to the number of distinct classes in which we can classify the recorded encounters among individuals of two different species.  We walk in the forest and see a blackbird $Tm$ picking an ivy $Hh$ fruit and ingesting it: we have a record for $Tm-Hh$ interaction. We keep advancing and record again a blackbird feeding on hawthorn $Cm$ fruits so we record a $Tm-Cm$ interaction; as we advance we encounter another ivy plant and record a blackcap swallowing a fruit so we now have a new $Sa-Hh$ interaction, and so on.  At the end we have a series of classes (e.g., $Sa-Hh$, $Tm-Hh$, $Tm-Cm$, etc.), along with their observed frequencies. Bunge & Fitzpatrick [#Bunge:1993ux] review the main aspects and approaches to estimate the number of distinct classes $C$ in a sample of observations. The sampling of interactions in nature, as the sampling of species, is a cumulative process. We add new, distinct, interactions recorded as we increase sampling effort (Fig. 1). We can obtain an Interaction Accumulation Curve ($IAC$) analogous to a Species cumulating Curve ($SAC$): the observed number of distinct pairwise interactions in a survey or collection as a function of the accumulated number of observations or samples[#Colwell:2009gv].   

#####Fig. 1 here #####
![Figure 1. Sampling species interactions in natural communities. Suppose an assemblage with $A= 3$ animal species (red, species 1-3 with  three, two, and 1 individuals, respectively) and $P= 3$ plant species (green, species a-c with three individuals each) (colored balls), sampled with increasing effort in steps 1 to 6 (panels). In Step 1 we record animal species 1 and plant species 1 and 2 with a total of three interactions (black lines). ](../figures/Fig1.pdf)

Our sampling above would have resulted in a vector $n= [n_1 ... n_C]'$ where $n_i$ is the number of records in the  $i^{th}$ class. As stressed by Bunge & Fitzpatrick (1993), however, the $i^{th}$ class would appear in the sample if and only if $n_i > 0$, and we don't know _a priori_ which $n_i$ are zero. So, $n$ is not observable. Rather, what we get is a vector   $c= [c_1 ... c_n]'$ where $c_j$ is the number of classes represented $j$ times in our sampling: $c_1$ is the number of singletons, $c_2$ is the number of twin pairs, $c_3$ the number of triplets, etc. The problem thus turns to be estimating the number of distinct classes $C$ from the vector of $c_j$ values.

Estimating the number of interactions with resulting robust estimates of network parameters is a central issue in the study of ecological interaction networks [#E31/2562; #Bascompte:2014to]

### Asymptotic diversity estimates
Let's assume a sampling of the diversity in a specific locality, over relatively homogeneous landscape where we aim at determining the number of species present for a particular group of organisms. To do that we carry out transects or plot samplings across the landscape, adequately replicated so we obtain a number of samples. Briefly, $S_{obs}$ is the total number of species observed in a sample, or in a set of samples. $S_{est}$ is the estimated number of species in the community represented by the sample, or by the set of samples, where $est$ indicates an estimator. With abundance data, let $S_k$ be the number of species each represented by exactly $k$ individuals in a single sample. Thus, $S_0$ is the number of undetected species (species present in the community but not included in the sample), $S_1$ is the number of singleton species, $$S_2$$ is the number of doubleton species, etc. The total number of individuals in the sample would be:    
$$n = 􏰢\sum_{k=1}^{S_{obs}}S_k$$    

A frequently used asymptotic, bias corrected, estimator is $$S_{Chao}$$ [#Hortal:2006dc][#Chao:2005wp][#Colwell:2009]:   

$$S_{Chao}= S_{obs} + \frac{S_1 (S_1 −1)}{2(S_2 +1)}$$    

Another frequently used alternative is the Chao2 estimator,  $S_{Chao2}$ [#Gotelli:2001uo], which has been reported to have a limited bias for small sample sizes [#Colwell:1994vt][#Chao:2005wp]:   

$$S_{Chao2}= S_{obs} + \frac{S_1^2}{2S_2}$$ 

A plot of the cumulative number of species recorded,  $S_n$, as a function of some measure of sampling effort (say, $n$ samples taken) yields the species accumulation curve  (SAC) or collector's curve [#Colwell:1994vt]. Such a curve eventually reaches an asymptote converging with $S_{est}$. In an analogous way, interaction accumulation curves (IAC), analogous to SACs, can be used to assess the robustness of interactions sampling for plant-animal community datasets [#E31/2562][#Jordano:2009c][#Olesen:2011a]. 

### Sampling interactions
Now let's consider the situation with samples of interactions. When we sample interactions in the field we record the presence of two species that interact in some way, i.e., a frugivorous pigeon visits a fruiting tree and detaches and ingests the fruit. For example, Snow and Snow[#Snow:1988iu] recorded an interaction whenever they saw a bird "touching" a fruit on  a plant.  In a similar way interactions between pollinators and plants are tallied by recording any visit of a pollinator entering a flower and touching the androceum and/or the gyneceum. We observe and record feeding observations, visitation, occupancy, presence in pollen loads or in fecal samples, etc., to accumulate pairwise interactions, i.e., lists of species partners and the frequencies with which we observe them. Therefore, estimating the sampling completeness of plant–animal interactions for the whole network, requires estimating the number (richness) of distinct pairwise interactions accumulated as sampling effort is increased, pooling the data for all plant and animal species.

Sampling interactions requires filling the cells of an interaction matrix with data. The matrix, $AP$,  is a 2D representation of the interactions among $A$ animal species (rows) and $P$ plant species (columns) [#E31/2562][#Bascompte:2014to]. An interaction matrix $AP$ consists of an array of zeroes or ones, or an array of zeroes and numbers- if the data (interaction frequencies) are quantified. These figures illustrate the values of the pairwise interactions visualized in the $AP$ matrix.

We need to define two basic steps in the sampling of interactions: 1) which type of interactions we sample; and 2) which type of record we get to document the existence of an interaction.

In step 1) there are two considerations we need to take into account. First is whether we are sampling the whole community of interactor species (all the animals, all the plants) or we sample a subset of them. Subsets can be: a) We sample all the potential plants interacting with a subset of the animals; b) We sample all the potential animal species interacting with a subset of the plant species; c) We sample a subset of  all the potential animal species interacting with a subset of all the plant species.

#####Fig. 2 here #####
![Figure 2](../figures/Interaction_subwebs.pdf)

Independently of whether we sample full communities of subset communities we face a problem: some of the interactions that we can visualize in the empty matrix $AP$ will simply not occur. Thus, independently of the sampling effort we put, we'll never document these pairwise interactions. With a total of $AP$ interactions possible, a fraction of them are impossible to record, because they are forbidden. So, we need to account for the frequency of these structural zeros in our matrix before proceeding. For example, most measurements of connectance ($C= I/(AP)$) implicitly ignore the fact that by taking the full product $AP$ in the denominator they are underestimating the actual connectance value.

In step #2 above we face the problem of the type of record we take to sample interactions. This is important because it defines whether we approach the problem of filling up the interaction matrix in a zoo-centric way or in a phytocentric way. We could use a conceptual table to illustrate a summary of these two types of approaches for the analysis of frugivory, pollination, and herbivory interactions; just summarize, $A$, $P$, $I$ and $C$ for a number of case studies grouped according to whether they are zoocentric or phytocentric.

Zoocentric studies directly sample animal activity and document the plants 'touched' by the animal. E.g., analysis of pollen samples recovered from the body of pollinators, analysis of fecal samples of frugivores, radio-tracking data, etc.

Phytocentric studies take samples of focal individual plant species and document which animals 'arrive' or 'touch' the plants. Examples include focal watches of fruiting or flowering plants to record visitation by animals, raising insect herbivores from seed samples, identifying herbivory marks in samples of leaves, etc.

We can discuss whether zoo-centric or phytocentric potentially bias the estimation of interactions.

The basic method we can propose to estimate sampling effort and explicitly show the analogues with rarefaction analysis in biodiversity research is to vectorize the interaction matrix AP so that we get a vector of all the possible pairwise interactions that can occur in a community of A animal species and P plant species.

The new 'species' we aim to sample are the interactions. So, if we have in our community *Turdus merula* (*Tm*) and *Rosa canina* (*Rc*) and *Prunus mahaleb* (*Pm*), our problem will be to sample 2 new species: *TmRc* and *TmPm*. In general, if we have $$A= 1... i$$ , animal species and $$P = 1... j$$ plant spcies, we'll have a vector of 'new' species to sample: $$A1P1, A1P2,... A2P1, A2P2, ... AiPj$$.

We can represent the successive samples where we can potentially get records of these interactions in a matrix with the vectorized interaction matrix and columns representing the successive samples we take:

| Interaction  | Sample1 | Sample2 |  Sample3 |
| :----------- | :-----: | :-----: | :-----:  |
| A1 - P2       |    12   |    2    |     0    |
| A1 - P2       |     0   |    0    |     0    |  
| ...          |    ...  |   ...   |    ...   |  
| A5 - P3       |     5   |    0    |     1    |  
| A5 - P4       |     1   |    0    |     1    |  
| ...          |    ...  |   ...   |    ...   |  
| A~i - P~i     |     1   |    0    |     1    |  
[Table 1. A vectorized interaction matrix.]


Rarefaction analysis comes up immediately with this type of dataset. In addition, we should discuss the problem of rarifying the interaction matrix itself. I mean, are we able to estimate how robust has been the sampling of a given interaction matrix. This would be useful to assess the robustness of information already available, even with no data on sampling effort or with no access to the original individual samples.

We can discuss whether rarefaction estimates for interactions would be better obtained from sample-based simulations or individual based simulations. Sample-based simulations would require access to original raw data.

----

### NOTES ###

#### Section 2 - Text from PUP book.
####Sampling and robustness of network parameters
% PJ: 2May2010

For instance, a random accumulator function (library vegan in the R Package; \citep{R10}) which finds the mean IAC and its standard deviation from random permutations of the data, or subsampling without replacement \citep{GotCol01} can be used to estimate the expected number of pairwise interactions included in a given sampling of records (Fig. 1C). We start with a vectorized interaction matrix \citep{Jor09} representing the pairwise interactions (rows) recorded during a cumulative number of censuses or sampling periods (columns), in a way analogous to a biodiversity sampling matrix with species as rows and sampling units (e.g., quadrats) as columns. This procedure plots the accumulation curve for the expected number of pairwise interactions recorded with increasing sampling effort (Fig. 1C).


Not all potential links among species in ecological networks can be recorded during sampling. Often, adjacency matrices are used to characterize complex networks, and these matrices are frequently sparse, i.e., they are densely populated with zeroes. Unobserved interactions are represented by zeroes and belong to two categories. Missing interactions actually exist but may require additional sampling or a variety of methods to be observed. Forbidden links, on the other hand, arise due to biological constraints limiting interactions and remain unobservable in nature, irrespectively of sampling effort \citep{JBO03,Olesen:2010a}. Forbidden links are non-occurrences of pairwise interactions that can be accounted for by biological constraints, such as spatio-temporal uncoupling, size or reward mismatching, foraging constraints (e.g., accessibility), and physiological-biochemical constraints \citep{Jordano:1987,Olesen:2010a}. Temporal uncoupling, for example, takes place when phenophases of potentially interacting species do not overlap \citealt[e.g.,][]{Fabina:2010} (Fig. 1A, B). Thus forbidden links can be defined as structural zeroes in the adjacency matrix describing a complex network. Therefore, the potential links that can actually be observed in an interaction matrix of \textit{A} and \textit{P} animal and plant species is well below the total size of the matrix, \textit{AP}. Two elements of inference are required in the analysis of missing interactions in plant-animal interaction networks: first, a critical analysis of sampling robustness; second, detailed natural history information on the participant species that allows the inference of biological constraints.


It is noteworthy that null models of interaction matrices, either binary or weighted, do not account for the presence of forbidden links in empirical networks. For instance, the computation of connectance refers the observed number of interactions $I$ to the total \textit{possible} or \textit{potential} interaction in a matrix with $A$ animal species and $P$ plant species: $AP$. Yet, given the presence of forbidden links in empirical networks, $AP$ obviously overestimates the \textit{potential} number of interactions, simply because the actual \textit{possible} number is well below the maximum indicated by the product $AP$. It is no surprise that null models based on randomizations of the interaction matrix often yield a low frequency of expected zeroes \citep{Bluthgen:2008p7146}, the simulation algorithm just fills in cells that never should get a non-zero expected value. As a result, a typical result of these simulated matrices is a larger connectance of the null matrices relative to the empirical ones \citep{Bluthgen:2008p7146}. Future work on null algorithms for interaction matrices should take into account these effects of forbidden links. A potential avenue would be to estimate the actual frequency of forbbiden interactions in real-world assemblages \citep{Olesen:2010a} and correct the filling of the null matrices by this frequency.

A side-effect of forbidden links is what we call "edge-interactions". If forbidden interactions, like those among species with non-overlapping phenophases (Fig. 1A) are non-observable by definition, what about those interactions among species that just marginally overlap their phenophases (Fig. 1A, B)? Imagine a flower species at the end of the flowering period, when very few individuals in the population have very few flowers still open. Then consider a newly emerging insect pollinator whose phenophase occurs slightly later than these flowers (e.g., the interaction between sp. $a_3$ and $p_3$ in Fig. 1A). 

Links between super-rare species in a network can be extremely difficult to detect, largely because of an intrinsically low species-encounter rate in the field. According to our link classification \citep{Olesen:2010a}, these interactions are missing, i.e. not accounted for by any implied biological constraint. However, very low abundance may also limit actual interactions to occur if the probability of interspecific interaction is constrained by the intrinsically low probability of interspecific encounter \citep{Mac72}. The extent of phenological coupling or overlap is a temporal equivalent to encounter rate. If two species overlap phenologically by one-few days (e.g., species $a_3$ and $p_3$ in Fig. 1B) an interaction is possible, but extremely unlikely. This is even further enforced by an intrinsically low abundance of the interacting species at the onset and end of their phenophases. Thus, besides the unobservable links accounted for by forbidden interactions, many links could remain missing simply because of an intrinsically low probability of interspecific encounter. This underscores the crucial point of assessing how robust is the sampling of interactions. The relevant point here in relation to sampling is that, contrary to recent interpretations \citep{Dorado:2011}, many zeroes in interaction matrices should not be considered artifacts of undersampling or passive sampling affected by abundance variations of the component species \citep{BMB06}. This is especially evident in robustly sampled datasets, where a high fraction of structural zeroes are expected despite intensive sampling.

Sampling effort also influences the robustness of parameter estimation in network analyses. As noted earlier in this chapter, there is a high turnover in the number of species and interactions through years. Therefore, how robust are the indices of network structure is a relevant question given the noise and sampling errors. The first paper tackling this question in relation to nestedness was \citet{NieBas07}. These authors designed an experimental approach to a pollination site near Siljan in South-East Norway. Sampling effort was controlled both in time and space. Twelve study sites of 20 $\times$ 20 meters were evenly distributed among forest stands of different maturity. First, results were quite equivalent for spatial and temporal sampling.  While the number of species and interactions kept growing, absolute nestedness seems to be much more stable. Since absolute nestedness depends on number of species and interactions, \cite{NieBas07} also calculated relative nestedness (the value of nestedness for a given matrix compared with the average value for a population of randomizations of such a matrix). Relative nestedness increases with sampling effort but reaches an asymptotic level well within the extent of the sampling effort considered. That is, nestedness would remain quite constant and no changes would be observed if one was sampling more days or plots beyond the asymptotic value. Of course the exact level of spatial and temporal sampling that is enough to characterize nestedness will depend on the study system, but the point is that nestedness is much more convergent than connectance or number of species and interactions.  

Missing links are a characteristic feature of all plant-animal interaction networks. Important natural history details explain a fraction of them, resulting in unobservable interactions (i.e., forbidden interactions) that define structural zeroes in the interaction matrices. Focusing on sampling interactions is a way to monitor biodiversity beyond the simple enumeration of component species and to develop efficient and robust inventories of functional interactions. Focussing just on the realized interactions or treating missing interactions as the expected unique result of sampling bias would miss important components to understand how mutualisms coevolve within complex webs of interdependence among species. 

--------------------------------------------------------------

**Acknowledgements**. I am indebted to Alfredo Valido, Jordi Bascompte, Thomas Lewinshon, John N. Thompson, Nick Gotelli, Carsten Dormann, and Paulo R. Guimarães Jr. for useful and thoughtful comments and discussion at different stages of this manuscript. The study was supported by a Junta de Andalucía Excellence Grant (RNM-5731), as well as a Severo Ochoa Excellence Award from the Ministerio de Economía y Competitividad (SEV-2012-0262). The Agencia de Medio Ambiente, Junta de Andalucía, provided generous facilities that made possible my long-term field work in different natural parks.

---
### Tables and Figures ###
Table 1. ***.

**Figure legends**

**Figure 1**. Sampling interactions among unrelated species, such as those used to build complex networks of mutualistic plant-animal interactions is formally analogous to sampling individuals and species to assess community diversity patterns. Pairwise interactions among two species are equivalent to “individuals” of each pairwise interaction that can be sampled with routine cumulative sampling protocols. Given that a cumulative number of estimated species can be obtained from progressively larger samples of individuals, cumulative number of estimated distinct pairwise interactions can be obtained from records of actual pairwise interactions between individuals of the partner species. I propose that asymptotic estimates of interaction richness- the number of distinct pairwise interactions that can be recorded in a local community for $P$ plants and $A$ animal species- can be estimated to robustly assess complex networks. 

**Figure 2**. Vectorization of a network adjacency matrix to obtain a vector of all the possible distinct pairwise interactions that can eventually be recorded. Typically, only a minor fraction of these pairwise interactions are recorded in actual surveys, either because of sampling limits, forbidden links, or spatial and temporal heterogeneity.


**Figure 3**. 

---

###Online Support Material###

---
###Methods

---
### References for Online Material ###


------
### REFERENCES ###

[#Magurran:1988mm]: Magurran, A.E. (1988). Ecological diversity and its measurement. Princeton University Press, Princeton, US.   

[#Gotelli:2001uo]: Gotelli, N. & Colwell, R. (2001). Quantifying biodiversity: procedures and pitfalls in the measurement and comparison of species richness. Ecology Letters, 4, 379–391.   

[#Gotelli:2011tb]: Gotelli, N.J. & Colwell, R.K. (2011). Estimating species richness. Biological Diversity Frontiers in Measurement and Assessment (eds A.E. Magurran & B.J. McGill), pp. 39–54. Oxford University Press, Oxford, UK.

[#Bunge:1993ux]: Bunge, J. & Fitzpatrick, M. (1993). Estimating the number of species: a review. Journal of the American Statistical Association, 88, 364–373.

[#Jordano:2009c]: Jordano, P., Vázquez, D. & Bascompte, J. (2009). Redes complejas de interacciones planta---animal, Editorial Universitarian. (R. Medel, R. Dirzo & R. Zamora, Eds.). Editorial Universitaria, Santiago, Chile.

[#ValienteBanuet:2014bw]: Valiente-Banuet, A., Aizen, M.A., Alcántara, J.M., Arroyo, J., Cocucci, A., Galetti, M., García, M.B., García, D., Gomez, J.M., Jordano, P., Medel, R., NAVARRO, L., Obeso, J.R., Oviedo, R., Ramírez, N., Rey, P.J., Traveset, A., Verdú, M. & Zamora, R. (2014). Beyond species loss: the extinction of ecological interactions in a changing world (M. Johnson, Ed.). Functional Ecology, 00: 000-000.  

[#Hortal:2006dc]: Hortal, J., Borges, P. & Gaspar, C. (2006). Evaluating the performance of species richness estimators: sensitivity to sample grain size. Journal of Animal Ecology, 75, 274–287.    

[#Colwell:2009gv]: Colwell, R.K. (2009). Biodiversity: concepts, patterns, and measurement. The Princeton Guide to Ecology Princeton University Press, Princeton.  

[#Coddington:2009fi]: Coddington, J.A., Agnarsson, I., Miller, J.A., Kuntner, M. & Hormiga, G. (2009). Undersampling bias: the null hypothesis for singleton species in tropical arthropod surveys. Journal Of Animal Ecology, 78, 573–584.

[#Vazquez:2009p82]: Vázquez, D.P., Chacoff, N.P. & Cagnolo, L. (2009). Evaluating multiple determinants of the structure of plant-animal mutualistic networks. Ecology, 90, 2039–2046.     

[#Dorado:2011cf]: Dorado, J., Vazquez, D.P., Stevani, E.L. & Chacoff, N.P. (2011). Rareness and specialization in plant-pollinator networks. Ecology, 92, 19–25.

[#Olesen:2011a]: Olesen, J.M., Bascompte, J., Dupont, Y.L., Elberling, H. & Jordano, P. (2011). Missing and forbidden links in mutualistic networks. Proceedings Of The Royal Society B-Biological Sciences, 278, 725–732.

[#Colwell:2009]: Colwell RK. (2009). EstimateS: Statistical estimation of species richness and shared species from samples user’s guide and application.`http://purl.oclc.org/estimates`.    

[#Snow:1988iu]: Snow, B., Snow, D. (1988). Birds and Berries. Poyser: Calton, UK.     

[#Colwell:1994vt]: Colwell, R. & Coddington, J. (1994). Estimating terrestrial biodiversity through extrapolation. Philosophical Transactions of the Royal Society of London Series B-Biological Sciences, 345, 101–118.

[#E31/2562]: Jordano, P. (1987). Patterns of mutualistic interactions in pollination and seed dispersal: connectance, dependence asymmetries, and coevolution. The American Naturalist, 129, 657–677.   

[#Chao:2005wp]: Chao, A. (2005). Species richness estimation. Encyclopedia of Statistical Sciences pp. 7909–7916. New York, USA.    

[#Chao:2009wq]: Chao, A., Colwell, R.K., Lin, C.-W. & Gotelli, N.J. (2009). Sufficient sampling for asymptotic minimum species richness estimators. Ecology, 90, 1125–1133.    

[#Bascompte:2014to]: Bascompte, J. & Jordano, P. (2014). Mutualistic networks. Princeton University Press, Princeton, NJ.    





