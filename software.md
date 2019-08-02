---
layout: default
title: Software
---
<head>
  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-121833450-1"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-121833450-1');
  </script>
</head>
# Software
I use [R](https://cran.r-project.org) for all my analysis and software development. Below I have grouped the Shiny apps and R packages that I have built (or contributed to) by application.

## Evidence synthesis
**revtools**<br>
This package provides functions to import bibliographic data, screen for and remove duplicates, and investigate patterns in document similarity using a combination of topic models and correspondence analysis.
<br>
<a href="https://cran.r-project.org/package=revtools" title="CRAN::revtools">
  <img src="http://www.r-pkg.org/badges/version-last-release/revtools">
</a>
<a href="https://cran.r-project.org/package=revtools" title="CRAN::revtools">
  <img src="https://cranlogs.r-pkg.org/badges/grand-total/revtools">
</a>
<a href="https://revtools.net" title="Homepage" target="_blank" rel="noopener">
  <i class="fa fa-home fa-2x" style="color:#727272"></i>
</a>
<a href="https://github.com/mjwestgate/revtools"
  title="GitHub"
  target="_blank"
  rel="noopener">
  <i class="fa fa-github fa-2x" style="color:#727272"></i>
</a>
<a href="/assets/pubs/2019_Westgate_revtools_bioRxiv_v2.pdf"
  target="_blank"
  title="PDF">
  <i class="fa fa-file-pdf-o fa-2x" style="color:#727272"></i>
</a>

**PredicTER**<br>
A Shiny app to estimate the time taken to complete an environmental systematic review or map as described in <a href="https://doi.org/10.1111/cobi.13231"
  title="ConsBiol"
  target="_blank"
  rel="noopener">this paper by myself and Neal Haddaway</a>. Estimated values are derived from both the scientific literature and a survey of systematic review practitioners; but users can alter any of the input parameters to customize the estimate to their own circumstances.
<br>
<a href="https://predicter.org"
  title="Homepage"
  target="_blank"
  rel="noopener">
  <i class="fa fa-home fa-2x" style="color:#727272"></i>
</a>
<a href="https://github.com/mjwestgate/PredicTER"
  title="GitHub"
  target="_blank"
  rel="noopener">
  <i class="fa fa-github fa-2x" style="color:#727272"></i>
</a>
<a href="/assets/pubs/2018_Haddaway_biorxiv.pdf"
  target="_blank"
  title="PDF">
  <i class="fa fa-file-pdf-o fa-2x" style="color:#727272"></i>
</a>

**eviatlas**<br>
A Shiny app to plot outcomes from systematic maps. This project was developed at the Evidence Synthesis Hackathon and I haven't contributed much to the code; but it's here because it's a cool piece of software that's going to be really useful.<br>
<a href="https://github.com/ESHackathon/eviatlas"
  title="GitHub"
  target="_blank"
  rel="noopener">
  <i class="fa fa-github fa-2x" style="color:#727272"></i>
</a>


## Ecology
**circleplot**<br>
An R package for circular network diagrams, inspired by the circlize package (though circleplot is much simpler). My rationale was that using curves rather than straight lines, and careful use of colours, can improve the interpretability of network diagrams. This is a useful package for some visualisation tasks, but it's not well integrated with other network packages and is written with base (i.e. not ggplot2), so it probably won't go on CRAN anytime soon.<br>
<a href="https://github.com/mjwestgate/circleplot"
  title="GitHub"
  target="_blank"
  rel="noopener">
  <i class="fa fa-github fa-2x" style="color:#727272"></i>
</a>

**sppairs**<br>
An R package to implement pairwise 'apply' functions. It was built to calculate pairwise association metrics based on odds ratios (see <a href="https://doi.org/10.1002/ece3.1182" target="_blank" rel="noopener">Lane et al. 2014</a>), but includes options for a number of possible model types.<br>
<a href="https://github.com/mjwestgate/sppairs"
  title="GitHub"
  target="_blank"
  rel="noopener">
  <i class="fa fa-github fa-2x" style="color:#727272"></i>
</a>
<a href="/assets/docs/pubs/2014_Lane_EcolEvol.pdf"
  target="_blank"
  title="PDF">
  <i class="fa fa-file-pdf-o fa-2x" style="color:#727272"></i>
</a>

**biodiversity surrogates**<br>
A Shiny app to visualise groups of taxa to select for optimal biodiversity assessment, as presented in <a href="https://doi.org/10.1111/ecog.02318" target="_blank" rel="noopener">Westgate et al. 2017</a>.<br>
<a href="https://github.com/mjwestgate/biodiversity_surrogates"
  title="GitHub"
  target="_blank"
  rel="noopener">
  <i class="fa fa-github fa-2x" style="color:#727272"></i>
</a>
<a href="/assets/docs/pubs/2017_Westgate_Ecography.pdf"
  target="_blank"
  title="PDF">
  <i class="fa fa-file-pdf-o fa-2x" style="color:#727272"></i>
</a>
