#!/bin/bash
#pandoc -s "Snarkhunt to d20.md" "Skills.md" "Supplies.md" "Statuses.md" \
pandoc -s "Snarkhunt TTRPG rules.md" \
-s \
-H Head_SH_rules.tex \
--pdf-engine=pdflatex \
-V documentclass:scrartcl \
--top-level-division=section \
--from=markdown+wikilinks_title_after_pipe \
--from=markdown+lists_without_preceding_blankline \
--number-sections \
-fmarkdown-implicit_figures \
--table-of-contents \
--toc-depth=4 \
-V geometry:"top=0.5in, bottom=0.5in, left=0.5in, right=0.5in" \
-V colorlinks \
-V toccolor=Redcolor \
-V urlcolor=white \
-o Snarkhunt_TTRPG.pdf
#-V fontfamily:librebaskerville \
#-V classoption:17pt \
#-V classoption:twocolumn \