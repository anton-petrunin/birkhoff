input macros
input hatching
input mparrows
input fiziko

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../lectures}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;

%outputformat := "svg";


beginfig(1)
save u,k;
u:=1cm;
k:=2/5;

z.c=origin;
z.a=(2,.5)*u;
z.b=z.a rotated 90;

z.z=bisector((z.a+z.b)/2,z.b,z.c);

z.aa=k[z.z,z.a];
z.bb=k[z.z,z.b];
z.cc=k[z.z,z.c];

draw woodenThing(z.c--z.cc--z.bb--z.b--cycle, angle(z.b-z.c));
draw woodenThing(z.c--z.cc--z.aa--z.a--cycle, angle(z.a-z.c));
draw woodenThing(z.b--z.bb--z.aa--z.a--cycle, angle(z.a-z.b));

endfig;



end




