/**
 * Created by jean-marc on 08/06/2018.
 */

const path = require('path');
const babel = require('babel-core');
const BabelPlugin = require('babel-webpack-plugin');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
const HtmlPlugin = require('html-webpack-plugin');
const PwaManifestPlugin = require('webpack-pwa-manifest');
const CopyWebpackPlugin = require('copy-webpack-plugin');

const devMode = process.env.NODE_ENV === 'development';

module.exports = [
  {
    mode: devMode ? 'development' : 'production',
    target: 'web',
    entry: ['babel-polyfill','./src/index.js'],
    output: {
      path: path.resolve('dist'),
      filename: 'bundle.js'
    },
    watch: devMode,
    devServer: {
      contentBase: path.resolve('./dist'),
      port: 8080,
      overlay: true
    },
    devtool: devMode ? 'cheap-eval-source-map' : false,
    module: {
      rules: [
        {
          test: /\.[e]js$/,
          exclude: /(node_modules|bower_components)/,
          use: 'babel-loader'
        },
        {
          test: /\.elm$/,
          use: [
            {
              loader: 'elm-hot-loader'
            },
            {
              loader: 'elm-webpack-loader',
              options: {
                debug: devMode,
                warn: false
              }
            }
          ]
        },
        {
          test: /\.(gif|png|jpe?g|svg|ico)$/i,
          use: [
            'file-loader?name=[name].[ext]&outputPath=/images/',
            {
              loader: 'image-webpack-loader',
              options: {
                bypassOnDebug: true
              }
            }
          ]
        }
      ]
    },
    plugins: [
      new UglifyJsPlugin({sourceMap: devMode}),
      new CopyWebpackPlugin([{
        from: path.resolve(__dirname, 'node_modules/@webcomponents/webcomponentsjs/*.js'),
        to: 'webcomponentsjs/[name].[ext]'
      }, {
        from: path.resolve(__dirname, 'src/static')
      }]),
      new HtmlPlugin({template: 'src/index.html'}),
      new PwaManifestPlugin({
        name: "My FoodScan Application",
        short_name: "FoodScan",
        description: 'Scan a barcode to get some information about your food',
        theme_color: "#2196f3",
        background_color: "#2196f3",
        inject: true,
        fingerprints: true,
        ios: true,
        display: "fullscreen",
        start_url: "/",
        icons: [
          {
            src: path.resolve('src/static/favicon.png'),
            sizes: [96, 128, 192, 256, 384, 512],
            destination: path.join('icons','android')
          },
          {
            src: path.resolve('src/static/favicon.png'),
            sizes: [120, 152, 167, 180, 1024],
            destination: path.join('icons', 'ios'),
            ios: true
          },
          {
            src: path.resolve('src/static/favicon.png'),
            size: 1024,
            destination: path.join('icons', 'ios'),
            ios: 'startup'
          }
        ],
        ios: {
          'apple-mobile-web-app-title': 'FoodScan'
          , 'apple-mobile-web-app-status-bar-style': 'black-translucent'
          , 'apple-mobile-web-app-capable': 'yes'
        }
      })
    ]
  },
  /*{
    mode: devMode ? 'development' : 'production',
    target: 'webworker',
    entry: ['./src/app/serviceworker.mjs'],
    output: {
      path: path.resolve('dist'),
      filename: 'sw.js'
    },
    watch: true,
    devtool: devMode ? 'source-map' : false,
    module: {
      rules: [
        {
          test: /serviceworker\.mjs/,
          use: ['babel-loader']
        }
      ]
    }
  }*/
];
