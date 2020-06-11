(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("babel" "polish")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "./analiza/analiza_1_tab_1"
    "./analiza/analiza_1_mean_price"
    "./analiza/analiza_1_mean_mileage"
    "./analiza/analiza_3_formula_1"
    "./analiza/analiza_3_formula_2"
    "article"
    "art10"
    "amsmath"
    "amssymb"
    "graphics"
    "setspace"
    "inputenc"
    "fontenc"
    "times"
    "babel"
    "graphicx"
    "xcolor"
    "dcolumn"
    "listings")
   (TeX-add-symbols
    '("unicode" 1)
    '("mathsym" 1)))
 :latex)

