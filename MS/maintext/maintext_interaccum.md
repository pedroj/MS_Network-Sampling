---
latex input:        jae-article-header
LaTeX Mode:         article  
Title:   Sampling interactions manuscript  
Author:   Pedro Jordano  
Date:     February 24, 2015  
Comment:  Manuscript draft for the sampling interactions study.   
Base Header Level:  2 
BibTeX:      maintext   
Bibliography Style:	jae
---
  
#Sampling networks of ecological interactions 

###Pedro Jordano^1

#####*1, Integrative Ecology Group, Estación Biológica de Doñana, Consejo Superior de Investigaciones Científicas (EBD-CSIC), Avenida Americo Vespucio s/n, E-41092 Sevilla, Spain*



*Correspondence*: Pedro Jordano, Fax: + 34 954 62 11 25.   
E-mail: `jordano@ebd.csic.es` 
 
*Running headline*: Sampling networks

*Keywords*: complex networks, mutualism, plant-animal interactions, frugivory, pollination, seed dispersal, food webs

------------
  
## Summary  

1. Sampling ecological interactions presents similar challenges, problems, potential biases, and constraints as sampling individuals and species in biodiversity inventories. Interactions are just pairwise relationships among individuals of two unrelated species, such as those among plants and their seed dispersers in frugivory interactions or those among plants and their pollinators. Sampling interactions is a fundamental step to build robustly estimated interaction networks, yet few analyses have attempted a formal approach to their sampling protocols. 
2. Robust estimates of the actual number of interactions (links) within diversified ecological networks require adequate sampling effort that needs to be explicitly gauged. Yet we still lack a sampling theory explicitly focusing on  ecological interactions.
3. While the complete inventory of interactions is likely impossible, a robust characterization of its main patterns and metrics is probably realistic. We must acknowledge that a sizable fraction of the maximum number of interactions $I_{max}$ among, say, $A$ animal species and $P$ plant species (i.e., $I_{max}= AP$) is impossible to record due to forbidden links, the restrictions imposed by the organisms life-histories. Thus, the number of observed interactions $I$ is typically $I<<I_{max}$, resulting in extremely sparse interaction matrices with low connectance.
4. Reasons for forbidden links are multiple but mainly stem from spatial and temporal uncoupling of partner species encounters and from intrinsically low probabilities of interspecific encounter for many of the potential pairwise interactions. Adequately assessing the completeness of a network of ecological interactions thus needs a deep knowledge of the natural history details embedded, so that forbidden links can be "discounted" when addressing sampling effort. 
5. Here I provide a review and conceptual framework for interaction sampling by building an explicit analogue to individuals and species sampling, thus extending diversity-monitoring approaches to the characterization of complex networks of ecological interactions. This is crucial to assess the fast-paced and devastating effects of defaunation-driven loss of key ecological interactions and the services they provide.  
 
---
  
## Introduction

```
Biodiversity sampling is a labour-intensive activity,   
and sampling is often not sufficient to detect all or   
even most of the species present in an assemblage.   

Gotelli & Colwell (2011).
```

 
Biodiversity assessment aims at sampling individuals in collections and determining the number of species represented. Given that, by definition, samples are incomplete, these collections enumerate a lower number of the species actually present. The ecological literature dealing with robust estimators of species richness and diversity in collections of individuals is immense, and a number of useful approaches have been used to obtain such estimates [#Magurran:1988mm][#Gotelli:2001uo][#Hortal:2006dc][#Gotelli:2011tb]. Recent effort has been also focused at defining essential biodiversity variables (EBV) [Pereira:2013ji] that can be sampled and measured repeatedly to complement biodiversity estimates. Yet sampling species or taxa-specific EBVs is just probing a single component of biodiversity; interactions among species are another fundamental component, the one that supports the existence of species [#Memmott:2006vy].  For example, the extinction of interactions represents a dramatic loss of biodiversity because it entails the loss of fundamental ecological functions [#ValienteBanuet:2014bw]. This missed component of biodiversity loss, the extinction of ecological interactions, very often accompanies, or even precedes, species disappearance. I can't emphasize enough the relevance of sampling interactions in addition to sampling species and higher taxa in biodiversity assessment programs. Interactions among species are a key component of biodiversity and here I aim to show that most problems associated to sampling interactions in natural communities have to do with problems associated to sampling species diversity. In the first part of this paper I provide a succinct overview of previous work addressing sampling issues for ecological interaction networks. In the second part I discuss specific rationales for sampling the biodiversity of ecological interactions.
	Interactions in natural ecosystems can be a much better indicator of the richness and diversity of ecosystem functions than a simple list of taxa and their abundances and/or related biodiversity indicator variables (EBVs). Thus, sampling interactions should be a central issue when identifying and diagnosing ecosystem services (e.g., pollination, natural seeding by frugivores, etc.). Fortunately, all the whole battery of biodiversity-related tools used by ecologists to sample biodiversity (species, *sensu stricto*) can be extended and applied to the sampling of interactions. Analogs are evident between these approaches. Monitoring interactions is analogous to any biodiversity sampling (i.e., a species inventory [#E31/2562][#Jordano:2009c]) and is subject to similar methodological shortcomings, especially under-sampling [#Coddington:2009fi][#Vazquez:2009p82][#Dorado:2011cf]. When we study mutualistic networks, our goal is to make an inventory of the distinct pairwise interactions that made up the network. We are interested in having a complete list of all the pairwise interactions among species (e.g., all the distinct, species-species interactions, links, among the pollinators and flowering plants) that can exist in a given community. And sampling interactions entails exactly the same problems, limitations, constraints, and potential biases as sampling individual organisms and species diversity. 
	Earlier efforts to recognize and solve sampling problems in analyses of interactions stem from researchers interested in food web analyses and in determining the biases on undersampled food web metrics [#Martinez:1991aa][#Cohen:1993aa][#Martinez:1993ti][#Bersier:2002p9371][#Brose:2003wv][#BanasekRichter:2004ik]. In addition, the myriad of classic natural history studies documenting animal diets, host-pathogen infection records, plant herbivory records, etc., are basic efforts to document interactions occurring in nature. All of them share the problem of sampling incompleteness influencing the patterns and metrics reported. Yet, despite the recognition that incomplete sampling may seriously bias the analysis of ecological networks [#E31/2562], only recent studies have explicitly acknowledged it and attempted to determine its influence [#Ollerton:2002jw][#Nielsen:2007][#Vazquez:2009p82][#Gibson:2011eh][#Olesen:2011a][#Chacoff:2012][#RiveraHutinel:2012vn][#Olito:2014gc][#Frund:2015ii]. Most empirical studies provide no estimate of sampling effort, implicitly assuming that the reported network patterns and metrics are robust (i.e., additional sampling would not entail significant modifications of the reported results). Yet recent evidences point out that number of partner species detected, number of actual links, and some aggregate statistics describing network patterns, are prone to sampling bias [#Nielsen:2007][#Dorado:2011cf][#Olesen:2011a][#Chacoff:2012][#RiveraHutinel:2012vn][#Olito:2014gc][#Frund:2015ii]. Most of these evidences, however,  come from either theoretical, simulation, studies [#Frund:2015ii] or from relatively species-poor assemblages. Even for species-rich, tropical assemblages it might be erroneous to conclude that network data routinely come from insufficiently sampled datasets [#Ollerton:2002jw][#Chacoff:2012], given the extremely sparse nature of these interaction matrices because of the prevalence of forbidden links (which, by definition, cannot be documented despite extensive sampling effort). However, most certainly, sampling limitations pervade biodiversity inventories in tropical areas [#Coddington:2009fi] and we might rightly expect that frequent interactions may be over-represented and rare interactions may be missed entirely in studies of mega-diverse assemblages [#Bascompte:2014to]; but, to what extent? Thus, a number of relevant gaps remain to be addressed in relation to sampling completeness. For instance, to what extent mixed sampling protocols (i.e., combining different sampling techniques) can yield more representative results than just focal sampling of visitation/interaction records? Are available datasets really under sampled? 
	
## Sampling interactions: methods
When we sample interactions in the field we record the presence of two species that interact in some way, i.e., a frugivorous pigeon visits a fruiting tree and detaches and ingests the fruit of a given plant species. For example, Snow and Snow[#Snow:1988iu] recorded an interaction whenever they saw a bird "touching" a fruit on a plant.  In a similar way, interactions between pollinators and plants are tallied by recording any visit of a pollinator entering a flower and touching the androceum and/or the gyneceum. We observe and record feeding observations, visitation, occupancy, presence in pollen loads or in fecal samples, etc.,  of *individuals* animals or plants to accumulate pairwise interactions, i.e., lists of species partners and the frequencies with which we observe them. Therefore, estimating the sampling completeness of plant-animal interactions for the whole network, requires estimating the number (richness) of distinct pairwise interactions accumulated as sampling effort is increased, pooling the data for all plant and animal species.
	Sampling interactions requires filling the cells of an interaction matrix with data. The matrix, $\Delta=AP$,  is a 2D representation of the interactions among $A$ animal species (rows) and $P$ plant species (columns) [#E31/2562][#Bascompte:2014to]. An interaction matrix $\Delta$ consists of an array of zeroes or ones, or an array of numeric values (including zeroes)- if the data (interaction frequencies) are quantified. These figures illustrate the values of the pairwise interactions visualized in the $\Delta$ matrix, and can be 0 or 1, for presence-absence of a given pairwise interaction, or take a quantitative weight $w_{ji}$ to represent the interaction intensity or unidirectional effect of species $j$ on species $i$ [#Bascompte:2014to][#Vazquez:2015ec]. Given that the outcomes of most ecological interactions are dependent on frequency of encounters (e.g., visit rate of pollinators, number of records of ant defenders, frequency of seeds in fecal samples), a frequently used proxy for interaction intensities $w_{ji}$  is just how frequent new interspecific encounters, whether or not appropriately weighted to estimate interaction effectiveness [#Vazquez:2005][Schupp:2010].
	We need to define two basic steps in the sampling of interactions: 1) which type of interactions we sample; and 2) which type of record we get to document the existence of an interaction. In step #1 there are two considerations we need to take into account. First is whether we are sampling the whole community of interactor species (all the animals, all the plants) or we sample just a subset of them, i.e., a sub matrix $\Delta[m,n]$ of $m<A$ animal species and $n<P$ plant species of the adjacency matrix $\Delta[AP]$. Subsets can be: a) We sample all the potential plants interacting with a subset of the animals (Fig. 1a); b) We sample all the potential animal species interacting with a subset of the plant species (Fig. 1b); c) We sample a subset of  all the potential animal species interacting with a subset of all the plant species (Fig. 1c). While some discussion has considered how to establish the limits of what represents a network [#Strogatz:2001wc] (in analogy to discussion on food-web limits [#Cohen:1978]), it must be noted that situations a-c in Fig. 1 do not represent complete interaction networks. As vividly stated by Cohen et al. [#Cohen:1993aa]: "*As more comprehensive, more detailed, more explicit webs become available, smaller, highly aggregated, incompletely described webs may progressively be dropped from analyses of web structure (though such webs may remain useful for other purposes, such as pedagogy)*". Subnet sampling is generalized in studies of biological networks (e.g., protein interactions, gene regulation), yet it is important to recognize that most properties of subnetworks (even random subsamples) do not represent properties of  whole networks [#Stumpf:2005tn].      


#####Fig. 1 here #####

In step #2 above we face the problem of the type of record we take to sample interactions. This is important because it defines whether we approach the problem of filling up the interaction matrix in a "zoo-centric" way or in a "phyto-centric" way. Zoo-centric studies directly sample animal activity and document the plants 'touched' by the animal. For example, analysis of pollen samples recovered from the body of pollinators, analysis of fecal samples of frugivores, radio-tracking data, etc. Phyto-centric studies take samples of focal individual plant species and document which animals 'arrive' or 'touch' the plants. Examples include focal watches of fruiting or flowering plants to record visitation by animals, raising insect herbivores from seed samples, identifying herbivory marks in samples of leaves, etc.       
Most recent analyses of plant-animal interaction networks are phyto-centric; just 3.45% of available plant-pollinator (*N*= 58) or  36.6% plant-frugivore (*N*= 22) interaction datasets are zoo-centric (see [#Schleuning:2012eg]). Moreover, most available datasets on host-parasite or plant-herbivore interactions are "host-centric" or phyto-centric (e.g., [#Thebault:2010jv][#Eklof:2013ed]). This maybe related to a variety of causes, like preferred methodologies by researchers working with a particular group or system, logistic limitations, or inherent taxonomic focus of the research questions. In any case we don't have a clear view of the potential biases that taxa-focused sampling may generate in observed network patterns, for example by generating consistently asymmetric interaction matrices [#Dormann:2009aa].      
Interestingly enough, quite complete analyses of interaction networks can be obtained when combining both phyto-centric and zoo-centric sampling. For example, Bosch et al. [#Bosch:2009jga] showed that the addition of pollen load data on top of focal-plant sampling of pollinators unveiled a significant number of interactions, resulting in important network structural changes. Connectance increased 1.43-fold, mean plant connectivity went from 18.5 to 26.4, and mean pollinator connectivity from 2.9 to 4.1; moreover, extreme specialist pollinator species (singletons in the adjacency matrix) decreased 0.6-fold. Zoo-centric sampling has recently been extended with the use of DNA-barcoding, for example with plant-herbivore [#JuradoRivera:2009cp] and plant-frugivore interactions [#GonzalezVaro:2014ij]. For mutualistic networks we would expect that zoo-centric sampling could help unveiling  interactions for rare species or for relatively common species which are difficult to sample by direct observation. Future methodological work may provide significant  advances showing how mixing different sampling strategies strengthens the completeness of network data. These mixed strategies may combine, for instance, focal analyses, pollen load or seed contents, camera traps, and DNA barcoding records. We might expect increased power of these mixed sampling approaches when combining different methods from both phyto- and zoo-centric perspectives.
 

## Sampling interactions: rationale
Independently of whether we sample full communities of subset communities we face a problem: some of the interactions that we can visualize in the empty matrix $AP$ will simply not occur. Thus, independently of the sampling effort we put, we'll never document these pairwise interactions. With a total of $AP$ interactions possible, a fraction of them are impossible to record, because they are forbidden [#E31.7324_PDF][#Olesen:2011a]. Forbidden links are constraints for the establishment of new links, and mainly arise from the biological attributes of the species: no link can be established between a plant and an animal mutualist differing in phenology, i.e. the seeds of a winter-ripening plant cannot be dispersed by a frugivore that is a summer stopover migrant [#E31/2562]. Or, for instance, short-tongued pollinators cannot successfully reach the nectar in long-corolla flowers and pollinate them efficiently [#More:2012kx]. Forbidden links are thus represented as structural zeroes in the interaction matrix, i.e., matrix cells that cannot get a non-zero value. So, we need to account for the frequency of these structural zeros in our matrix before proceeding. For example, most measurements of connectance ($C= I/(AP)$) implicitly ignore the fact that by taking the full product $AP$ in the denominator they are underestimating the actual connectance value, i.e., the fraction of actual interactions $I$ relative to the *possible* ones, not to the total maximum $AP$.
	The number of distinct pairwise interactions that we can record in a landscape (an area of relatively homogeneous vegetation, analogous to the one we would use to monitor species diversity) is equivalent to the number of distinct classes in which we can classify the recorded encounters among individuals of two different species.  We walk in the forest and see a blackbird $Tm$ picking an ivy $Hh$ fruit and ingesting it: we have a record for $Tm-Hh$ interaction. We keep advancing and record again a blackbird feeding on hawthorn $Cm$ fruits so we record a $Tm-Cm$ interaction; as we advance we encounter another ivy plant and record a blackcap swallowing a fruit so we now have a new $Sa-Hh$ interaction, and so on.  At the end we have a series of classes (e.g., $Sa-Hh$, $Tm-Hh$, $Tm-Cm$, etc.), along with their observed frequencies. Bunge & Fitzpatrick [#Bunge:1993ux] review the main aspects and approaches to estimate the number of distinct classes $C$ in a sample of observations. The sampling of interactions in nature, as the sampling of species, is a cumulative process. We add new, distinct, interactions recorded as we increase sampling effort (Fig. 1). We can obtain an Interaction Accumulation Curve ($IAC$) analogous to a Species cumulating Curve ($SAC$): the observed number of distinct pairwise interactions in a survey or collection as a function of the accumulated number of observations or samples[#Colwell:2009gv].   

#####Fig. 2 here #####

Our sampling above would have resulted in a vector $n= [n_1 ... n_C]'$ where $n_i$ is the number of records in the  $i^{th}$ class. As stressed by Bunge & Fitzpatrick [#Bunge:1993ux], however, the $i^{th}$ class would appear in the sample if and only if $n_i > 0$, and we don't know _a priori_ which $n_i$ are zero. So, $n$ is not observable. Rather, what we get is a vector $c= [c_1 ... c_n]'$ where $c_j$ is the number of classes represented $j$ times in our sampling: $c_1$ is the number of singletons, $c_2$ is the number of twin pairs, $c_3$ the number of triplets, etc. The problem thus turns to be estimating the number of distinct classes $C$ from the vector of $c_j$ values.
	Estimating the number of interactions with resulting robust estimates of network parameters is a central issue in the study of ecological interaction networks [#E31/2562][#Bascompte:2014to].

## Asymptotic diversity estimates
Let's assume a sampling of the diversity in a specific locality, over relatively homogeneous landscape where we aim at determining the number of species present for a particular group of organisms. To do that we carry out transects or plot samplings across the landscape, adequately replicated so we obtain a number of samples. Briefly, $S_{obs}$ is the total number of species observed in a sample, or in a set of samples. $S_{est}$ is the estimated number of species in the community represented by the sample, or by the set of samples, where $est$ indicates an estimator. With abundance data, let $S_k$ be the number of species each represented by exactly $k$ individuals in a single sample. Thus, $S_0$ is the number of undetected species (species present in the community but not included in the sample), $S_1$ is the number of singleton species, $S_2$ is the number of doubleton species, etc. The total number of individuals in the sample would be:    
$$n = 􏰢\sum_{k=1}^{S_{obs}}S_k$$    
A frequently used asymptotic, bias corrected, estimator is $S_{Chao}$ [#Hortal:2006dc][#Chao:2005wp][#Colwell:2013kj]:   
	
$$S_{Chao}= S_{obs} + \frac{S_1 (S_1-1)}{2(S_2+1)}$$    

Another frequently used alternative is the Chao2 estimator,  $S_{Chao2}$ [#Gotelli:2001uo], which has been reported to have a limited bias for small sample sizes [#Colwell:1994vt][#Chao:2005wp]:   

$$S_{Chao2}= S_{obs} + \frac{S_1^2}{2S_2}$$ 

A plot of the cumulative number of species recorded,  $S_n$, as a function of some measure of sampling effort (say, $n$ samples taken) yields the species accumulation curve  (SAC) or collector's curve [#Colwell:1994vt]. Such a curve eventually reaches an asymptote converging with $S_{est}$. In an analogous way, interaction accumulation curves (IAC), analogous to SACs, can be used to assess the robustness of interactions sampling for plant-animal community datasets [#E31/2562][#Jordano:2009c][#Olesen:2011a]. 


## Assessing sampling effort when recording interactions 
The basic method we can propose to estimate sampling effort and explicitly show the analogues with rarefaction analysis in biodiversity research is to vectorize the interaction matrix $AP$ so that we get a vector of all the possible pairwise interactions that can occur in a community of $A$ animal species and $P$ plant species.
	The new "species" we aim to sample are the interactions. So, if we have in our community *Turdus merula* ($Tm$) and *Rosa canina* ($Rc$) and *Prunus mahaleb* ($Pm$), our problem will be to sample 2 new "species": $Tm-Rc$ and $Tm-Pm$. In general, if we have $A= 1... i$ , animal species and $P = 1... j$ plant species, we'll have a vector of "new" species to sample: $A_1P_1, A_1P_2,... A_2P_1, A_2P_2, ... A_iP_j$. We can represent the successive samples where we can potentially get records of these interactions in a matrix with the vectorized interaction matrix and columns representing the successive samples we take (Table 1). This is simply a vectorized version of the interaction matrix.

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

## Discussion ##
[#Stumpf:2005tn] It is important to note, however, that in practice, many surveyed networks to date have been subnets of much larger networks. This finding is true for protein interaction (5, 6), gene regulation (7), and metabolic networks (8), where only a subset of the molecular entities in a cell have been sampled

### Concluding Remarks ###


## **Acknowledgements**. ##

I am indebted to Alfredo Valido, Jordi Bascompte, Thomas Lewinshon, John N. Thompson, Nick Gotelli, Carsten Dormann, and Paulo R. Guimarães Jr. for useful and thoughtful comments and discussion at different stages of this manuscript. The study was supported by a Junta de Andalucía Excellence Grant (RNM-5731), as well as a Severo Ochoa Excellence Award from the Ministerio de Economía y Competitividad (SEV-2012-0262). The Agencia de Medio Ambiente, Junta de Andalucía, provided generous facilities that made possible my long-term field work in different natural parks.

---
## Tables

### Table 1. A vectorized interaction matrix.  ###

### Table 2. ***.  ###


## Figures ##
![Figure 1. Sampling ecological interaction networks (e.g., plat-animal interactions) usually focus on different types of subsampling the full network, yielding submatrices $\Delta[m,n]$ of the full interaction matrix $\Delta$ with $A$ and $P$ animal and plant species. a) all the potential plants interacting with a subset of the animals (e.g., studying just the hummingbird-pollinated flower species in a community); b) all the potential animal species interacting with a subset of the plant species (e.g., studying the frugivore species feeding on figs *Ficus* in a community); and c) sampling a subset of  all the potential animal species interacting with a subset of all the plant species (e.g., studying the plant-frugivore interactions of the rainforest understory).](../figures/Fig1.pdf)

![Figure 2. Sampling species interactions in natural communities. Suppose an assemblage with $A= 3$ animal species (red, species 1-3 with  three, two, and 1 individuals, respectively) and $P= 3$ plant species (green, species a-c with three individuals each) (colored balls), sampled with increasing effort in steps 1 to 6 (panels). In Step 1 we record animal species 1 and plant species 1 and 2 with a total of three interactions (black lines) represented as two distinct interactions: $1-a$ and $1-b$. As we advance our sampling (panels 1 to 6, illustrating e.g., additional sampling days) we record new distinct interactions. Note that we actually sample and record interactions among individuals, yet we pool the data across species to get a species by species interaction matrix.](../figures/Fig2.pdf)

![Figure 3. A progressive sampling like the one depicted in Fig. 1, with increasing sampling effort in the form of additional sampling hours, number of focal plants, or number of samples typically yields cumulative trends in the number of distinct pairwise interactions.](../figures/Fig3.pdf)

---

## Online Support Material##

---
##Methods

---
## References for Online Material ##

----

## NOTES ##

### REFS ###

####Chacoff et al.  
One of the major current challenges is to understand sampling accuracy and how to improve it.
Detection increased with increasing sampling effort and flower abundance, but decreased with increasing selectiveness, length of the flowering period and degree (Table 3). In addition,  interactions meant that for plant species with low degree (i.e. specialists), detection decreases with increasing flowering length while it increases for plants with high degree (i.e. generalists) (Fig. 4a). Similarly, for plant species with high selectiveness, detection increases with increasing length of flowering period, while it decreases with decreasing selectiveness (Fig. 4b); finally, for plants with low degree, detection decreases with increasing flower abundance while it increases with increasing degree (Fig. 4c). Thus, plant species with either low degree, high selectivity and long flowering period or generalists species with low flower abundance and short flowering span had the lowest detection of the estimated number of interactions.
We still need to disentangle true ecological factors, such as species abundance and dynamics, from sampling biases (Vázquez et al. 2009a) to improve our ability to detect interactions in mutualistic networks.

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
## REFERENCES ##
[#BanasekRichter:2004ik]: Banasek-Richter, C., Cattin, M. & Bersier, L. (2004) Sampling effects and the robustness of quantitative and qualitative food-web descriptors. Journal of Theoretical Biology, 226, 23-32.

[#Bascompte:2014to]: Bascompte, J. & Jordano, P. (2014) Mutualistic networks. Princeton University Press, Princeton, NJ.    

[#Bersier:2002p9371]: Bersier, L., Banasek-Richter, C. & Cattin, M. (2002) Quantitative descriptors of food-web matrices. Ecology, 83, 2394-2407.   

[#Bosch:2009jga]: Bosch, J., Martín González, A.M., Rodrigo, A. & Navarro, D. (2009) Plant-pollinator networks: adding the pollinator’s perspective. Ecology Letters, 12, 409-419.

[#Brose:2003wv]: Brose, U., Martinez, N. & Williams, R. (2003) Estimating species richness: Sensitivity to sample coverage and insensitivity to spatial patterns. Ecology, 84, 2364-2377.

[#Bunge:1993ux]: Bunge, J. & Fitzpatrick, M. (1993) Estimating the number of species: a review. Journal of the American Statistical Association, 88, 364-373.   

[#Chacoff:2012]: Chacoff, N.P., Vazquez, D.P., Lomascolo, S.B., Stevani, E.L., Dorado, J. & Padrón, B. (2012) Evaluating sampling completeness in a desert plant-pollinator network. Journal of Animal Ecology, 81, 190-200.     

[#Chao:2005wp]: Chao, A. (2005) Species richness estimation. Encyclopedia of Statistical Sciences pp. 7909-7916. New York, USA.    

[#Chao:2009wq]: Chao, A., Colwell, R.K., Lin, C.-W. & Gotelli, N.J. (2009) Sufficient sampling for asymptotic minimum species richness estimators. Ecology, 90, 1125-1133.    

[#Coddington:2009fi]: Coddington, J.A., Agnarsson, I., Miller, J.A., Kuntner, M. & Hormiga, G. (2009) Undersampling bias: the null hypothesis for singleton species in tropical arthropod surveys. Journal of Animal Ecology, 78, 573-584.    

[#Cohen:1978]: Cohen, J.E. (1978) Food webs and niche space. Princeton University Press, Princeton, New Jersey, US.

[#Cohen:1993aa]: Cohen, J.E., Beaver, R.A., Cousins, S.H., DeAngelis, D.L., Goldwasser, L., Heong, K.L., Holt, R.D., Kohn, A.J., Lawton, J.H., Martinez, N., O'Malley, R., Page, L.M., Patten, B.C., Pimm, S.L., Polis, G.A., Rejmanek, M., Schoener, T.W., Schoenly, K., Sprules, W.G., Teal, J.M., Ulanowicz, R.E., Warren, P.H., Wilbur, H.M. & Yodzis, P. (1993) Improving food webs. Ecology, 74, 252-258.    

[#Colwell:1994vt]: Colwell, R. & Coddington, J. (1994) Estimating terrestrial biodiversity through extrapolation. Philosophical Transactions of the Royal Society of London Series B-Biological Sciences, 345, 101-118.     

[#Colwell:2009gv]: Colwell, R.K. (2009) Biodiversity: concepts, patterns, and measurement. The Princeton Guide to Ecology Princeton University Press, Princeton.     

[#Colwell:2013kj]: Colwell RK. (2013) EstimateS: Statistical estimation of species richness and shared species from samples user’s guide and application.`http://purl.oclc.org/estimates`.     

[#Dorado:2011cf]: Dorado, J., Vázquez, D.P., Stevani, E.L. & Chacoff, N.P. (2011) Rareness and specialization in plant-pollinator networks. Ecology, 92, 19-25.      

[#Dormann:2009aa]: Dormann, C.F., Frund, J., Bluthgen, N. & Gruber, B. (2009) Indices, graphs and null models: Analyzing bipartite ecological networks. Open Ecology Journal, 2, 7-24.     

[#Eklof:2013ed]: Eklöf, A., Jacob, U., Kopp, J., Bosch, J., Castro-Urgal, R., Chacoff, N.P., Dalsgaard, B., de Sassi, C., Galetti, M., Guimaraes, P.R., Lomáscolo, S.B., Martín González, A.M., Pizo, M.A., Rader, R., Rodrigo, A., Tylianakis, J.M., Vazquez, D.P. & Allesina, S. (2013) The dimensionality of ecological networks. Ecology Letters, 00, 000-000.

[#Frund:2015ii]: Frund, J., McCann, K.S. & Williams, N.M. (2015) Sampling bias is a challenge for quantifying specialization and network structure: lessons from a quantitative niche model. Oikos, 00: 000-000.      

[#Gibson:2011eh]: Gibson, R.H., Knott, B., Eberlein, T. & Memmott, J. (2011) Sampling method influences the structure of plant-pollinator networks. Oikos, 120, 822-831.

[#GonzalezVaro:2014ij]: González-Varo, J.P., Arroyo, J.M. & Jordano, P. (2014) Who dispersed the seeds? The use of DNA barcoding in frugivory and seed dispersal studies. Methods in Ecology and Evolution, 5, 806-814.

[#Gotelli:2001uo]: Gotelli, N. & Colwell, R. (2001) Quantifying biodiversity: procedures and pitfalls in the measurement and comparison of species richness. Ecology Letters, 4, 379-391.         

[#Gotelli:2011tb]: Gotelli, N.J. & Colwell, R.K. (2011) Estimating species richness. Biological Diversity Frontiers in Measurement and Assessment (eds A.E. Magurran & B.J. McGill), pp. 39-54. Oxford University Press, Oxford, UK.      

[#Hortal:2006dc]: Hortal, J., Borges, P. & Gaspar, C. (2006) Evaluating the performance of species richness estimators: sensitivity to sample grain size. Journal of Animal Ecology, 75, 274-287.          

[#E31/2562]: Jordano, P. (1987) Patterns of mutualistic interactions in pollination and seed dispersal: connectance, dependence asymmetries, and coevolution. The American Naturalist, 129, 657-677.         

[#E31.7324_PDF]: Jordano, P., Bascompte, J. & Olesen, J. (2003) Invariant properties in coevolutionary networks of plant-animal interactions. Ecology Letters, 6, 69-81.       

[#Jordano:2009c]:  Jordano, P., Vázquez, D. & Bascompte, J. (2009) Redes complejas de interacciones planta--animal (eds R. Medel, R. Dirzo & R. Zamora, pp. 17-41. Editorial Universitaria, Santiago, Chile.      

[#JuradoRiver:2009cp]: Jurado-Rivera, J.A., Vogler, A.P., Reid, C.A.M., Petitpierre, E. & Gomez-Zurita, J. (2009) DNA barcoding insect-host plant associations. Proceedings of the Royal Society B - Biological Sciences, 276, 639-648.

[#Magurran:1988mm]: Magurran, A.E. (1988) Ecological diversity and its measurement. Princeton University Press, Princeton, US.         

[#Martinez:1991aa]: Martinez, N.D. (1991) Artifacts or attributes? Effects of resolution on the Little Rock lake food web. Ecological Monographs, 61, pp. 367-392.      

[#Martinez:1993ti]: Martinez, N.D. (1993) Effects of resolution on food web structure. Oikos, 66, 403-412.      

[#Memmott:2006vy]: Memmott, J., Alonso, D., Berlow, E., Dobson, A., Dunne, J.A., Solé, R.V. & Weitz, J.S. (2006) Biodiversity loss and ecological network structure. Ecological Networks Linking Structure to Dynamics in Food Webs (eds M. Pascual & J.A. Dunne pp. 325-347. Oxford University Press, Oxford, UK.      

[#More:2012kx]: Moré, M., Amorim, F.W., Benitez-Vieyra, S., Medina, A.M., Sazima, M. & Cocucci, A.A. (2012) Armament imbalances: match and mismatch in plant-pollinator traits of highly specialized long-spurred orchids. PLoS ONE, 7, e41878.      

[#Nielsen:2007]: Nielsen, A. & Bascompte, J. (2007) Ecological networks, nestedness and sampling effort. Journal of Ecology, 95, 1134-1141-1141.      

[#Olesen:2011a]: Olesen, J.M., Bascompte, J., Dupont, Y.L., Elberling, H. & Jordano, P. (2011) Missing and forbidden links in mutualistic networks. Proceedings of the Royal Society B-Biological Sciences, 278, 725-732.        

[#Olito:2014gc]: Olito, C. & Fox, J.W. (2014) Species traits and abundances predict metrics of plant-pollinator network structure, but not pairwise interactions. Oikos, 124, 428-436.        

[#Ollerton:2002jw]: Ollerton, J. & Cranmer, L. (2002) Latitudinal trends in plant-pollinator interactions: are tropical plants more specialised? Oikos, 98, 340-350.        

[#Pereira:2013ji]: Pereira, H.M., Ferrier, S., Walters, M., Geller, G.N., Jongman, R.H.G., Scholes, R.J., Bruford, M.W., Brummitt, N., Butchart, S.H.M., Cardoso, A.C., Coops, N.C., Dulloo, E., Faith, D.P., Freyhof, J., Gregory, R.D., Heip, C., Hoft, R., Hurtt, G., Jetz, W., Karp, D.S., Mcgeoch, M.A., Obura, D., Onoda, Y., Pettorelli, N., Reyers, B., Sayre, R., Scharlemann, J.P.W., Stuart, S.N., Turak, E., Walpole, M. & Wegmann, M. (2013) Essential biodiversity variables. Science, 339, 277-278.        

[#RiveraHutinel:2012vn]: Rivera-Hutinel, A., Bustamante, R.O., Marín, V.H. & Medel, R. (2012) Effects of sampling completeness on the structure of plant-pollinator networks. Ecology, 93, 1593-1603.        

[#Schleuning:2012eg]: Schleuning, M., Frund, J., Klein, A.-M., Abrahamczyk, S., Alarcón, R., Albrecht, M., Andersson, G.K.S., Bazarian, S., Böhning-Gaese, K., Bommarco, R., Dalsgaard, B., Dehling, D.M., Gotlieb, A., Hagen, M., Hickler, T., Holzschuh, A., Kaiser-Bunbury, C.N., Kreft, H., Morris, R.J., Sandel, B., Sutherland, W.J., Svenning, J.-C., Tscharntke, T., Watts, S., Weiner, C.N., Werner, M., Williams, N.M., Winqvist, C., Dormann, C.F. & Blüthgen, N. (2012) Specialization of mutualistic interaction networks decreases toward tropical latitudes. Current Biology, 22, 1925-1931.

[#Schupp:2010]: Schupp, E.W., Jordano, P. & Gómez, J.M. (2010) Seed dispersal effectiveness revisited: a conceptual review. New Phytologist, 188, 333-353.

[#Snow:1988iu]: Snow, B., Snow, D. (1988) Birds and Berries. Poyser: Calton, UK.   

[#Strogatz:2001wc]: Strogatz, S. (2001) Exploring complex networks. Nature, 410, 268-276.

[#Stumpf:2005tn]: Stumpf, M.P.H., Wiuf, C. & May, R.M. (2005) Subnets of scale-free networks are not scale-free: Sampling properties of networks. Proceedings of the National Academy of Sciences USA, 102, 4221-4224.

[#Thebault:2010jv]: Thébault, E. & Fontaine, C. (2010) Stability of ecological communities and the architecture of mutualistic and trophic networks. Science, 329, 853-856.
  
[#ValienteBanuet:2014bw]: Valiente-Banuet, A., Aizen, M.A., Alcántara, J.M., Arroyo, J., Cocucci, A., Galetti, M., García, M.B., García, D., Gomez, J.M., Jordano, P., Medel, R., Navarro, L., Obeso, J.R., Oviedo, R., Ramírez, N., Rey, P.J., Traveset, A., Verdú, M. & Zamora, R. (2014) Beyond species loss: the extinction of ecological interactions in a changing world. Functional Ecology, 29, 299-307.          

[#Vazquez:2005]: Vázquez, D., Morris, W. & Jordano, P. (2005) Interaction frequency as a surrogate for the total effect of animal mutualists on plants. Ecology Letters, 8, 1088-1094.

[#Vazquez:2009p82]: Vázquez, D.P., Chacoff, N.P. & Cagnolo, L. (2009) Evaluating multiple determinants of the structure of plant-animal mutualistic networks. Ecology, 90, 2039-2046.             

[#Vazquez:2015ec]: Vázquez, D.P., Ramos-Jiliberto, R., Urbani, P. & Valdovinos, F.S. (2015) A conceptual framework for studying the strength of plant-animal mutualistic interactions (ed M Eubanks). Ecology Letters, n/a–n/a.


### REFRENCES TO ADD ###

[#Burkle:2012uz]: Burkle, L.A. & Knight, T.M. (2012) Shifts in pollinator composition and behavior cause slow interaction accumulation with area in plant-pollinator networks. Ecology, 93, 2329-2335.

Kissling, W.D. & Schleuning, M. (2014) Multispecies interactions across trophic levels at macroscales: retrospective and future directions. Ecography, 38, 346–357.

