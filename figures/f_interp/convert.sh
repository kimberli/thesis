colors=("#3E9361" "#478D68" "#51876F" "#5B8176" "#647B7D" "#6E7584" "#786F8B" "#816992" "#8B6399" "#955DA0")
i=0
for f in *.svg; do
    echo ${colors[$((10-i-1))]};
    svgexport $f $(basename $f .svg).png "svg{} path{stroke-width:0.15px; stroke: ${colors[$((10-i-1))]}}"
    i=$((i+1))
done
