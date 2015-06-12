###Yeah Overpass API !

All the buildings in a buffer of 1000m around the river Nyamwamba

```
way["name"="River Nyamwamba"];
way
  (around:1000)
  ["building"="yes"];
(._;>;);
out body;
```

Polygone of Allepo

````
area[int_name="Syria"];
(relation[name="Aleppo"](area););
(._;>;);
out;
````

Json of the hospitals in Syria

```
[out:json];
area[int_name="Syria"];
(node[amenity="hospital"](area););
out;
```

All the roads mapped during the CartONG mapathon

```
[out:json];
area[name="Kigoma"];
(
  way[highway](changed:"2015-06-01T18:00:00Z","2015-06-01T22:00:00Z")(area);
);
(._;>;);
out meta;
```

All the buildings during Bambari Mapathon

```
[out:json];
(
 way({{bbox}})["building"](changed:"2015-06-11T00:00:00Z","2015-06-11T22:00:00Z");
);
(._;>;);
out meta;
```
