# Movie Reviews Database

Project assignment for class CS 4354 (Concepts of Database Systems) with Dr. Abdul Serwadda, at Texas Tech University (Lubbock, TX).

The purpose of this project was to create a Movie Review database using MySQL, where users can provide reviews (score and comments) about certain movies, which have information about their production that consists of the producers, directors, actors, writers and the publisher company financing the movie.

The designs created for the initial implementation of the database are in the ```Diagrams``` folder, and the presentation of the project is in the ```Presentation``` folder.

## Setup

The commands required to setup the database are in the ```table_creation.sql``` file, and the data for each respective table is under the ```Data``` directory.

The file ```queries.sql``` has some of the queries performed during the project presentation to demonstrate the database relations, triggers and views.

## Entities

| Tables             | Description                                        |
| ------------------ |:--------------------------------------------------:|
| user               | application's user information                     |
| review             | reviews created by users about a movie             |
| movie              | general movie information                          |
| production         | production of a movie with a certain publisher     |
| movie_people       | variety of people that participate in movies       |
| production_people  | connects production with people and their roles    |
| publisher          | companies that finance movies                      |
