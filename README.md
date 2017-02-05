# Bike me

This tutorial subjects the construction of a small application that shows the status of public bicycle stations. It is divided in small sessions called day which represent a fraction of the work that can fit in one hour. Theses sessions cover the main aspects of the Pomm framework.

The requirements are:
 - A PostgreSQL 9.4 database
 - A PHP 5.5 or more with the pgsql, intl and curl extensions
 - composer.phar

This tutorial uses the JCDecaux’s API, you need to register and get an API key on [their site](https://developer.jcdecaux.com).

## Day 1 - Architecture

Day 1, is the database architecture day. In order to design the database properly, one needs to know the treatments performed on the data. The idea here is to display stations with informations about the availability of bikes (or slots). Owing the [data structure](https://developer.jcdecaux.com/#/opendata/vls?page=dynamic)
