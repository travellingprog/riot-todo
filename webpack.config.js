var webpack = require('webpack');

module.exports = {
  cache: true,
  entry: './src/index.js',
  output: {
    path: __dirname + '/build/',
    filename: 'bundle.js'
  },
  devtool: 'source-map',
  plugins: [
    new webpack.ProvidePlugin({
      riot: 'riot'
    })
  ],
  module: {
    preLoaders: [
      {
        test: /\.tag$/,
        exclude: /node_modules/,
        loader: 'riotjs-loader',
        query: { type: 'none' }
      }
    ],
    loaders: [
      {
        test: /\.js|\.tag$/,
        include: /src/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        query: { modules: 'common' }
      },
      {
        test: /\.less$/,
        include: /src/,
        exclude: /node_modules/,
        loader: 'style!css!less'
      },
      {
        test: /\.json$/,
        loader: 'json'
      }
    ]
  }
};
