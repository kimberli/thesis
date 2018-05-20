colors=("#D11B1B" "#247BA0" "#3E9361" "#955DA0")
i=0
for f in *.svg; do
    echo ${colors[$((i%4))]};
    svgexport $f $(basename $f .svg).png "svg{} path{stroke-width:0.05px; stroke: ${colors[$((i%4))]}}"
    i=$((i+1))
done
