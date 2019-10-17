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


beginfig(2)
save u,m,n;
u:=1cm;
m:=6;
n:=4;

for i = 0 upto m : draw (i,-.5)*u--(i,n+.5)*u penhair dashed evenly; endfor
for j = 0 upto n : draw (-.5,j)*u--(m+.5,j)*u penhair dashed evenly; endfor

draw (-.5,0)*u--(m+.5,0)*u penbold;
draw (-.5,1)*u--(3,1)*u--(4,2)*u--(4,3)*u--(m+.5,3)*u penbold;
draw (-.5,2)*u--(2,2)*u--(2,n+.5)*u penbold;
endfig;

beginfig(4)
save u;
u:=.7cm;


z.O=origin;
z.A=(2,0)*u;
z.B=(1,2)*u;

%arrow-angle???

drawarrow cutcircle(circle(z.O,20), z.A, z.B);

z.alpha=z.O+(unitvector(z.A-z.O)*25 rotated (.5*(angle(z.B-z.O)-angle(z.A-z.O))));


draw ddline(z.O,z.A)(0,.2);
draw ddline(z.O,z.B)(0,.2);

dOt z.O,z.A,z.B;

label.bot (btex $A$ etex, z.A);
label.ulft (btex $B$ etex, z.B);
label.llft (btex $O$ etex, z.O);
label (btex $\alpha$ etex, z.alpha);

endfig;

beginfig(6)
save u,m,n;
u:=1cm;
m:=2;
n:=1;

for i = 0 upto m : draw (i,-.5)*u--(i,n+.5)*u penhair dashed evenly; endfor
for j = 0 upto n : draw (-.5,j)*u--(m+.5,j)*u penhair dashed evenly; endfor

z.A=(1,1)*u;
z.B=(2,0)*u;
z.C=(0,0)*u;
z.M=(1,0)*u;

draw z.M--z.A+z.B-z.M penbold withcolor .5;
dOt z.A,z.B,z.C;
Dot z.M;

whitelabel.top(btex $A$ etex, z.A);
label.lrt(btex $B$ etex, z.B);
label.llft(btex $C$ etex, z.C);

endfig;

beginfig(8)
save u;
u:=1.4cm;

z.O=origin;
z.A=(1,0)*u;
z.B=(-1,0)*u;

draw ddline(z.A,z.B)(.2,.2);

drawarrow cutcircle(circle(z.O,10), z.A, z.B);

dOt z.O,z.A,z.B;
rimmark(z.B--z.O,z.O--z.A);


label.bot (btex $A$ etex, z.A);
label.bot (btex $B$ etex, z.B);
label.bot (btex $O$ etex, z.O);

endfig;

beginfig(10)
save u;
u:=1.4cm;

z.O=origin;
z.A=(1,0)*u;
z.B=(-1,0)*u;
z.AA=z.A rotated -20;

draw ddline(z.A,z.B)(.2,.2);
draw z.O--z.AA;

drawarrow cutcircle(circle(z.O,10), z.A, z.B);
drawarrow cutcircle(circle(z.O,12), z.B, z.AA);

z.alpha=z.O+(unitvector(z.A-z.O)*15 rotated (.5*(angle(z.B-z.O)-angle(z.A-z.O))));
z.aalpha=z.O+(unitvector(z.AA-z.O)*17 rotated (180+.5*(angle(z.B-z.O)-angle(z.AA-z.O))));

dOt z.O,z.A,z.AA,z.B;
rimmark(z.B--z.O,z.O--z.A,z.O--z.AA);


label.top (btex $A$ etex, z.A);
label.bot (btex $A'$ etex, z.AA);
label.bot (btex $B$ etex, z.B);
label.bot (btex $O$ etex, z.O);
label (btex $\alpha$ etex, z.alpha);
label (btex $\alpha$ etex, z.aalpha);
endfig;

beginfig(12)
save u;
u:=.6cm;

z.O=origin;
z.A=(-1.5,-1)*u;
z.B=(-1,1)*u;
z.AA=-.7*z.A;
z.BB=-1.1*z.B;

draw ddline(z.A,z.AA)(.2,.2);
draw ddline(z.B,z.BB)(.2,.2);

dOt z.A,z.AA,z.B,z.BB,z.O;

drawarrow cutcircle(circle(z.O,10), z.B, z.A);
drawarrow cutcircle(circle(z.O,10), z.BB, z.AA);

label.top (btex $B$ etex, z.A);
label.lrt (btex $B'$ etex, z.AA);
label.llft (btex $A$ etex, z.B);
label.urt (btex $A'$ etex, z.BB);
label.bot (btex $O$ etex, z.O+(0,-1));

endfig;

beginfig(14)
save u;
u:=.8cm;

z.A=(.5,-1)*u;
z.a=(x.A,0);
z.fa=(0,y.A);
z.B=(3,1)*u;
z.b=(x.B,0);
z.fb=(0,y.B);
z.t0=(1,0)*u;


drawarrow (-.5,0)*u--(3.5,0)*u;
drawarrow (0,-1.5)*u--(0,1.5)*u;
draw z.A{1,.4}..z.t0..{1,-.5}z.B penbold;
draw z.a--z.A--z.fa penhair dashed evenly;
draw z.b--z.B--z.fb penhair dashed evenly;

dOt z.A,z.a,z.fa,z.B,z.b,z.fb,z.t0;

label.top (btex $a$ etex, z.a);
label.bot (btex $b$ etex, z.b);
label.lrt (btex $t_0$ etex, z.t0);
label.lft (btex $f(a)$ etex, z.fa);
label.lft (btex $f(b)$ etex, z.fb);
endfig;

beginfig(16)
save u;
u:=1cm;

z.Q=(0,0)*u;
z.QQ=(1.1,0)*u;
z.P=(2.1,0)*u;
z.X=(.8,2)*u;

draw ddline(z.Q,z.P)(.2,.2);
draw z.Q--z.X--z.QQ;

dOt z.Q,z.QQ,z.P,z.X;

drawarrow cutcircle(circle(z.Q,10), z.P, z.X);
drawarrow cutcircle(circle(z.QQ,9), z.P, z.X);

label.bot (btex $Q$ etex, z.Q);
label.bot (btex $Q'$ etex, z.QQ);
label.bot (btex $P$ etex, z.P);
label.top (btex $X$ etex, z.X);
endfig;

beginfig(18)
save u;
u:=1cm;

z.B=(0,0)*u;
z.A=(1.1,0)*u;
z.Z=(2.1,0)*u;
z.C=(.8,1.4)*u;

draw ddline(z.B,z.Z)(.2,.2);
draw z.B--z.C--z.A;

dOt z.B,z.A,z.Z,z.C;

drawarrow cutcircle(circle(z.B,10), z.Z, z.C);
drawarrow cutcircle(circle(z.A,9), z.Z, z.C);
drawarrow cutcircle(circle(z.A,10), z.C, z.B);

label.bot (btex $B$ etex, z.B);
label.bot (btex $A$ etex, z.A);
label.bot (btex $Z$ etex, z.Z);
label.top (btex $C$ etex, z.C);
endfig;


beginfig(20)
save u;
u:=.8cm;

z.Q=(0,0)*u;
z.Y=(1.7,1)*u;
z.P=(2.1,0)*u;
z.X=(.8,2)*u;

draw ddline(z.Q,z.P)(.2,.2);
draw z.Q--z.X--z.Y--cycle;

dOt z.Q,z.Y,z.P,z.X;

drawarrow cutcircle(circle(z.Q,10), z.P, z.X);
drawarrow cutcircle(circle(z.Q,15), z.P, z.Y);

label.bot (btex $Q$ etex, z.Q);
label.rt (btex $Y$ etex, z.Y);
label.bot (btex $P$ etex, z.P);
label.top (btex $X$ etex, z.X);
endfig;

beginfig(22)
save u;
u:=1cm;

z.Q=(0,0)*u;
z.Y=(1,-1)*u;
z.P=(-1,0)*u;
z.X=(.8,1)*u;
z.Z=whatever[z.P,z.Q]=whatever[z.X,z.Y];

draw ddline(z.Z,z.P)(.2,.2);
draw z.Q--z.X--z.Y--cycle;

dOt z.Q,z.Y,z.P,z.X,z.Z;

drawarrow cutcircle(circle(z.Q,10), z.Z, z.X);
drawarrow reverse(cutcircle(circle(z.Q,11), z.Y,z.Z));

label.llft (btex $Q$ etex, z.Q);
label.bot (btex $Y$ etex, z.Y);
label.bot (btex $P$ etex, z.P);
label.top (btex $X$ etex, z.X);
label.urt (btex $Z$ etex, z.Z);
endfig;

beginfig(24)
save u;
u:=.7cm;

z.O=origin;
z.A=(1.4,-1)*u;
z.AA=-.4*z.A;
z.B=(-.5,-.6)*u;
z.BB=-3*z.B;

draw ddline(z.A,z.AA)(.2,.2);
draw ddline(z.B,z.BB)(.2,.2);
draw ddline(z.A,z.B)(.2,.2);
draw z.AA--z.BB;

dOt z.A,z.AA,z.B,z.BB,z.O;

label.bot (btex $A$ etex, z.A);
label.llft (btex $A'$ etex, z.AA);
label.bot (btex $B$ etex, z.B);
label.lrt (btex $B'$ etex, z.BB);
label.rt (btex $O$ etex, z.O+(.5,.5));
endfig;

beginfig(26)
save u;
u:=1cm;

z.A=(0,0)*u;
z.B=(.5,2)*u;
z.C=(2,.3)*u;

z.X=.4[z.A,z.B];
z.Y=.4[z.B,z.C];

draw z.A--z.B--z.C--cycle;
draw ddline(z.X,z.Y)(.4,.4);

dOt z.A,z.B,z.C,z.X,z.Y;

label.llft (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);
label.top (btex $\ell$ etex, 1.3[z.X,z.Y]);
endfig;


beginfig(28)
save u;
u:=.7cm;

z.Q=(0,0)*u;
z.Y=(1.2,.5)*u;
z.P=(2.1,0)*u;
z.X=(1,1.7)*u;

draw ddline(z.Q,z.P)(.2,.2);
draw z.Q--z.X--z.P;
draw z.Q--z.Y--z.P;

dOt z.Q,z.Y,z.P,z.X;

drawarrow cutcircle(circle(z.X,10),  z.Q,z.P);
drawarrow cutcircle(circle(z.Y,6),  z.Q,z.P);

label.bot (btex $P$ etex, z.Q);
label.top (btex $Y$ etex, z.Y);
label.bot (btex $Q$ etex, z.P);
label.top (btex $X$ etex, z.X);
endfig;

beginfig(30)
save u;
u:=.9cm;

z.A=(0,0)*u;
z.B=(2,0)*u;
z.C=(.8,1.4)*u;

z.BB=.6[z.A,z.C];
z.AA=.4[z.B,z.C];
z.M=whatever[z.A,z.AA]=whatever[z.B,z.BB];

draw z.A--z.B--z.C--cycle;
draw z.A--z.AA;
draw z.B--z.BB;

dOt z.A,z.B,z.AA,z.BB,z.C,z.M;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.urt (btex $A'$ etex, z.AA);
label.ulft (btex $B'$ etex, z.BB);
label.top (btex $C$ etex, z.C);
endfig;

beginfig(32)
save u;
u:=1cm;

z.B=origin;
z.A=(-1,-2.5)*u;
z.C=(-x.A,y.A);

labelarcsprof(z.A, z.B, z.C, 15, 17, btex $\beta$ etex);

draw z.A--z.B--z.C--cycle;

dOt z.A,z.B,z.C;

label.llft (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);

label.rt (btex $r$ etex, .5[z.B,z.C]);
label.lft (btex $r$ etex, .5[z.B,z.A]);
label.bot (btex $s(\beta,r)$ etex, .5[z.A,z.C]);

endfig;

beginfig(34)
save u;
u:=1cm;

z.B=origin;
z.A=(2,0)*u;
z.D=(2.2,.5)*u;
z.C=z.A rotated (2*angle(z.D));
z.Z=1.3*z.D;
z.X=3.4[z.A,z.D];
z.Y=2.6[z.A,z.D];

arcs(z.A, z.B, z.D, 20);
arcs(z.C, z.B, z.D, 19);

draw ddline(z.B,z.A)(.2,.4);
draw ddline(z.B,z.Z)(.1,.1);
draw z.D--z.C;
draw z.B--z.C;
draw ddline(z.B,z.C)(-1,.6) dashed evenly;
draw ddline(z.A,z.X)(0,.1);

rimmark(z.D--z.C,z.D--z.A);

dOt z.A,z.B,z.C,z.D,z.X,z.Y,z.Z;

label.bot (btex $A$ etex, z.A);
label.bot (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);
label.lrt (btex $D$ etex, z.D);
label.ulft (btex $X$ etex, z.X);
label.ulft (btex $Y$ etex, z.Y);
label.top (btex $Z$ etex, z.Z);
label.top (btex $r$ etex, .5[z.B,z.C]);
label.bot (btex $r$ etex, .5[z.B,z.A]);

endfig;

beginfig(36)
save u;
u:=1cm;

z.A=origin;
z.B=(.8,2)*u;
z.C=(1.3,0)*u;
z.CC=1.3*z.C;

draw ddline(z.A,z.CC)(0,0.1);
draw z.A--z.B--z.C;
draw z.B--z.CC dashed evenly;

dOt z.A, z.B, z.C, z.CC;

label.bot (btex $A'$ etex, z.A);
label.top (btex $B'$ etex, z.B);
label.bot (btex $C'$ etex, z.C);
label.lrt (btex $C''$ etex, z.CC);
endfig;

beginfig(38)
save u;
u:=.8cm;

z.A=(-1,0)*u;
z.B=-z.A;
z.C=z.B zscaled (0,2.5);

drawarrow cutcircle(circle(z.A,10),  z.B,z.C);
drawarrow reverse cutcircle(circle(z.B,10),  z.C,z.A);

draw z.A--z.B--z.C--cycle;

dOt z.A, z.B, z.C;

label.llft (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);

endfig;

beginfig(40)
save u;
u:=1cm;

z.A=origin;
z.B=(2,0)*u;
z.C=(1.4,1.2)*u;
z.CC=z.C reflectedabout (z.A,z.B);

arcs(z.A,z.C,z.CC,10);
arcs(z.A,z.CC,z.C,10);
arcs2(z.B,z.C,z.CC,10);
arcs2(z.B,z.CC,z.C,10);

draw z.A--z.C--z.B--z.CC--cycle;
draw z.A--z.B;
draw z.C--z.CC;

rimmark2(z.C--z.B,z.CC--z.B);
rimmark(z.C--z.A,z.CC--z.A);

dOt z.A,z.B,z.C,z.CC;

label.lft (btex $A'$ etex, z.A);
label.rt (btex $B'$ etex, z.B);
label.top (btex $C'$ etex, z.C);
label.bot (btex $C''$ etex, z.CC);
endfig;

beginfig(42)
save u;
u:=.8cm;

z.A=(-1,0)*u;
z.B=-z.A;
z.C=z.B zscaled (0,2.5);

z.AA=.6[z.C,z.B];
z.BB=.6[z.C,z.A];

draw z.A--z.B--z.C--cycle;
draw z.A--z.AA;
draw z.B--z.BB;

rimmark2(z.C--z.BB,z.C--z.AA);
rimmark(z.BB--z.A,z.AA--z.B);

dOt z.A, z.B,z.AA, z.BB, z.C;

label.llft (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);
label.rt (btex $A'$ etex, z.AA);
label.lft (btex $B'$ etex, z.BB);
label.top (btex $C$ etex, z.C);

endfig;

beginfig(44)
save u;
u:=.7cm;

z.A=(-1,0)*u;
z.X=2.5*z.A;
z.B=-z.A;
z.C=z.B zscaled (0,2.5);

draw z.X--z.B--z.C--cycle;
draw z.A--z.C;

rimmark(z.A--z.C,z.B--z.C);

dOt z.X, z.A, z.B, z.C;

label.llft (btex $A$ etex, z.X);
label.llft (btex $C$ etex, z.A);
label.lrt (btex $C'$ etex, z.B);
label.top (btex $B$ etex, z.C);

endfig;

beginfig(46)
save u;
u:=1cm;

z.O=origin;
z.A=(1.5,0)*u;
z.B=z.A zscaled (0,.9);
z.AA=-.4*z.A;
z.BB=-.6*z.B;

mark_rt_angle_withsize(z.A, z.O, z.B, 10);

draw z.A--z.AA penbold;
draw z.B--z.BB penbold;

endfig;

beginfig(48)
save u;
u:=.9cm;

z.A=(-1.3,0)*u;
z.B=-z.A;
z.P=z.B zscaled (0,2);
z.M=altitude(z.A,z.P,z.B);

mark_rt_angle_withsize(z.B, z.M, z.P, 6);

draw z.A--z.B--z.P--cycle;
draw ddline(z.M,z.P)(.3,.3);

rimmark2(z.A--z.P,z.B--z.P);
rimmark(z.A--z.M,z.B--z.M);

dOt z.A, z.B, z.P, z.M;

label.llft (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);
label.urt (btex $P$ etex, z.P);
label.lrt (btex $M$ etex, z.M);
endfig;

beginfig(50)
save u;
u:=1cm;

z.A=(0,0)*u;
z.B=(2,0)*u;
z.P=(1.4,1.1)*u;
z.PP=z.P reflectedabout (z.A,z.B);
z.Q=.5[z.P,z.PP];

mark_rt_angle_withsize(z.PP, z.Q, z.A, 6);
drawarrow cutcircle(circle(z.A,15),  z.B,z.P);
drawarrow reverse cutcircle(circle(z.A,16),  z.PP,z.B);

draw ddline(z.A,z.B)(.2,.2);
draw ddline(z.P,z.PP)(.2,.2);
draw z.A--z.P--z.B--z.PP--cycle;

dOt z.A,z.B,z.P,z.PP;

label.llft (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);
label.urt (btex $P$ etex, z.P);
label.lrt (btex $P'$ etex, z.PP);
label.top (btex $\ell$ etex, .5[z.A,z.B]);
endfig;

beginfig(52)
save u;
u:=1.4cm;

z.O=origin;
z.P=(0,1)*u;
z.PP=-z.P;
z.Q=z.P zscaled (0,1.2);
z.QQ=-z.Q;

mark_rt_angle_withsize(z.P, z.O, z.QQ, 6);

rimmark(z.O--z.Q,z.O--z.QQ);
rimmark2(z.P--z.Q,z.P--z.QQ,z.PP--z.Q,z.PP--z.QQ);

draw ddline(z.Q,z.QQ)(.1,.1);
draw ddline(z.P,z.PP)(.1,.1);
draw z.P--z.Q--z.PP--z.QQ--cycle;

dOt z.P,z.Q,z.PP,z.QQ;

label.urt (btex $P$ etex, z.P);
label.lrt (btex $P'$ etex, z.PP);
label.ulft (btex $Q$ etex, z.Q);
label.urt (btex $Q$ etex, z.QQ);
label.bot (btex $\ell$ etex, .3[z.Q,z.QQ]);
label.lft (btex $m$ etex rotated 90, .3[z.P,z.PP]);
endfig;


beginfig(54)
save u;
u:=1.3cm;

z.A=(0,0)*u;
z.B=(2,0)*u;
z.P=(1.4,1.1)*u;
z.PP=z.P reflectedabout (z.A,z.B);
z.Q=.5[z.P,z.PP];

mark_rt_angle_withsize(z.PP, z.Q, z.A, 6);
arcs(z.B,z.A,z.P,10);
arcs(z.B,z.A,z.PP,11);
arcs2(z.A,z.B,z.P,10);
arcs2(z.A,z.B,z.PP,11);

draw ddline(z.A,z.B)(.1,.1);
draw z.P--z.PP;
draw z.A--z.P--z.B--z.PP--cycle;

rimmark(z.P--z.Q,z.PP--z.Q);
rimmark2(z.P--z.A,z.PP--z.A);
rimmark3(z.P--z.B,z.PP--z.B);

dOt z.A,z.B,z.P,z.PP;

label.llft (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);
label.top (btex $P$ etex, z.P);
label.bot (btex $P'$ etex, z.PP);
endfig;

beginfig(56)
save u;
u:=1cm;

z.A=origin;
z.B=(1,0)*u;
z.P=(.2,.9)*u;
z.Q=(1.3,1)*u;
z.R=(-.8,1.6)*u;

z.PP =z.P reflectedabout (z.A,z.B);
z.QQ =z.Q reflectedabout (z.A,z.B);
z.RR =z.R reflectedabout (z.A,z.B);

arcs(z.P,z.A,z.Q,10);
arcs(z.PP,z.A,z.QQ,10);
arcs2(z.P,z.A,z.R,10);
arcs2(z.PP,z.A,z.RR,10);

draw z.P--z.A--z.PP;
draw z.Q--z.A--z.QQ;
draw z.R--z.A--z.RR;
draw z.Q--z.P--z.R;
draw z.QQ--z.PP--z.RR;
draw ddline(z.A,z.B)(1.1,.2);

rimmark(z.A--z.P,z.A--z.PP);
rimmark2(z.A--z.Q,z.A--z.QQ);
rimmark3(z.A--z.R,z.A--z.RR);

dOt z.A,z.B,z.P,z.PP,z.Q,z.QQ,z.R,z.RR;

label.ulft (btex $A$ etex, z.A+(-2,0));
label.top (btex $B$ etex, z.B+(1,0));
label.top (btex $P$ etex, z.P);
label.bot (btex $P'$ etex, z.PP);
label.top (btex $Q$ etex, z.Q);
label.bot (btex $Q'$ etex, z.QQ);
label.top (btex $R$ etex, z.R);
label.bot (btex $R'$ etex, z.RR);
endfig;


beginfig(58)
save u;
u:=1cm;

z.Q=origin;
z.X=(1,0)*u;
z.P=z.X zscaled(0,1.6);
z.PP=-z.P;

mark_rt_angle_withsize(-z.X, z.Q, z.P, 6);

draw ddline(z.Q,z.X)(.9,.3);
draw z.X--z.P--z.PP--cycle;

rimmark(z.Q--z.P,z.Q--z.PP);
rimmark2(z.X--z.P,z.X--z.PP);

dOt z.X,z.P,z.PP,z.Q;

label.top (btex $P$ etex, z.P);
label.bot (btex $P'$ etex, z.PP);
label.lrt (btex $Q$ etex, z.Q);
label.urt (btex $X$ etex, z.X);
label.top (btex $\ell$ etex, -.6[z.Q,z.X]);
endfig;

beginfig(60)
save u;
u:=1cm;

z.A=origin;
z.B=(1.5,0)*u;
z.C=2.4*z.B;

z.M=.5[z.A,z.B];
z.N=.5[z.B,z.C];
z.Y=z.B zscaled (0,.6);

mark_rt_angle_withsize(z.M+z.Y, z.M, z.C, 6);
mark_rt_angle_withsize(z.N+z.Y, z.N, z.C, 6);

draw ddline(z.A,z.C)(.2,.2);
draw z.M-z.Y--z.M+z.Y;
draw z.N-z.Y--z.N+z.Y;

rimmark(z.M--z.A,z.M--z.B);
rimmark2(z.N--z.C,z.N--z.B);
dOt z.A,z.B,z.C;

label.bot (btex $A$ etex, z.A);
label.bot (btex $B$ etex, z.B);
label.bot (btex $C$ etex, z.C);

label.top (btex $\ell$ etex, 2.8*z.B);
label.lft (btex $m$ etex rotated 90, z.M+.6*z.Y);
label.lft (btex $n$ etex rotated 90, z.N+.6*z.Y);
endfig;

beginfig(62)
save u;
u:=1cm;

z.A=origin;
z.B=(.3,.9)*u;
z1=(.3,0)*u;
z2=(.8,0)*u;
z3=(-.1,0)*u;

draw circumcircle(z.A, z.B, z1);
draw circumcircle(z.A, z.B, z2);
draw circumcircle(z.A, z.B, z3);

dOt z.A,z.B;
endfig;


beginfig(64)
save u;
u:=1.4cm;

z.shift=(2.8,0)*u;

z.A=origin;
z.B=(.8,.5)*u;
z.P=z.B rotated 60;
z.Q=z.B rotated -60;
z.M=.5[z.A,z.B];

draw z.A--z.B penbold;
Dot z.A,z.B;

draw (z.A+z.shift)--(z.B+z.shift) penbold;
draw ddarc(z.P,z.B,z.Q)(15,15) shifted z.shift;
draw ddarc(z.P,z.A,z.Q)(15,15) shifted z.shift;
Dot z.A+z.shift,z.B+z.shift;
dOt z.P+z.shift,z.Q+z.shift;

draw (z.A+2*z.shift)--(z.B+2*z.shift) penbold;
draw ddarc(z.P,z.B,z.Q)(15,15) shifted (2*z.shift);
draw ddarc(z.P,z.A,z.Q)(15,15) shifted (2*z.shift);
draw (ddline(z.P,z.Q)(.15,.15)) shifted (2*z.shift);
Dot z.A+2*z.shift,z.B+2*z.shift;
dOt z.P+2*z.shift,z.Q+2*z.shift,z.M+2*z.shift;
dOtc z.M+2*z.shift;

label.llft (btex $A$ etex, z.A);
label.urt (btex $B$ etex, z.B);
label.llft (btex $A$ etex, z.A+z.shift);
label.urt (btex $B$ etex, z.B+z.shift);
label.ulft (btex $P$ etex, z.P+z.shift);
label.lrt (btex $Q$ etex, z.Q+z.shift);
label.llft (btex $A$ etex, z.A+2*z.shift);
label.urt (btex $B$ etex, z.B+2*z.shift);
whitelabel.ulft (btex $P$ etex, z.P+2*z.shift);
whitelabel.lrt (btex $Q$ etex, z.Q+2*z.shift);
label.rt (btex $M$ etex, z.M+2*z.shift+(.5,-1));

endfig;


beginfig(66)
save u;
u:=1.4cm;

z.A=(-1,0)*u;
z.B=-z.A;
z.C=z.B rotated 130;
z.D=altitude(z.A,z.C,z.B);

mark_rt_angle_withsize(z.A, z.C, z.B, 6);
mark_rt_angle_withsize(z.C, z.D, z.B, 6);

draw z.A--z.B--z.C--cycle;
draw z.C--z.D;

dOt z.A,z.B,z.C,z.D;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);
label.bot (btex $D$ etex, z.D);
endfig;

beginfig(68)
save u,a;
u:=1cm;
a:=20;

z.A=(0,0)*u;
z.B=(2,0)*u;
z.X=(.2,-.7)*u;
z.XA=z.X rotatedaround (z.A,a);
z.XB=z.X rotatedaround (z.B,a);

z.Y=whatever[z.A,z.XA]=whatever[z.B,z.XB];
z.Z=whatever[z.A,z.XA]=whatever[z.B,z.X];
z.C=whatever[z.A,z.X]=whatever[z.B,z.XB];

arcs(z.C,z.A,z.Z,10);
arcs(z.C,z.B,z.Z,10);

draw z.A--z.B--z.C--cycle;
draw z.A--z.Y--z.X--z.B;

dOt z.A,z.B,z.C,z.X,z.Y,z.Z;

label.top (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.bot (btex $C$ etex, z.C);
label.llft (btex $X$ etex, z.X);
label.lrt (btex $Y$ etex, z.Y);
label.top (btex $Z$ etex, z.Z+(1.5,.5));
endfig;

beginfig(70)
save u;
u:=1cm;

z=(.3,-.6);

z.A=origin;
z.D=(2,0)*u;
z.C=(1.9,-1.6)*u;
z.X= z.D zscaled z;
z.B= z.C zscaled z;

save p; path p[];
p0=z.A--z.D--z.C--cycle;
p1=z.A--z.X--z.B--cycle;

hatchfill p0  withcolor (20, 1mm, -.5bp);
hatchfill p1  withcolor (20+angle(z), 1mm, -.5bp);

arcs (z.B,z.A,z.X,10);
arcs (z.C,z.A,z.D,10);

draw p0;
draw p1;
draw z.X--z.D--z.B--z.C;

dOt z.A,z.B,z.C,z.D,z.X;

label.ulft (btex $A$ etex, z.A);
label.llft (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);
label.urt (btex $D$ etex, z.D);
label.lrt (btex $X$ etex, z.X);
endfig;

beginfig(72)
save u;
u:=1.4cm;

z.u=(.8,.6)*u;
z.v=z.u zscaled (0,.4);

draw origin--z.u;
draw z.v--z.v+z.u;

parallel_mark(origin--z.u);
parallel_mark(z.v--z.v+z.u);

endfig;

beginfig(74)
save u;
u:=1cm;

z.D=origin;
z.Z=(7,0)*u;
z.P=z.Z zscaled(0,.3);
z.Q=.4[z.P,z.Z];
z.R=altitude(z.P,z.Q,z.D);

mark_rt_angle_withsize(z.Z, z.D, 2*z.P-z.D, 6);
mark_rt_angle_withsize(z.Q, z.R, 2*z.P-z.D, 6);
mark_rt_angle_withsize(z.Z+z.P-z.D, z.P, 2*z.P-z.D, 6);

draw ddline(z.P,z.Z)(.1,.1);
draw ddline(z.P,z.Z+z.P-z.D)(.1,.1);
draw ddline(z.D,z.Z)(.1,.1);
draw ddline(z.D,z.P)(.3,.3);
parallel_mark(z.D--z.Z);
parallel_mark(z.D+z.P-z.D--z.Z+z.P-z.D);

draw z.Q--z.R;

dOt z.P,z.Q,z.R,z.D,z.Z;

label.ulft (btex $P$ etex, z.P+(0,2));
label.urt (btex $Q$ etex, z.Q);
label.lft (btex $R$ etex, z.R);
label.llft (btex $D$ etex, z.D);
label.bot (btex $Z$ etex, z.Z);

label.bot (btex $\ell$ etex, .7[z.D,z.Z]);
label.top (btex $m$ etex, .7[z.P,z.Z+z.P-z.D]);
label.top (btex $s$ etex, .7[z.P,z.Z]);

label.lft (btex $n$ etex rotated 90, .5[z.D,z.R]);

endfig;


beginfig(76)
save u;
u:=1cm;

z.O=origin;
z.X=(1,1)*u;
z.Y=(1.2,-.8)*u;

arcs(z.X,z.O,z.Y,10);
arcs(-z.X,z.O,-z.Y,10);

draw -z.X--z.X--z.Y--(-z.Y)--cycle;

rimmark(z.O--z.X,z.O--(-z.X));
rimmark2(z.O--z.Y,z.O--(-z.Y));
rimmark3(z.Y--z.X,-z.Y--(-z.X));

dOt z.X,-z.X,z.Y,-z.Y, z.O;

label.top (btex $O$ etex, z.O);
label.urt (btex $X$ etex, z.X);
label.llft (btex $X'$ etex, -z.X);
label.lrt (btex $Y$ etex, z.Y);
label.ulft (btex $Y'$ etex, -z.Y);
endfig;

beginfig(78)
save u;
u:=1cm;

z.u=(2,0)*u;
z.v=z.u zscaled (0,.6);

z.P=z.v+.3*z.u;
z.Q=.7*z.u;
z.O=.5[z.P,z.Q];

draw origin--z.u;
draw z.v--z.v+z.u;
parallel_mark(origin--.3*z.u);
parallel_mark(z.v--z.v+.3*z.u);

draw z.P--z.Q;

rimmark(z.O--z.P,z.O--z.Q);

dOt z.O,z.P,z.Q;

label.top (btex $P$ etex, z.P);
label.bot (btex $Q$ etex, z.Q);
label.urt (btex $O$ etex, z.O);

label.top (btex $\ell$ etex, z.u+(-3,0));
label.top (btex $m$ etex, z.u+z.v+(-3,0));
endfig;

beginfig(80)
save u;
u:=1cm;

z.O=origin;
z.Z=(4,0)*u;
z.P=(.4,.4)*u;
z.Q=-z.P;
z.ZZ=-z.Z;

save p; path p[];

p1=ddarc(z.Z,z.P,z.ZZ)(2,2);
p2=ddarc(z.Z,z.Q,z.ZZ)(2,2);

draw p1; draw p2;
draw z.P--z.Q;
draw z.Z--z.ZZ dashed evenly;

rimmark(z.O--z.P,z.O--z.Q);
rimmark2(z.O--z.Z,z.O--z.ZZ);

dOt z.O,z.P,z.Q,z.Z,z.ZZ;

label.top (btex $Z$ etex, z.Z);
label.top (btex $Z'$ etex, z.ZZ);
label.lrt (btex $O$ etex, z.O);
label.top (btex $P$ etex, z.P);
label.bot (btex $Q$ etex, z.Q);

label.top (btex $m$ etex rotated -10, point .25 of p1);
label.bot (btex $\ell$ etex rotated 10, point .75 of p2);
endfig;


beginfig(82)
save u;
u:=1cm;

z.u=(2,1)*u;
z.v=z.u zscaled (0,.4);

z.D=.2*z.u;
z.C=.7*z.u;
z.B=.3*z.u+z.v;
z.A=.6*z.u+z.v;

%parallel_mark(.7*z.u--z.u);
%parallel_mark(z.v+.7*z.u--z.v+z.u);

draw origin--z.u;
draw z.v--z.v+z.u;
draw ddline(z.B,z.C)(.4,.4);

drawarrow reverse cutcircle(circle(z.B,10),  z.C,z.A);
drawarrow cutcircle(circle(z.C,10),  z.B,z.D);

dOt z.A,z.B,z.C,z.D;

label.top (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.bot (btex $C$ etex, z.C);
label.bot (btex $D$ etex, z.D);
endfig;

beginfig(84)
save u;
u:=1cm;

z.u=(1.5,0)*u;
z.v=z.u zscaled (0,.4);

z.O=origin;
z.A=.8*z.u+z.v;
z.AA=-z.A;
z.B=-.3*z.u+z.v;
z.C=-z.B;
z.D=z.C+.5*z.u;

draw -z.u-z.v--z.u-z.v;
draw -z.u+z.v--z.u+z.v;
draw z.B--z.C;
draw z.A--z.AA dashed evenly;

rimmark(z.B--z.O,z.O--z.C);
rimmark2(z.A--z.O,z.O--z.AA);

dOt z.A,z.AA,z.B,z.C,z.D,z.O;

label.top (btex $A$ etex, z.A);
label.bot (btex $A'$ etex, z.AA);
label.top (btex $B$ etex, z.B);
label.bot (btex $C$ etex, z.C);
label.bot (btex $D$ etex, z.D);
label.top (btex $O$ etex, z.O+(1,0));
endfig;


beginfig(86)
save u;
u:=1cm;

z.O=origin;
z.X=(.8,1)*u;
z.Y=(.5,-1)*u;

arcs(-z.X,-z.Y,z.Y,10);
arcs(-z.Y,z.Y,z.X,10);

draw -z.X--z.X--z.Y--(-z.Y)--cycle;
draw ddline(-z.X,z.Y)(.2,.5);

rimmark2(z.O--z.X,z.O--(-z.X));
rimmark(z.O--z.Y,z.O--(-z.Y));

dOt z.X,-z.X,z.Y,-z.Y, z.O;

label.rt (btex $M$ etex, z.O);
label.top (btex $X$ etex, z.X);
label.bot (btex $C$ etex, -z.X);
label.bot (btex $A$ etex, z.Y);
label.top (btex $B$ etex, -z.Y);
endfig;


beginfig(88)
save u, a;
u:=1.4cm;
a=36;

z.D=origin;
z.C=(1,0)*u;
z.A=z.C rotatedaround (z.D,3*a);
z.B=z.D rotatedaround (z.A,-a);

arcs(z.B,z.A,z.D,11);
arcs(z.C,z.A,z.D,9);

draw z.A--z.B--z.C--cycle;
draw z.A--z.D;

rimmark(z.A--z.B,z.A--z.D,z.C--z.D);

dOt z.A,z.B,z.C,z.D;


label.top (btex $A$ etex, z.A);
label.llft (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);
label.bot (btex $D$ etex, z.D);

endfig;

beginfig(90)
save u;
u:=1cm;

z.C=origin;
z.A=(-2,0)*u;
z.D=z.A zscaled (0,-.5);
z.B=.5[z.A,z.D];

markdashed_rt_angle_withsize(z.A, z.C, z.D, 10);

draw z.A--z.B--z.C--cycle;
draw z.B--z.D--z.C;
rimmark(z.A--z.B,z.B--z.C,z.B--z.D);

dOt z.A,z.B,z.C,z.D;

label.llft (btex $A$ etex, z.A);
label.ulft (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);
label.urt (btex $D$ etex, z.D);

endfig;

beginfig(92)
save u;
u:=.4cm;

z.B=origin;
z.O=(-1,-2)*u;
z.OO=(-x.O,y.O);
z.X=altitude(z.B,z.O,z.OO);
z.A= z.O*(1+abs(z.X-z.O)/abs(z.O));
z.C=(-x.A,y.A);

dashedarcs(z.C,z.A,z.X,10);

draw z.A--z.B--z.C--cycle;
draw z.A--z.X;
draw circle(z.O,z.X-z.O);

dOt z.A,z.B,z.C,z.X,z.O;

label.llft (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);
label.urt (btex $X$ etex, z.X);


endfig;


beginfig(94)
save u;
u:=1.4cm;

z.u=(1,0)*u;
z.v=(.2,.6)*u;

draw z.u--origin--z.v--z.u+z.v--cycle;

parallel_mark(origin--z.u);
parallel_mark(z.v--z.v+z.u);
parallel_mark2(origin--z.v);
parallel_mark2(z.u--z.v+z.u);

dOt z.u,origin,z.v,z.u+z.v;

label.llft (btex $A$ etex, origin);
label.ulft (btex $B$ etex, z.v);
label.urt (btex $C$ etex, z.v+z.u);
label.lrt (btex $D$ etex, z.u);
endfig;

beginfig(96)
save u;
u:=2cm;

z.u=(1,0)*u;
z.v=(.2,.8)*u;

z.M=.5*(z.u+z.v);

dashedarcs(origin, z.u, z.u+z.v, 10);
dashedarcs(origin, z.v, z.u+z.v, 10);

draw z.u--origin--z.v--z.u+z.v--cycle;
draw origin--z.u+z.v;
draw z.u--z.v dashed evenly;


parallel_mark(origin--z.u);
parallel_mark(z.v--z.v+z.u);
parallel_mark2(origin--z.v);
parallel_mark2(z.u--z.v+z.u);

rimmark(z.M--origin,z.M--z.u+z.v);
rimmark2(z.M--z.u,z.M--z.v);

dOt z.u,origin,z.v,z.u+z.v,z.M;

label.llft (btex $A$ etex, origin);
label.ulft (btex $B$ etex, z.v);
label.urt (btex $C$ etex, z.v+z.u);
label.lrt (btex $D$ etex, z.u);
label.top (btex $M$ etex, z.M+(1,2));
endfig;

beginfig(98)
save u;
u:=1cm;

z.O=origin;
z.P=(1,.8)*u;
z.Q=(2.1,2)*u;
z.Pl=(x.P,0);
z.Pm=(0,y.P);
z.Ql=(x.Q,0);
z.Qm=(0,y.Q);

mark_rt_angle_withsize(z.P,z.Pl,z.Ql,6);
mark_rt_angle_withsize(z.Pl,z.Ql,z.Q,6);
mark_rt_angle_withsize(z.P,z.Pm,z.Qm,6);
mark_rt_angle_withsize(z.Pm,z.Qm,z.Q,6);
mark_rt_angle_withsize(z.Pm,z.O,z.Pl,6);

draw z.P--z.Q;
draw z.Pl--z.P--z.Pm;
draw z.Ql--z.Q--z.Qm;

draw ddline(z.O,z.Ql)(.2,.4);
draw ddline(z.O,z.Qm)(.2,.4);

dOt z.P,z.Pl,z.Pm,z.Q,z.Ql,z.Qm;

label.top (btex $P$ etex, z.P);
label.urt (btex $Q$ etex, z.Q);
label.bot (btex $P_\ell$ etex, z.Pl);
label.bot (btex $Q_\ell$ etex, z.Ql);
label.lft (btex $P_m$ etex, z.Pm);
label.lft (btex $Q_m$ etex, z.Qm);

label.top (btex $\ell$ etex, 1.3[z.O,z.Ql]);
label.lft (btex $m$ etex rotated 90, 1.3[z.O,z.Qm]);

endfig;

beginfig(100)
save u;
u:=1.8cm;

z.A=(-1,0)*u;
z.B=-z.A;
z.E= z.A zscaled (0,4/3);

save p; path p[];
p0=circle((-1/(2*2-1))[z.A,z.B],(2/(2*2-1)*(z.B-z.A)));
p1=circle((-1/(4*4-1))[z.A,z.B],(4/(4*4-1)*(z.B-z.A)));
p2=circle((-1/(8*8-1))[z.A,z.B],(8/(8*8-1)*(z.B-z.A)));

z.M=point .5 of p0;

for k=1/8,1/4,1/2,2,4,8: 
draw circle((-1/(k*k-1))[z.A,z.B],(k/(k*k-1)*(z.B-z.A)));
endfor 

draw -1.1*z.E--z.E;
draw z.A--z.M--z.B;

dOt z.A,z.B, z.M;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.urt (btex $M$ etex, z.M);

label.lft (btex {\scriptsize $k=1$} etex rotated 90, .9[-z.E,z.E]);
label.bot (btex {\scriptsize $k=\tfrac12$} etex, point 3 of p0);
label.bot (btex {\scriptsize $k=2$} etex, ((point 3 of p0) reflectedabout (-z.E,z.E)));
label.bot (btex {\scriptsize $k=\tfrac14$} etex, (point 3 of p1)+(0,1));
label.bot (btex {\scriptsize $k=4$} etex, ((point 3 of p1) reflectedabout (-z.E,z.E))+(0,1));
label.bot (btex {\scriptsize $k=\tfrac18$} etex, (point 3 of p2)+(0,3));
label.bot (btex {\scriptsize $k=8$} etex, ((point 3 of p2) reflectedabout (-z.E,z.E))+(0,3));
endfig;


beginfig(102)
save u;
u:=.7cm;

z.O=origin;

z.l=(-1,.5)*u;
z.m=(1,.4)*u;

z.A=(0,2)*u;
z.B=z.A reflectedabout(z.O,z.l);
z.C=z.A reflectedabout(z.O,z.m);

z.CC=altitude(z.O,z.A,z.l);
z.BB=altitude(z.O,z.A,z.m);

mark_rt_angle_withsize(z.A,z.CC,5*z.l,6);
mark_rt_angle_withsize(z.A,z.BB,5*z.m,6);

draw ddline(z.O,z.l)(.4,.2);
draw ddline(z.O,z.m)(.4,.2);
draw z.A--z.B--z.C--cycle;
draw z.O--z.A; draw z.O--z.B; draw z.O--z.C;

rimmark3(z.CC--z.A,z.CC--z.B);
rimmark2(z.BB--z.A,z.BB--z.C);
rimmark1(z.O--z.A,z.O--z.B,z.O--z.C);

dOt z.O,z.A,z.B,z.C;

label.top (btex $A$ etex, z.A);
label.llft (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);
label.bot (btex $O$ etex, z.O+(0,-1));
endfig;

beginfig(104)
save u;
u:=1cm;

z.AA=(0,0)*u;
z.BB=(2,0)*u;
z.CC=(.8,-1.9)*u;

z.A=.5[z.BB,z.CC];
z.B=.5[z.AA,z.CC];
z.C=.5[z.BB,z.AA];

draw ddline(z.AA,z.BB)(.3,.3);
draw ddline(z.AA,z.CC)(.4,.2);
draw ddline(z.CC,z.BB)(.2,.3);
draw z.A--z.B--z.C--cycle;

rimmark(z.C--z.B,z.A--z.BB,z.A--z.CC);
rimmark2(z.A--z.B,z.C--z.BB,z.C--z.AA);
rimmark3(z.C--z.A,z.B--z.AA,z.B--z.CC);

dOt z.AA,z.BB,z.CC,z.A,z.B,z.C;

label.lrt (btex $A$ etex, z.A);
label.llft (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);

label.urt (btex $A'$ etex, z.AA);
label.lrt (btex $B'$ etex, z.BB);
label.rt (btex $C'$ etex, z.CC);

label.ulft (btex $\ell$ etex rotated angle(z.BB-z.CC), (-.2)[z.BB,z.CC] +(2,0));
label.urt (btex $m$ etex rotated angle(z.CC-z.AA), (-.2)[z.AA,z.CC] +(-3,0));
label.top (btex $n$ etex  rotated angle(z.BB-z.AA), (-.2)[z.AA,z.BB]);
endfig;

beginfig(106)
save u;
u:=1.4cm;

z.A=(0,0)*u;
z.B=(1.2,1.5)*u;
z.C=(2,0)*u;

z.AA=.5[z.B,z.C];
z.BB=.5[z.A,z.C];

z.X=.5[z.BB,z.C];
z.M=whatever[z.A,z.AA]=whatever[z.B,z.BB];

draw z.A--z.B--z.C--cycle;
draw z.A--z.AA;
draw z.B--z.BB;
draw z.AA--z.X;

parallel_mark(z.M--z.BB);
parallel_mark((1/3)[z.AA,z.X]--z.X);
rimmark(z.AA--z.B,z.AA--z.C);
rimmark2(z.X--z.BB,z.X--z.C);

dOt z.A,z.B,z.C,z.AA,z.BB,z.X,z.M;

label.llft (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);

label.urt (btex $A'$ etex, z.AA);
label.bot (btex $B'$ etex, z.BB);

label.ulft (btex $M$ etex, z.M);
label.bot (btex $X$ etex, z.X);
endfig;

beginfig(108)
save u;
u:=1cm;

z.B=origin;
z.P=(2,1)*u;
z.Q= z.P zscaled (0,.6);

z.A=(2,0)*u;
z.C=.8*z.A reflectedabout(z.B,z.P);

arcs(z.A,z.B,z.P,9);
arcs(z.C,z.B,z.P,11);
arcs2(z.A,z.B,-z.Q,11);
arcs2(z.C,z.B,z.Q,9);
mark_rt_angle_withsize(-z.P,z.B,-z.Q,6);

draw ddline(z.B,z.A)(0,.2);
draw ddline(z.B,z.C)(0,.4);
draw ddline(z.B,z.P)(.4,.4);
draw ddline(z.B,z.Q)(.6,.6);

dOt z.A,z.B,z.C;

label.bot (btex $A$ etex, z.A);
label.lft (btex $B$ etex, z.B+(-1,1));
label.ulft (btex $C$ etex, z.C);

label (btex bisector etex rotated angle(z.P), z.P+(0,6));
label (btex external etex rotated angle(-z.Q), z.Q+(6,0));
label (btex bisector etex rotated angle(-z.Q), z.Q-(5,0));
endfig;




end




