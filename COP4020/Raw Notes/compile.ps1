$PDFENGINE = 'pdflatex'
pandoc $args[0] -o ('../Compiled Notes/'+$args[0].Substring(0, $args[0].ToString().Length-3)+'.pdf') --pdf-engine=$PDFENGINE