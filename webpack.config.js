const path = require('path');
const webpack = require("webpack");

// var plugins = []; // if using any plugins for both dev and production
// var devPlugins = []; // if using any plugins for development

// const prodPlugins = [
//     new webpack.DefinePlugin({
//         'process.env': {
//             'NODE_ENV': JSON.stringify('production')
//         }
//     }),
//     new webpack.optimize.UglifyJsPlugin({
//         compress: {
//             warnings: true
//         }
//     })
// ];

// plugins = plugins.concat(
//     process.env.NODE_ENV === 'production' ? prodPlugins : devPlugins
// );


module.exports = {
    context: __dirname,
    entry: './react/root.jsx',
    output: {
        path: path.resolve(__dirname, 'app', 'assets', 'javascripts'),
        filename: 'bundle.js'
    },
    resolve: {
        extensions: ['.js', '.jsx', '*']
    },
    watchOptions: {
        aggregateTimeout: 100
    },
    module: {
        loaders: [{
            test: /\.jsx?$/,
            exclude: /(node_modules|bower_components)/,
            loader: 'babel-loader',
            query: {
                presets: ['react', 'es2015']
            }
        },
        {
            test: /\.(jpe?g|png|gif|svg)$/i,
            loader: 'url-loader'
        }
        ]
    },
    devtool: 'source-map'
};
