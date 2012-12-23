// Generated by CoffeeScript 1.3.3
(function() {

  $(document).ready(function() {
    return $('#expr').keydown(function() {
      var _this = this;
      return setTimeout((function() {
        var res;
        try {
          res = JSUnitCalcParser.parse(_this.value);
          $('#result').text(res + ' ' + JSON.stringify(res));
          return $('#error').text('');
        } catch (e) {
          $('#error').text(e.toString());
          return $('#result').text('');
        }
      }), 0);
    });
  });

}).call(this);
