# agent-based-modelling
Course on Mobility data with Agend-Based-Modelling. This Repo is my private Repo for Version Control.

## important files from Whiteboard
- <a href="https://mycampus.imp.fu-berlin.de/access/content/group/832cda66-0ba2-48c4-8cda-3f3344746232/spew%3A%20Synthetic%20Population%20and%20Ecosystems%20of%20the%20World/README.txt"> Install Readme.txt </a>
- <a href="http://www.stat.cmu.edu/~spew/assets/spew_quickstart.html"> Dokumentation spew-library </a>
- <a href="https://mycampus.imp.fu-berlin.de/access/content/group/832cda66-0ba2-48c4-8cda-   3f3344746232/spew%3A%20Synthetic%20Population%20and%20Ecosystems%20of%20the%20World/spew.pdf"> Academic Paper - spew.pdf</a>
- <a href="https://mycampus.imp.fu-berlin.de/access/content/group/832cda66-0ba2-48c4-8cda-3f3344746232/spew%3A%20Synthetic%20Population%20and%20Ecosystems%20of%20the%20World/spew_brief_tour.R"> Breefing in R - random Document </a>




### tip and tricks:

install packages because of R-versions if not compatible
``` 
install.packages("https://github.com/leerichardson/spew.git")
install.packages("https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-76.tar.gz")
install.packages("ggplot2") 

```
```
extra packages (Menu-> Tools-> Install Packages (git-repo)) 
```

Windowsproblems:

``` 
write('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', file = "~/.Renviron", append = TRUE) 
``` 


## Data sources on mobility:
- Mobilität in Deutschland (MiD) http://www.mobilitaet-in-deutschland.de/ (surveys on mobility in Germany with publications 2002, 2008, 2017)
- System repräsentativer Verkehrsvefragungen: e.g., for Berlin: https://www.berlin.de/sen/uvk/verkehr/verkehrsdaten/zahlen-und-fakten/mobilitaet-in-staedten-srv-2018/
- Kraftfahrtbundesamt https://www.kba.de/DE/Statistik/Produktkatalog/produktkatalog_node.html
- data on biking https://github.com/mltbnz/awesome-bikeprojects 
- https://www.umweltbundesamt.de/publikationen/verkehrswende-fuer-alle 


# Summary

The Mobility Transition Model (MoTMo) is a large-scale, empirically grounded agent-based model that simulates private mobility demand in Germany for supporting discussions between researchers and stakeholders about sustainable mobility.

This project seminar shall go through the whole cycle of building an agent-based model, from data collection via specification, implementation, and calibration to visualization, along the lines of the existing MoTMo. Beyond model development, students shall have the possibility to experience and contribute to a so-called Decision Theatre: a dialogue format that allows participants to experiment with a model in the course of a discussion workshop.
