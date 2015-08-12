#### Silvino Lobos Mapping Party 
Mapping data will be used by the Water and Habitat unit of the ICRC for planning the water network

<font-family: Arial,Liberation Sans,DejaVu Sans,sans-serif; font-size: 80%; - Programmers: font-family: Tahoma,Geneva,Arial,sans-serif; font-size: 12px;>
The Municipality of Silvino Lobos is one of the Geographical Isolated and Disadvantaged Areas (GIDA) in Northern Samar where effects of the long term conflict with the New Peoples Army (NPA) are the most evident. 
The 5’000 resident of the main town and the 13,000 located in the surroundings, live in difficult conditions of underdevelopment and marginalization due to the lack of most essential services. 
No electricity, no access road and very minimal water supply.  
To improve access to safe water, it is proposed to rehabilitate and the existing line, improve an existing borehole and eventually drill a new one.


* ![](http://gis.asseng.info/Silvinolobos/SilvinoLobos1.jpg) one of the water points with uneven water pressure
* ![](http://gis.asseng.info/Silvinolobos/SilvinoLobos2.jpg) concrete  existing intake box




#####CREATE AN OPENSTREETMAP ACCOUNT OR USE ONE OF THE PRE-SET Account 

*Account 1 name 1
*Account 2 name 2

http://openstreetmap.org/

* On the OpenStreetMap.org website, click “sign up” in the top right corner of the page.
* After filling the form, go back on the map and click Edit !

#####THE TASK MANAGER

(in mozilla or Chrome !)

http://tasks.hotosm.org/

* Search for Silvino                                                                    
![](http://gis.asseng.info/bambari/TM_Search2.png)

* Select the Task:
  _#1148 Philippines, Samar, Silvino Lobos
* Select a square in the map which has not been validated (not in green)
* Press __Start Mapping__
* Select __Edit with ID Editor__


######The Task:

* Add a custom tile service (basemap satellite imagery)
![](http://gis.asseng.info/bambari/TM_Custom.png)

* The image link is : https://a.tiles.mapbox.com/v4/icrc.39hpztee/{z}/{x}/{y}.png

* Move the background a bit, in order to match the elements with the image                                            
![](http://gis.asseng.info/bambari/TM_Alignment.png)

* Draw the landuse:  buildings and roads, the palm tree plantattions, rivers using the satellite image as background.

* Select the tag Building in the left panel 

* Make it orthogonal with "s"

* When Saving add the tag: #PH, ICRC-SilvinoLobos #hotosm-task-#1148,Pleaide 17.02.15

* Don't forget to unlock the square!


#####SOME VIDEOS: 

[MapGive](http://mapgive.state.gov/learn-to-map/ "MapGive")

[Nepal](https://vimeo.com/126611252 "Nepal")

#####Other Links
* https://a.tiles.mapbox.com/v4/icrc.39hpztee/{z}/{x}/{y}.png

* http://wiki.openstreetmap.org/wiki/Map_Features

Requete OVERPASS-turbo pour avoir le nombre de building mappé ce jour ! 

````
(
 way({{bbox}})["building"](changed:"2015-06-11T00:00:00Z","2015-06-11T22:00:00Z");
);
(._;>;);
out;
```
