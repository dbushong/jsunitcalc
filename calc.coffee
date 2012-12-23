$(document).ready ->
  $('#expr').keydown ->
    setTimeout((=>
      try
        res = JSUnitCalcParser.parse(@value)
        $('#result').text(res + ' ' + JSON.stringify(res))
        $('#error').text('')
      catch e
        $('#error').text(e.toString())
        $('#result').text('')
    ), 0)

