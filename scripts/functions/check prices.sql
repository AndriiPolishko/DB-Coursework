create function checkPrices(minimalP int,budget int)
returns bool
return minimalP<=budget;