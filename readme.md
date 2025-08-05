Original App Design Project - README
===

# MOVIETIX (formerly FilmTix)

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

This is an app for ordering tickets to see movies in any theatre. This app is based on many different movie ticket ordering apps (e.g., Fandango, Atom Tickets...), and this is a simple version of the app.

### App Evaluation

[Evaluation of your app across the following attributes]
- **Category:** Entertainment
- **Mobile:** Website is view-only and allows users to buy movie tickets and/or see the details of the movies, mobile-first experience.
- **Story:** Allows users to buy movie tickets and see details about movies.
- **Market:** Movie lovers and people who want to buy movie tickets.
- **Habit:** Users can buy movie tickets and see details about movies.
- **Scope:** Movie lovers and people who want to buy movie tickets.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can see a list of movies available to buy tickets in the app
* User can see details about a movie
* User can buy tickets for a movie
* User can see if the movie tickets are purchased

**Optional Nice-to-have Stories**

* User can log into the app to buy tickets

### 2. Screen Archetypes

- [ ] Movie List Screen
* User can see a list of movies available to buy tickets in the app
- [ ] Movie Details Screen
* User can see details about a movie, ratings, plot,and order tickets for a movie
- [ ] Movie Tickets Screen
* User can add movie tickets to the cart
- [ ] Movie Cart Screen
* User can buy tickets for a movie
- [ ] Movie Tickets Purchased Screen
* User can see if the movie tickets are purchased and confirmed
- [ ] User Screen
* User can see their profile, purchased tickets, and a theater location
- [ ] User My Tickets Screen
* User can see their purchased tickets


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home Feed
* Cart (Buying Tickets)
* User Profile

**Flow Navigation** (Screen to Screen)

- [ ] Stream Film Screen
* => None, but future versions will likely involve sign-in.
- [ ] Movie Detail Screen
* => Home (Stream Film Screen) -> Movie Detail
* => In the actual wireframe, you will need multiple screens to represent the creation process to add filters, etc.
- [ ] Movie Tickets Screen
* => Home (Stream Film Screen) -> Movie Detail -> Movie Tickets
* => In the actual wireframe, you will need multiple screens to represent the creation process to add filters, etc.
- [ ] Movie Cart Screen
* => Home (Stream Film Screen) -> Cart on Navigation Bar -> Movie Cart Screen
- [ ] Tickets Purchased Screen
* => Home (Stream Film Screen) -> Cart on Navigation Bar -> Movie Cart Screen -> Confirm button -> Tickets Purchased Screen
*  => In the actual wireframe, you will need multiple screens to represent the creation process to add filters, etc.
- [ ] User Profile Screen
* => Home (Stream Film Screen) -> User Profile
- [ ] My Tickets Screen
* => Home (Stream Film Screen) -> User Profile -> My Tickets -> View Details
*  => In the actual wireframe, you will need multiple screens to represent the creation process to add filters, etc.

## Wireframes

[Add picture of your hand sketched wireframes in this section]
<img src="https://new.express.adobe.com/publishedV2/urn:aaid:sc:VA6C2:755eaa1b-6568-45f2-8b6f-0bcc566239fd?promoid=Y69SGM5H&mv=other" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
