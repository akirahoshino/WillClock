// const { environment } = require('@rails/webpacker')
// var webpack = require('webpack');

// environment.plugins.append(
//   'Provide',
//   new webpack.ProvidePlugin({
//     $: 'jquery',
//   })
// )

// module.exports = environment


const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default'],
    noUiSlider: 'nouislider'
  })
)

module.exports = environment