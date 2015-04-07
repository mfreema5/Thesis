# Pandoc notes

## Short version


* To generate a PDF file from a markdown file:
  * `pandoc --latex-engine=xelatex -V geometry:margin=0.75in -s -o "filename.pdf" "filename.md"`
* To generate LaTeX source from a markdown file:
  * `pandoc --latex-engine=xelatex -V geometry:margin=0.75in -s -o "filename.tex" "filename.md"`
* Sometimes it works better to go through an intermediate stage of HTML
  * `pandoc -s -f markdown_github -t html "filename.md" | pandoc --latex-engine=xelatex -V geometry:margin=0.75in -s -f html -o "filename.pdf"`
* To generate PDFs from all the markdown files in a directory:
  * `for FOO in *.md ; do pandoc --latex-engine=xelatex -V geometry:margin=0.75in -s -o "${FOO%%.md}.pdf" "$FOO" ; done`

----

## Long version

See:  
* [johnmacfarlane.net/pandoc/README](http://johnmacfarlane.net/pandoc/README.html)
* [johnmacfarlane.net/pandoc/demo/example9/index](http://johnmacfarlane.net/pandoc/demo/example9/index.html)


Output goes to stdout by default…. For output to a file, use the -o option:

    `pandoc -o output.html input.txt`

By default, pandoc produces a document fragment, not a standalone document with a proper header and footer. To produce a standalone document, use the -s or --standalone flag:

    pandoc -s -o output.html input.txt

(To make a PDF of a webpage) …an absolute URI may be given. In this case pandoc will fetch the content using HTTP:

    pandoc -f html -t markdown http://www.fsf.org


The format of the input and output can be specified explicitly using command-line options.  
* The input format can be specified using the `-r/--read` or `-f/--from options`
* The output format using the `-w/--write` or `-t/--to` options

Thus, to convert hello.txt from markdown to LaTeX, you could type:

    pandoc -f markdown -t latex hello.txt

To convert hello.html from html to markdown:

    pandoc -f html -t markdown hello.html

(Note that the `rst`, `textile`, `latex`, and `html` readers are not complete; there are some constructs that they do not parse.)

If the input or output format is not specified explicitly, pandoc will attempt to guess it from the extensions of the input and output filenames. Thus, for example,

    pandoc -o hello.tex hello.md

will convert hello.md from markdown to LaTeX source. 

If no output file is specified (so that output goes to stdout), or if the output file’s extension is unknown, the output format will default to HTML.

### PDF

To produce a PDF, simply specify an output file with a `.pdf` extension. Pandoc will create a latex file and use `pdflatex` (or another engine, see `--latex-engine`) to convert it to PDF:

    pandoc test.txt -o test.pdf

Production of a PDF requires that a LaTeX engine be installed (see `--latex-engine`, below), and assumes that the following LaTeX packages are available:  
* amssymb
* amsmath
* ifxetex
* ifluatex
* listings (if the `--listings` option is used)
* fancyvrb
* longtable
* booktabs
* url
* graphicx
* hyperref
* ulem
* babel (if the lang variable is set)
* fontspec (if `xelatex` or `lualatex` is used as the LaTeX engine)
* xltxtra and xunicode (if `xelatex` is used).

#### LaTex engine

    --latex-engine=pdflatex|lualatex|xelatex

Use the specified LaTeX engine when producing PDF output. The default is pdflatex. If the engine is not in your PATH, the full path of the engine may be specified here.

## markdown

See: [johnmacfarlane.net/pandoc/demo/example9/pandocs-markdown](http://johnmacfarlane.net/pandoc/demo/example9/pandocs-markdown.html)

Superscripts may be written by surrounding the superscripted text by `^` characters; subscripts may be written by surrounding the subscripted text by `~` characters. For example:  
    `H~2~O is a liquid.  2^10^ is 1024`.

If the superscripted or subscripted text contains spaces, these spaces must be escaped with backslashes; if you want the letter P with “a cat” in subscripts, use `P~a\ cat~`, not `P~a cat~`.

## General options

See: [johnmacfarlane.net/pandoc/demo/example9/options](http://johnmacfarlane.net/pandoc/demo/example9/options.html)

`--data-dir=DIRECTORY`  
Specify the user data directory to search for pandoc data files. If this option is not specified, the default user data directory will be used: `$HOME/.pandoc`

`-V KEY[=VAL]`  
`--variable=KEY[:VAL]`  
Set the template variable KEY to the value VAL when rendering the document in standalone mode. This is generally only useful when the `--template` option is used to specify a custom template, since pandoc automatically sets the variables used in the default templates. If no VAL is specified, the key will be given the value `true`.

### Might be useful down the road

`--toc, --table-of-contents`  
Include an automatically generated table of contents (or, in the case of latex, context, and rst, an instruction to create one) in the output document. This option has no effect on….

`--toc-depth=NUMBER`  
Specify the number of section levels to include in the table of contents. The default is 3 (which means that level 1, 2, and 3 headers will be listed in the contents).

## Templates

See: [johnmacfarlane.net/pandoc/demo/example9/templates](http://johnmacfarlane.net/pandoc/demo/example9/templates.html)

When the `-s/--standalone` option is used, pandoc uses a template to add header and footer material that is needed for a self-standing document. To see the default template that is used, just type: `pandoc -D FORMAT`

```
$ pandoc -D html5

<!DOCTYPE html>
…
```

…where FORMAT is the name of the output format. A custom template can be specified using the `--template` option. 

You can also override the system default templates for a given output format FORMAT by putting a file `templates/default.FORMAT` in the default user data directory,  `$HOME/.pandoc`, or in the directory specified with `--data-dir` (see above). 

Exceptions: For odt output, customize the `default.opendocument` template (as opposed to `default.odt`). For pdf output, customize the `default.latex` template (as opposed to `default.pdf`).

### Options

¿Set with `-V KEY[=VAL]`?  

`fontsize`  
    font size (10pt, 11pt, 12pt) for LaTeX documents

`documentclass`  
    document class for LaTeX documents

`classoption`  
    option for LaTeX documentclass, e.g. `oneside`; may be repeated for multiple options

`geometry`  
    options for LaTeX geometry class, e.g. `margin=1in`; may be repeated for multiple options

Saved again by [stackoverflow](http://stackoverflow.com/questions/13515893/set-margin-size-when-converting-from-markdown-to-pdf-with-pandoc):  
* `pandoc -V geometry:margin=1in -o output.pdf input.md`
* `pandoc -V geometry:paperwidth=4in -V geometry:paperheight=6in -V geometry:margin=.5in -o output.pdf input.md`

## Trial & error

No `man` page; `pandoc --help` gives a list of options, though.

Works!  
    `pandoc -s -o hypothetical-example.pdf hypothetical-example.md`  
The formatting needs changed, though.

### PDF formats?

`pandoc -V documentclass=memoir`
`pandoc -V documentclass=book`

```
$ pandoc -s -V documentclass=letter -o hypothetical-example2.pdf hypothetical-example.md
! Undefined control sequence.
l.52 \section
pandoc: Error producing PDF from TeX source

$ pandoc -s -V documentclass=minimal -o hypothetical-example2.pdf hypothetical-example.md
! Undefined control sequence.
l.52 \section
pandoc: Error producing PDF from TeX source

$ pandoc -V documentclass=minimal -o hypothetical-example2.pdf hypothetical-example.md
! Undefined control sequence.
l.52 \section
pandoc: Error producing PDF from TeX source
```

(I fucking hate `L^A^T~E~X`.)

It works!!!  
    `pandoc -V geometry:margin=1in -s -o hypothetical-example.pdf hypothetical-example.md`

#### Script it

```
for FOO in *.md ; do pandoc --latex-engine=xelatex -V geometry:margin=0.75in -s -o "${FOO%%.md}.pdf" "$FOO" ; done
```
