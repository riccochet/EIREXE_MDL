mrgPath = @"C:\sunnymodel\ui020.max"
objNames = getMAXFileObjectNames mrgPath

-- Find bad data
for o in 1 to objNames.count do (
obj = #()
obj[1] = objNames[o]
try(mergeMAXFile mrgPath obj #deleteOldDups #useSceneMtlDups #alwaysReparent)catch(format "merge failed:%\n" obj[1])
)