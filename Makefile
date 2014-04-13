
ql_custom_target_build:
	node make singlefile
	rm build/*.js build/*.gz
	mv build/singlefile/build/*.js build/
	rm -rf build/singlefile
	uglifyjs build/*.js > build/pdf.combined.ugly.js
	gzip -c build/pdf.combined.js > build/pdf.combined.js.gz

.PHONY: ql_custom_target_build
