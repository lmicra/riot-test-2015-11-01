'use strict';

var webpack = require('webpack');
// var path = require('path');

module.exports = {
	resolve: {modulesDirectories: ['node_modules', 'src', 'libs']},
	cache: true,
	entry: {
		app: 'main',
		libs: ['riot'] // 'riot'] // , 'lazyload', 'zepto']
	},
	module: {
		preLoaders: [
			{ test: /\.tag$/, exclude: /node_modules/, loader: 'riotjs-loader', query: {type: 'none'} }
		],
		loaders: [
			{ test: /(\.js|\.tag)$/, exclude: /node_modules/, loader: 'babel-loader' },
			{ test: /\.js$/, include: /src/, exclude: /node_modules/, loader: 'babel-loader', query: {modules: 'common'} }
		]
	},
	output: {filename: 'js/app.js'},
	plugins: [
		new webpack.optimize.CommonsChunkPlugin("libs", "js/libs.js"),
		new webpack.ProvidePlugin({riot: 'riot'})
	]
};
