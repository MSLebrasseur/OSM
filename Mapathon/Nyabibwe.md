## Nyabibwe (DRC) Mapping Party 

<font-family: Arial,Liberation Sans,DejaVu Sans,sans-serif; font-size: 80%; - Programmers: font-family: Tahoma,Geneva,Arial,sans-serif; font-size: 12px;>
(Include a description of the task)

This is what we have now... __Let's demonstrate what can a mapping party get!__
![](http://gis.asseng.info/Nyabibwe/Nyabibwe_OSM_24092015_low.png)

#####CREATE AN OPENSTREETMAP ACCOUNT OR USE ONE OF THE PRE-SET Account

Log with your own account  create quicly one or use a third party account (Google+, Facebook, Window Live, Yahoo,...)

*http://openstreetmap.org/

*https://www.openstreetmap.org/login?referer=%2Fuser%2Fnew


* On the OpenStreetMap.org website, click “sign up” in the top right corner of the page.
* After filling the form, go back on the map and click Edit !



#####THE TASK MANAGER

In Mozilla (ICT Store) or Chrome !

http://tasks.hotosm.org/

* Search for Nyabibwe                                                                    
![](http://gis.asseng.info/bambari/TM_Search2.png)

* Select the Task:
  1222 - Nyabibwe, South Kivu, DRC
* Select a square in the map which has not been validated (not in green)
* Press __Start Mapping__
* Select __Edit with ID Editor__


######The Task:

* Add a custom tile service (basemap satellite imagery)
![](http://gis.asseng.info/bambari/TM_Custom.png)

* The image link is : __https://{switch:a,b,c,d}.tiles.mapbox.com/v4/icrc.vykkltiv/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiaWNyYyIsImEiOiJ5dlNMaUhnIn0.QG1pZIPyfyekyHFAS6vb2w__

* Move the background a bit, in order to match the elements with the image                                            
![](http://gis.asseng.info/bambari/TM_Alignment.png)

* Draw the landuse:  buildings and roads, the palm tree plantattions, rivers using the satellite image as background.

* Select the tag Building in the left panel 

* Make it orthogonal with "s"

* When Saving add the tag: #DRC, #ICRC-Nyabibwe #hotosm-task-#1222 source=Pleaide 21.05.15

* Don't forget to unlock the square!


#####SOME VIDEOS: 

[MapGive](http://mapgive.state.gov/learn-to-map/ "MapGive")

[Nepal](https://vimeo.com/126611252 "Nepal")

#####Other Links
* https://api.mapbox.com/v4/icrc.39hpztee/page.html?access_token=pk.eyJ1IjoiaWNyYyIsImEiOiJ5dlNMaUhnIn0.QG1pZIPyfyekyHFAS6vb2w#15/12.3277/124.8436 

* http://wiki.openstreetmap.org/wiki/Map_Features
 
 
#####Results tracking
http://overpass-turbo.eu/

OVERPASS-turbo query for obtain the number of buildings mapped this day!

````
(
 way({{bbox}})["building"](changed:"2015-10-1T00:00:00Z","2015-10-1T22:00:00Z");
);
(._;>;);
out;
```

