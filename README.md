# Flux-like Riot Todo Application - travellingprog's fork

## Differences in this fork

### Tag Files

In the original repo, the tags are created using `riot.tag()` inside of a single `tags.js` file. However, creating individual `.tag` files is the more conventional way of using RiotJS, and according to the current API documentation on `riot.tag()`, "This method is on the edge of being deprecated".

Therefore, this fork as all tags defined inside of their individual `.tag` file. Each tag file starts with `import` statements for importing any other tags that it requires, and for importing its style sheet (if any).

As a personal preference, I've wrapped all tag code inside of `<script>` elements, mainly because most IDEs can be easily configured to apply HTML syntax highlighting to all `.tag` files.


### Use of LESS

In the original repo, the styling was simply placed inside of an `index.css` file within the *build/* folder, and `index.html` imported this file with a `<link>` element. However, you would only use this approach for the simplest of applications.

In this fork, styling is done within `.less` files, one per tag. Webpack will pre-process the files and add their CSS rules to `index.html` (using `<style>` elements).

One nice feature of Webpack demonstrated in this fork is the ability for a `.tag` file to import its corresponding `.less` file.

Note that is possible to configure Webpack to output a CSS file, by using [extract-text-webpack-plugin](https://github.com/webpack/extract-text-webpack-plugin), as opposed to using [style-loader](https://github.com/webpack/style-loader).


### Hot Module Replacement

When you use the `npm start` command in this fork, it will launch the application with Hot Module Replacement turned on. This feature is very similar to LiveReload. It pushes any updates to your modules straight to the browser, without requiring a page refresh.

Note that this webpack-dev-server feature is still experimental, and therefore can be buggy.


### Other Differences

- Added a `.gitignore` file. Notably, nothing in the *build* folder is committed except for `index.html`.
- Updated `package.json`, includes modules to load LESS styling and RiotJS modules through Webpack.
- `src/index.js` loads the `todo-app.tag` file rather than `tags.js`.
- `webpack.config.js` has been modified to load RiotJS modules, LESS files and provide Hot Module Replacement.


# Description (from base repo)

This minimalist didactic application is written using the React-like [Riot](https://muut.com/riotjs/) UI library:

- Written in ES6.
- Compiled using [6to5](http://6to5.org/).
- Bundled with [Webpack](http://webpack.github.io/).
- Uses browser LocalStorage for persistence.

The app is a port of my [Flux Backbone Todos Example](https://github.com/srackham/flux-backbone-todo) and I wrote it to learn and evaluate Riot.

[Live Demo](http://srackham.github.io/riot-todo/)


## Differences between this application and the Flux Backbone Todos Example
1. Uses [Riot](https://muut.com/riotjs/) UI library instead of [React](http://facebook.github.io/react/).
2. Uses [RiotControl](https://github.com/jimsparkman/RiotControl) (slightly modified) instead of the [Flux](https://github.com/facebook/flux) dispatcher.
3. Writes to browser LocalStorage directly instead of using [Backbone.js](http://backbonejs.org/).

Apart from that the application functionality and architecture is the same.


## Building and Running
The app is developed and built in a node/npm environment. To install
and run:

1. Make sure you have node and npm installed.

2. Clone the Github repo:

        git clone https://github.com/srackham/riot-todo.git

3. Install npm dependencies:

        cd riot-todo
        npm install

4. Build the app `dist/bundle.js` bundle:

        webpack

5. Start the app in a server:

        npm start

6. Open your Web browser at <http://localhost:8080/>.

