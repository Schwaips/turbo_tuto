# Turbo Tutorial

Hey ! This is a turbo tuto.

This app has been made thanks to https://www.hotrails.dev/
If you want to know more about turbo with Rails 7, this tutorial is made for you.

This app has been made with a single line of JS. Turbo takes care of evertyhing else!

* Ruby version
3.1.1

* Rails version
7.0.0

* Run `bin/dev` will execute the Procfile that contains the following :
`web: bin/rails server -p 3000`
`js: yarn build --watch`
`css: yarn build:css --watch`

-First line will run a local server.
-Second & third line are in charge to precompiling CSS & JS before handling them to the asset pipeline. Thanks to the --watch options, CSS & JS are compiled as soon as you save a change within your scss or js files.

* To check the demo, follow the below link :
https://turbo-tuto.herokuapp.com/
