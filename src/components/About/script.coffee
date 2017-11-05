class Icon
  constructor: (@image, @link) ->

context = require.context './icons'
icon_image = context.keys().map (key) -> context key

icon_link= context.keys().map (key) -> context key

icons = icon_image.map (icon_image, index) ->
  new Icon icon_image, icon_link[index]

icon_groups = icons

module.exports =
  data: ->
    icon_groups: icons

context = require.context './icons', yes
context.keys().forEach (key) ->
  icon = new Icon
  icon.src = context key


module.exports =
  data: ->
    face: require './face.png'
    icon01: require './icons/1.png'
    icon02: require './icons/2.png'
    icon03: require './icons/3.png'
    icon04: require './icons/4.png'

