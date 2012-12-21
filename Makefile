ALL=grammar.js calc.js

default: $(ALL)

grammar.js: grammar.peg
	pegjs -e Calc $< $@

calc.js: calc.coffee
	coffee -cp $< > $@

clean:
	rm -f $(ALL)
