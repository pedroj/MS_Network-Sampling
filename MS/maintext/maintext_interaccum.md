#Sampling interaction networks#

###Pedro Jordano^1 ####

#####*1, Integrative Ecology Group, Estación Biológica de Doñana, Consejo Superior de Investigaciones Científicas (EBD-CSIC), Avenida Americo Vespucio s/n, E-41092 Sevilla, Spain*



*Correspondence*: Pedro Jordano, Fax: + 34 954 62 11 25.
E-mail: `jordano@ebd.csic.es` 
 
*Running headline*: Sampling networks

*Keywords*: complex networks, mutualism, plant-animal interactions, frugivory, pollination, seed dispersal, food webs

------------
  
### ABSTRACT  

Sampling ecological interactions presents similar challenges, problems, potential biases, and constraints as sampling individuals and species in biodiversity inventories. Interactions are just pairwise relationships among individuals of two unrelated species, such as those among plants and their seed dispersers in frugivory interactions or those among plants and their pollinators. Sampling interactions is a fundamental step to build robustly estimated interaction networks, yet few analyses have attempted a formal approach to their sampling protocols. 
Here I provide a formal approach to interaction sampling by building an explicit analogue to individuals and species sampling, thus extending diversity-monitoring approaches  to the characterization of complex networks of ecological interactions.


---
  
### INTRODUCTION

```
Biodiversity sampling is a labour-intensive activity, and sampling is often not 
sufficient to detect all or even most of the species present in an assemblage.   

Gotelli & Colwell (2011).
```

 

Biodiversity assessment typically aims at sampling individuals in collections and determining the number of species represented. Given that, by definition, samples are incomplete, these collections enumerate a lower number of the species actually present. The ecological literature dealing with robust estimators of species richness and diversity in collections of individuals is immense, and a number of useful approaches have been used to obtain such estimates [#Magurran:1988][#Gotelli:2001][#Gotelli:2011][#Hortal:2006]. I can't emphasize enough the relevance of sampling interactions in addition to sampling species and higher taxa in biodiversity assessment programs. Interactions among species are a major component of biodiversity and here I aim to show that most problems associated to sampling interactions in natural communities have to do with problems associated to sampling diversity. Interactions in natural ecosystems can be a much better indicator of the richness and diversity of ecosystem functions than a simple list of taxa. Thus, sampling interactions should be a central issue when identifying and diagnosing ecosystem services (e.g., pollination, natural seeding by frugivores, etc.). Fortunately, all the whole battery of biodiversity-related tools used by ecologists to sample biodiversity (species, *sensu stricto*) can be extended and applied to the sampling of interactions. Analogs are common between these approaches.   
Briefly, $S_{obs}$ is the total number of species observed in a sample, or in a set of samples. $S_{est}$ is the estimated number of species in the community represented by the sample, or by the set of samples, where $est$ indicates an estimator. With abundance data, let $S_k$ be the number of species each represented by exactly $k$ individuals in a single sample. Thus, $S_0$ is the number of undetected species (species present in the community but not included in the sample), $S_1$ is the number of singleton species, $S_2$ is the number of doubleton species, etc. The total number of individuals in the sample would be: $$n = 􏰢\sum_{k=1}^{S_{obs}}S_k$$ .   

A frequently used asymptotic, bias corrected, estimator is $S_{Chao}$ [#Hortal:2006][#Colwell:2009]:   

$$S_{Chao}= S_{obs} + \frac{S_1 (S_1 −1)}{2(S_2 +1)}$$    

Now let's consider the situation with samples of interactions. When we sample interactions in the field we record the int presence of two species that interact in some way, i.e., a frugivorous pigeon visits a fruiting tree and detaches and ingests the fruit. For example, Snow and Snow[#Snow:1988] recorded an interaction whenever they saw a bird "touching" a fruit on  a plant.  In a similar way interactions between pollinators and plants are tallied by recording any visit of a pollinator entering a flower and touching the androceum and/or the gyneceum. We observe and record feeding observations, visitation, occupancy, presence in pollen loads or in fecal samples, etc., to accumulate pairwise interactions, i.e., lists of species partners and the frequencies with which we observe them.    

Sampling interactions requires filling the cells of an interaction matrix with data. The matrix is a 2D representation of the interactions among A animal species (rows) and P plant species (columns). An interaction matrix AP consists of an array of zeroes or ones, or an array of zeroes and numbers- if the data are quantified. These figures illustrate the values of the pairwise interactions visualized in the AP matrix.

We need to define two basic steps in the sampling of interactions: 1) which type of interactions we sample; and 2) which type of record we get to document the existence of an interaction.

In step 1) there are two considerations we need to take into account. First is whether we are sampling the whole community of interactor species (all the animals, all the plants) or we sample a subset of them. Subsets can be: a) We sample all the potential plants interacting with a subset of the animals; b) We sample all the potential animal species interacting with a subset of the plant species; c) We sample a subset of  all the potential animal species interacting with a subset of all the plant species.

#####Fig. 1 here #####
![Figure 1](../figures/Interaction_subwebs.pdf)

Independently of whether we sample full communities of subset communities we face a problem: some of the interactions that we can visualize in the empty matrix $AP$ will simply not occur. Thus, independently of the sampling effort we put, we'll never document these pairwise interactions. With a total of $AP$ interactions possible, a fraction of them are impossible to record, because they are forbidden. So, we need to account for the frequency of these structural zeros in our matrix before proceeding. For example, most measurements of connectance ($C= I/(AP)$) implicitly ignore the fact that by taking the full product $AP$ in the denominator they are underestimating the actual connectance value.

In step #2 above we face the problem of the type of record we take to sample interactions. This is important because it defines whether we approach the problem of filling up the interaction matrix in a zoo-centric way or in a phytocentric way. We could use a conceptual table to illustrate a summary of these two types of approaches for the analysis of frugivory, pollination, and herbivory interactions; just summarize, $A$, $P$, $I$ and $C$ for a number of case studies grouped according to whether they are zoocentric or phytocentric.

Zoocentric studies directly sample animal activity and document the plants 'touched' by the animal. E.g., analysis of pollen samples recovered from the body of pollinators, analysis of fecal samples of frugivores, radio-tracking data, etc.

Phytocentric studies take samples of focal individual plant species and document which animals 'arrive' or 'touch' the plants. Examples include focal watches of fruiting or flowering plants to record visitation by animals, raising insect herbivores from seed samples, identifying herbivory marks in samples of leaves, etc.

We can discuss whether zoo-centric or phytocentric potentially bias the estimation of interactions.

The basic method we can propose to estimate sampling effort and explicitly show the analogues with rarefaction analysis in biodiversity research is to vectorize the interaction matrix AP so that we get a vector of all the possible pairwise interactions that can occur in a community of A animal species and P plant species.

The new 'species' we aim to sample are the interactions. So, if we have in our community *Turdus merula* (*Tm*) and *Rosa canina* (*Rc*) and *Prunus mahaleb* (*Pm*), our problem will be to sample 2 new species: *TmRc* and *TmPm*. In general, if we have $A= 1... i$ animal species and $P = 1... j$ plant spcies, we'll have a vector of 'new' species to sample: $A1P1, A1P2,... A2P1, A2P2, ... AiPj$.

We can represent the successive samples where we can potentially get records of these interactions in a matrix with the vectorized interaction matrix and columns representing the successive samples we take:

| Interaction  | Sample1 | Sample2 |  Sample3 |
| :----------- | :-----: | :-----: | :-----:  |
| A_1P_2       |    12   |    2    |     0    |
| A_1P_2       |     0   |    0    |     0    |  
| ...          |    ...  |   ...   |    ...   |  
| A_5P_3       |     5   |    0    |     1    |  
| A_5P_4       |     1   |    0    |     1    |  
| ...          |    ...  |   ...   |    ...   |  
| $A_iP_i$     |     1   |    0    |     1    |  
[Table 1. A vectorized interaction matrix.]


Rarefaction analysis comes up immediately with this type of dataset. In addition, we should discuss the problem of rarifying the interaction matrix itself. I mean, are we able to estimate how robust has been the sampling of a given interaction matrix. This would be useful to assess the robustness of information already available, even with no data on sampling effort or with no access to the original individual samples.

We can discuss whether rarefaction estimates for interactions would be better obtained from sample-based simulations or individual based simulations. Sample-based simulations would require access to original raw data.

----

### NOTES ###

#### Section 2 - Text from PUP book.
####Sampling and robustness of network parameters
% PJ: 2May2010

Monitoring interactions is analogous to any biodiversity sampling (i.e., a species inventory; \citealt{Jor09}) and is subject to similar methodological shortcomings, especially under-sampling \citep{Coddington:2009,Vazquez:2009,Dorado:2011}. When we study mutualistic networks, our goal is to inventor pairwise interactions. Rather than sampling individuals that add species to our inventory, we observe and record feeding observations, visitation, occupancy, presence in pollen loads or in faecal samples, etc., to accumulate pairwise interactions, i.e., lists of species partners. Our goal is to reduce the number of missing cells in our interaction matrices used to tally interactions and to explain the forbidden ones. Interaction accumulation curves (IAC), analogous to species accumulation curves (SAC), can be used to assess the robustness of interactions sampling for plant-animal community datasets \citep{Jor09,Olesen:2010a}. For instance, a random accumulator function (library vegan in the R Package; \citep{R10}) which finds the mean IAC and its standard deviation from random permutations of the data, or subsampling without replacement \citep{GotCol01} can be used to estimate the expected number of pairwise interactions included in a given sampling of records (Fig. 1C). We start with a vectorized interaction matrix \citep{Jor09} representing the pairwise interactions (rows) recorded during a cumulative number of censuses or sampling periods (columns), in a way analogous to a biodiversity sampling matrix with species as rows and sampling units (e.g., quadrats) as columns. This procedure plots the accumulation curve for the expected number of pairwise interactions recorded with increasing sampling effort (Fig. 1C).


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

[#Magurran:1988]: Magurran AE. 1988. Ecological diversity and its measurement. Princeton, US: Princeton University Press.   

[#Gotelli:2001]: Gotelli N, Colwell R. 2001. Quantifying biodiversity: procedures and pitfalls in the measurement and comparison of species richness. Ecology Letters, 4: 379–91.   

[#Gotelli:2011]: Gotelli NJ, Colwell RK. 2011. Estimating species richness. In Biological Diversity Frontiers in Measurement and Assessment, eds. AE Magurran, BJ McGill, pp. 39–54. Oxford, UK.

[#Hortal:2006]: Hortal J, Borges P, Gaspar C. 2006. Evaluating the performance of species richness estimators: sensitivity to sample grain size. Journal of Animal Ecology 75: 274–87.

[#Colwell:2009]: Colwell RK. 2009. EstimateS: Statistical estimation of species richness and shared species from samples user’s guide and application.`http://purl.oclc.org/estimates`.    

[#Snow:1988]: Snow B, Snow D. 1988. Birds and Berries. Calton, UK: Poyser.     







