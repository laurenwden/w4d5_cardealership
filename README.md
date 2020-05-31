# Car Dealership PostgreSQL database

This is the first Database by Joel's Minions.

The code was written by:
* Celeste B., 
* Jackie H., 
* Lauren W., 
* Jack N. and, 
* Aaron A.

The business rules can be found [here](https://docs.google.com/document/d/1gGk-BPzgWTsfX_40Jc1IuG3ZkXiFRWpiMMMkpJovYIM/edit).

Each member of the team was able to parcipate in every step, as we worked using Lucidchart cloud/sharing views as well as Zoom screen sharing. 

For practical reasons, we decided to have a git repo originator and have each member in the team deliver a server-side copy/fork. 

## Entities

We created 8 entities for the Car Dealership.  

We divided the dealership into 2 main branches; the car servicing side and the car purchasing side.  

We created Primary Keys for each entity and as we were creating the primary keys, we created some Foreign Keys based on correlations that we quickly noticed. 

## Cardinality

Based on the entities created we decided what to connect and what kind of connections they should be. 

We used lucidchart to create the connections and all the foreign and primary keys.

## Exporting/Importing PostgreSQL

We exported the ERD into PostgreSQL to create the tables(created a new server) and we had to re-format the entire script because the Foreign Keys were added-in incorrectly. 

From there we were able to create another query for the values where we worked together on what values we needed to create first.

# Add/Alter's

We altered several tables to add columns that we forgot to include when creating entities in Lucidchart. We added amount columns into the invoice and car_servicing columns as well as a column in car_servicing to identify service types. 

Insertions into tables were then updated to include values for these columns. 