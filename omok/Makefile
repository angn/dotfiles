.PHONY: clean
omok.js: src.js
	java -jar ~/elt/bin/compiler.jar --compilation_level ADVANCED_OPTIMIZATIONS < $^ > $@
clean: omok.js
	rm $^
