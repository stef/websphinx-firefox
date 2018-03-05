src = websphinx/*.js websphinx/*.json websphinx/*.html websphinx/*.css websphinx/*.png websphinx/_locales/*/*.json

all: websphinx.xpi

websphinx.xpi: $(EXT_FILES)
	rm -f websphinx.xpi
	(cd websphinx; zip -r ../websphinx.xpi *.js *.json *.html *.css *.png _locales)
