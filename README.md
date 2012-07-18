# FamilySearch Boilerplate Client

This is a very simple boilerplate application for accessing FamilySearch from a single-page javascript application
connected to a simple server.
It's designed to be used together with [FamilySearch Boilerplate Server](https://github.com/DallanQ/familysearch-boilerplate-server)

This is a work in progress.

## Uses

* [backbone.js](http://backbonejs.org/)
* [chaplin](https://github.com/chaplinjs/chaplin)
* [brunch](http://brunch.io/)
* [coffeescript](http://coffeescript.org)
* [handlebars](http://handlebarsjs.com/)
* [stylus](http://learnboost.github.com/stylus/)
* [jQuery](http://jquery.com/)
* [twitter bootstrap](http://twitter.github.com/bootstrap/)
* [CORS](http://en.wikipedia.org/wiki/Cross-origin_resource_sharing) so you can run client and server on different ports during development
* [mocha](http://visionmedia.github.com/mocha/) and [sinon.js](http://sinonjs.org/)

## Getting started

Start the [server](https://github.com/DallanQ/familysearch-boilerplate-server)

Run the app using `brunch w -s` and visiting http://localhost:3000

Run the tests by starting the app and visiting http://localhost:3000/test
or by running `brunch test`
(if you want to run `brunch test` you must use brunch version 1.4.x, which you can get from github)

Build for production using `PRODUCTION=1 brunch build -m` and copying the result into the server's public directory

## License
The MIT license.

Copyright (c) 2012 Dallan Quass (http://github.com/DallanQ)

Copyright (c) 2012 Paul Miller (http://paulmillr.com/)

Copyright (c) 2012 Moviepilot GmbH, 9elements GmbH et al.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
