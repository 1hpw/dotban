#/bin/sh

# fields
magic=3;#https://youtu.be/aU4pyiB-kq0
edit='vim';
compile='dot';
render='inkscape';
collect='rm';#garbage

# methods
printf \\033c;
"$edit" "$1".dot;
"$compile" -Gfontname=Monospace -Efontname=Monospace -Nfontname=Monospace -Tsvg "$1".dot -o "$1".svg && "$render" "$1".svg&
sleep "$magic" && "$collect" *.svg;

# escape
exit "$magic";
