Four Athens Membership Site
================

This application uses Rails 5.0+ and Ruby 2.3+ as of May 15, 2017. The purpose is to be the foundation of a new site for [fourathens.com](fourathens.com)

Getting Started
---------------

To get started, make sure you have [Docker](https://docs.docker.com/docker-for-windows/) installed. The Docker Toolbox will also install Docker Compose.

For initial install, build the Docker image for the Rails application: `docker-compose build`

Once the image is built, set up the database: `docker-compose run web rails db:setup`

You can now run the application: `docker-compose up`

Development Workflow
--------------------

When starting a new feature or bug fix, check out a new branch from the `develop` branch with your initials prepended to the branch name. Ex: `jb-hubspot`

Perform all of your work on that branch then create a pull request on to the `develop` branch for review by the team.

Once your branch has been merged, you can delete your local feature branch.
