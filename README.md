# Movie Reviews Database

Project assignment for class CS 4354 (Concepts of Database Systems) with Dr. Abdul Serwadda, at Texas Tech University (Lubbock, TX).

The purpose was to create a Movie Review database using MySQL, where users can provide reviews (score and comments) about certain movies, which have information about their production that consists of the producers, directors, actors, writers and the publisher company financing the movie.

## Tables

| Tables        | Description                                        |
| ------------- |:--------------------------------------------------:|
| user          | application's user information                     |
| review        | reviews created by usera about a movie             |
| movie         | general movie information                          |
| production    | people and publisher responsible for creating movie|
| movie_people  | producers, directors, actors and writers           |
| publisher     | companies that finance movies                      |

## Setup

The commands required to setup the database are in the ```table_creation.sql``` file, and the data for each respective table is under the ```Data``` directory.

The file ```queries.sql``` has some of the queries performed during the project presentation to demonstrate the database relations, triggers and views.

## Contributors
- Bryce Bond
- Bipin Chhetr
- Christopher Bednarz
- Cristiano Caon
- Michael Contreras
