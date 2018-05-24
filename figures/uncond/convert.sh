i=0
for f in *.svg; do
    svgexport $f $(basename $f .svg).png "svg{} path{stroke-width:0.15px;}"
    i=$((i+1))
done
