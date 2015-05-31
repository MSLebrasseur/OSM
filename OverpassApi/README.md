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
