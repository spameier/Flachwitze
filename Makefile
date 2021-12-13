.EXPORT_ALL_VARIABLES:

LANG = C
LC_ALL = C
PERCENT := %

sort:
	head -n +7 README.md > head.txt
	tail -n +8 README.md | LC_ALL=C LANG=C sort > tail.txt
	cat head.txt tail.txt > README.md
	rm head.txt tail.txt

fortune:
	mkdir -p build/fortune
	tail -n +8 README.md | sed -e 's/^- //' -e 's/$$/\n\$(PERCENT)/' > build/fortune/flachwitze
	strfile build/fortune/flachwitze



