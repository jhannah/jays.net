# JSON -> HTML
#   https://github.com/rbardini/resumed
#   npm install resumed jsonresume-theme-kendall
npx resumed render resume.json --theme=jsonresume-theme-kendall

# MARKDOWN -> PDF, DOCX
#   brew install pandoc basictex
#   sudo ln -s /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/arm64/pdflatex /usr/local/bin
pandoc resume.md -o resume.pdf
pandoc resume.md -o resume.docx

