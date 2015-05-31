Yeah Overpass API !

All the buildings in a buffer of 1000m around the river Nyamwamba

´´´
way["name"="River Nyamwamba"];
way
  (around:1000)
  ["building"="yes"];
/*added by auto repair*/
(._;>;);
/*end of auto repair*/
out body;

´´´
