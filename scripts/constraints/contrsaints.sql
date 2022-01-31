alter table manager
add constraint checkLongevityOfTheName check (CHAR_LENGTH(fullName)<100);

alter table advertesingagency
add constraint checkMinPrice check(minimalProjectPrice>=1000 and minimalProjectPrice<=1000000);

alter table positionOfManager
add constraint checkSallary check(salary>=1000 and salary<=10000);

alter table audience
add constraint checkNumber check(estimatedNumber>=100 and estimatedNumber<=100000);

alter table orderingoffice
add constraint checkNumOfWorkers check(numberOfEmployees>=40 and numberOfEmployees<=400);

alter table audience
add constraint checkAge check(averageAge>=1 and averageAge<=150);

alter table orderedService
add constraint checkDate check(dateOfTheEnd>dateOfTheStart);
