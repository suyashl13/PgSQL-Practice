-- Case keyword demo
select name, 
    case
        when population > 1000000 then 'large'
        when population > 100000 then 'medium'
        else 'small'
    end as population_type
from cities

-- Coalesce keyword demo
select name, 
    coalesce(population, 0) as population
from cities

-- greatest keyword demo
select name, 
    greatest(population, 0) as population
from cities

-- least keyword demo
select name, 
    least(population, 0) as population
from cities
