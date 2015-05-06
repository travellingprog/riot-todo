# Flux-like Riot Todo Application - travellingprog's fork

## Differences in this fork

- Added a `.gitignore` file. Notably, nothing in the *build* folder is committed except for `index.html`.
- `index.html` does not have a `<link>` element to import `index.css`, because the style is added inline by the *style* webpack loader.
- Updated `package.json`, includes modules to load LESS styling and RiotJS modules through Webpack.
- Includes the file `riot-loader-readme.md` (for quick reference).
- `src/index.js` loads the `todo-app.tag` file rather than `tags.js`.
- A *style* folder has been added to place any LESS file required.
- A *tags* folder has been added to place any RiotJS tags.
- `webpack.config.js` has been modified to load RiotJS modules and LESS files


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

6. Open your Web browser at <http://localhost:8888/>.

