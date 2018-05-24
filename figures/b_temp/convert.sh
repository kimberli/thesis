colors=("#D11B1B" "#BD2529" "#AA3038" "#973B47" "#844556" "#705064" "#5D5B73" "#4A6582" "#377091" "#247BA0")
i=0
for f in *.svg; do
    echo ${colors[$((10-i-1))]};
    svgexport $f $(basename $f .svg).png "svg{} path{stroke-width:0.15px; stroke: ${colors[$((10-i-1))]}}"
    i=$((i+1))
done
