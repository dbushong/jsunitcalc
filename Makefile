ALL=grammar.js calc.js

default: $(ALL)

grammar.js: grammar.peg
	pegjs -e JSUnitCalcParser $< $@.tmp && mv -f $@.tmp $@ || (rm -f $@.tmp && false)

calc.js: calc.coffee
	coffee -cp $< > $@.tmp && mv -f $@.tmp $@ || (rm -f $@.tmp && false)

clean:
	rm -f $(ALL)
