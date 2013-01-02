$(document).ready ->
  $('#expr').focus().keydown ->
    setTimeout((=>
      unless /\S/.test(@value)
        $('#result,#debug,#error').text('')
        return

      try
        res = JSUnitCalcParser.parse(@value)
        $('#result').text(res)
        $('#debug').text(JSON.stringify(res))
        $('#error').text('')
      catch e
        $('#error').text(e.toString())
        $('#result,#debug').text('')
    ), 0)

