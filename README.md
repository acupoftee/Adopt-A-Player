<p align="center">
<img src="readme_assets/logo.png" alt="Overwatcher.gg" title="Overwatcher.gg">
</p>

## About
Overwatcher.gg is a mentoring platform for players to improve their gameplay with the help of highly skilled players. The idea came to fruitiion after noticing a need for stable mentoring programs to complement the rise of esports at the high school and collegiate level. As a former assistant Tespa coach and Top 500 Overwatch player, facilitaitng player growth personally and professinoaly became a passion.

You can view the deployed site on [Heroku](https://adopt-a-player.herokuapp.com)

You can checkout the frontend for Overwatcher.gg [here](https://github.com/acupoftee/Adopt-A-Player-Client)!

## Planning
To meet General Assembly's MVP, resources were crafted carefully to ensure scalability and maintainability for future iterations. This resulted in creating only 3 additional resources including a join table, and adding columns to the existing `User` table.

Problem solving strategies involved were first creating a plan on paper, then translating it into psuedocode, and finally coded the solution. The [SEI issue tracker](https://git.generalassemb.ly/ga-wdi-boston/game-project/issues) helped with arriving at solutions with my own approach. Error Driven Development (EDD) and Behavior Driven Development spearheaded the remainder of the process.

## User Stories
As a user:

* I want to make a profile for this website
* I want to summarize my longterm goals on my profile
* I want to show my played heroes on my profile
* I want to show my gameplay footage on my profile
* I want to find mentor who can help me improve in my specific areas
* I want to look for mentors/mentees via the following: general listing and played heroes

## Website Wireframes
<p align="center">
<img src="https://raw.git.generalassemb.ly/acupoftee/full-stack-project-practice/response/assets/apa_homepage_wireframe.jpg">
<img src="https://raw.git.generalassemb.ly/acupoftee/full-stack-project-practice/response/assets/apa_users_wireframe.jpg">
</p>

## Routes
- **User**
  - The main entity for this program. Each user will have a username, a display name, a summary of their goals and what they're looking for in a mentor or mentee, preferred heroes, preferred hero class, links to sample videos for mentors to preview.
- **Hero**
  - This defines an Overwatch character (aka hero). This will enable users to search for mentors and mentees based on their preferred heroes. Hero will have a one to many relationship with User since a user will have up to 3 preferred heroes. Hero will also have
- **Video**
  - This will have a one to many relationship with User. A user will have the option to display up to 3 gameplay videos in their profile for mentors to preview.

## Challenges
This idea was originally for a personal project. Without the time constraint, early planning stages were capricious and complex, and lead to roadblocks early on due to accomodating many features in four days. The time constraints involved helped descope the project tremendously.

The biggest challenge was working with join tables. This was the first project I've worked on that used them, and I had assumed that I constructed them incorrectly. This set me back a few days since the join table served as a major component for one of Overwatcher's main features. Thankfully with the help of GA's issue queue and classmates, I was able to resolve the issue and integrate this to the frontend nicely.

## Technologies Used
* Ruby
* Ruby on Rails
* PostgreSQL
* Rake
* Heroku CLI
* Curl scripts for API testing
