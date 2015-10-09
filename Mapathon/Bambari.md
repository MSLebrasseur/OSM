#### BAMBARI MAPATHON
 
#####CREATE AN OPENSTREETMAP ACCOUNT

http://openstreetmap.org/

* On the OpenStreetMap.org website, click “sign up” in the top right corner of the page.
* After filling the form, go back on the map and click Edit !

#####THE TASK MANAGER

(in mozilla or Chrome !)

http://tasks.hotosm.org/

* Search for Bambari                                                                     
![](http://gis.asseng.info/bambari/TM_Search2.png)

* Select the Task:
  _#141 Central African Republic, Ouaka, Bambari_
* Select a square in the map which has not been validated (not in green)
* Press __Start Mapping__
* Select __Edit with ID Editor__


######The Task:

* Add a custom tile service (basemap satellite imagery)
![](http://gis.asseng.info/bambari/TM_Custom.png)

* The image link is : https://b.tiles.mapbox.com/v3/icrc.j6xkcsor/{z}/{x}/{y}.png
* 

* Move the background a bit, in order to match the elements with the image                                            
![](http://gis.asseng.info/bambari/TM_Alignment.png)

* Draw the missing buildings and roads using the satellite image as background.

* Select the tag Building in the left panel 

* Make it orthogonal with "s"

* When Saving add the tag: #CAR, Bambari #hotosm-task-141, #sources ICRC 14 April 2014

* Don't forget to unlock the square!


#####SOME VIDEOS: 

[MapGive](http://mapgive.state.gov/learn-to-map/ "MapGive")

[Nepal](https://vimeo.com/126611252 "Nepal")

#####Other Links
* http://54.77.175.142:8888/v2/bambari/{z}/{x}/{y}.png

* http://wiki.openstreetmap.org/wiki/Map_Features

Requete OVERPASS-turbo pour avoir le nombre de building mappé ce jour ! 

````
(
 way({{bbox}})["building"](changed:"2015-06-11T00:00:00Z","2015-06-11T22:00:00Z");
);
(._;>;);
out;
```
