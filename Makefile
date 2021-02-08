all: html ebook

html:
	R -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
ebook:
	R -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"
