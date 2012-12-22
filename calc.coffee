class window.JSUnitCalcValue
  constructor: (@num, @unit) ->
  toJSON: -> { @num, @unit }

class window.JSUnitCalc
  add: (left, right) ->
    [ '+', left, right ]
  subtract: (left, right) ->
    [ '-', left, right ]
  multiply: (left, right) ->
    [ '*', left, right ]
  divide: (left, right) ->
    [ '/', left, right ]
  power: (left, right) ->
    [ '^', left, right ]
  convert: (res, unit) ->
    [ res, unit ]
  multiplyUnits: (left, right) ->
    [ '*u', left, right ]
  divideUnits: (left, right) ->
    [ '/u', left, right ]
  powerUnits: (left, right) ->
    [ '^u', left, right ]

$(document).ready ->
  $('#expr').keydown ->
    setTimeout((=>
      try
        res = JSUnitCalcParser.parse(@value)
        $('#result').text(JSON.stringify(res))
        $('#error').text('')
      catch e
        $('#error').text(e.toString())
        $('#result').text('')
    ), 0)

