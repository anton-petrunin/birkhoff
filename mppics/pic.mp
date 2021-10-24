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

beginfig(35)
save u;
u:=1cm;

z.O1=(0,0)*u;
z.O2=(2,0)*u;
z.R1=(-.5)[z.O1,z.O2];
z.R2=1.3[z.O1,z.O2];

draw circle(z.O1,z.R1-z.O1);
draw circle(z.O2,z.R2-z.O2);
draw z.R1--z.R2;

dOt z.O1,z.O2, z.R1, z.R2;

label.top (btex $R$ etex, .5[z.O1,z.R1]);
whitelabel.top (btex $d$ etex, .5[z.O1,z.O2]);
label.top (btex $r$ etex, .5[z.O2,z.R2]);
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
z.C=z.B zscaled (0,2.2);

z.AA=.65[z.C,z.B];
z.BB=.65[z.C,z.A];

draw z.A--z.B--z.C--cycle;
draw z.A--z.AA;
draw z.B--z.BB;

rimmark(z.C--z.B,z.C--z.A);
rimmark2(z.BB--z.A,z.AA--z.B);

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
z.A=(1.5,.5)*u;
z.B=z.A zscaled (0,.9);
z.AA=-.4*z.A;
z.BB=-.6*z.B;

mark_rt_angle_withsize(z.A, z.O, z.B, 10);

draw z.A--z.AA;
draw z.B--z.BB;

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
label.urt (btex $Q'$ etex, z.QQ);
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
label.top (btex $O$ etex, z.O+(2,0));
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

draw ddline(z.O,z.l)(.4,.5);
draw ddline(z.O,z.m)(.4,.5);
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

label.ulft (btex $\ell$ etex rotated angle(z.O-z.l), z.l+(2,1));
label.urt (btex $m$ etex rotated angle(z.m-z.O), z.m +(-3,0));
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
label.lft (btex $B$ etex, z.B+(-1,2));
label.ulft (btex $C$ etex, z.C);

label (btex bisector etex rotated angle(z.P), z.P+(0,6));
label (btex external etex rotated angle(-z.Q), z.Q+(6,0));
label (btex bisector etex rotated angle(-z.Q), z.Q-(5,0));
endfig;

beginfig(110)
save u;
u:=1cm;

z.C=origin;
z.B=(2,0)*u;
z.A=(1.2,1)*u;
z.D=bisector(z.B,z.A,z.C);
.5[z.E,z.A]=altitude(z.D,z.C,z.A);

arcs(z.E,z.A,z.C,9);
arcs(z.E,z.A,z.B,11);
arcs(z.C,z.E,z.A,10);

arcs2(z.E,z.D,z.C,8);
arcs2(z.A,z.D,z.B,8);

draw z.A--z.B--z.C--cycle;
draw ddline(z.A,z.E)(0,.2);
draw ddline(z.C,z.E)(.2,.4);

rimmark(z.A--z.C,z.C--z.E);

dOt z.A,z.B,z.C,z.D,z.E;

label.top (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.llft (btex $C$ etex, z.C);
label.lrt (btex $D$ etex, z.D);
label.lft (btex $E$ etex, z.E+(-1,-1));

label.urt (btex $\ell$ etex rotated angle(z.E-z.C), 1.2[z.C,z.E]+(0,-3));
endfig;

beginfig(112)
save u;
u:=1cm;

z.A=(1.4,-.7)*u;
z.B=(0,0)*u;
z.C=(1.4,1.5)*u;
z.X=(1.5,.6)*u;
z.Y=z.X reflectedabout(z.B,z.A);
z.Z=z.X reflectedabout(z.B,z.C);
z.XY=.5[z.X,z.Y];
z.XZ=.5[z.X,z.Z];

mark_rt_angle_withsize(z.A,z.XY,z.X,6);
mark_rt_angle_withsize(z.C,z.XZ,z.X,6);

draw ddline(z.B,z.C)(.2,.2);
draw ddline(z.B,z.A)(.2,.2);
draw z.B--z.X;
draw z.B--z.Y;
draw z.B--z.Z;
draw z.Y--z.X--z.Z;

rimmark(z.X--z.XY,z.Y--z.XY);
rimmark2(z.X--z.XZ,z.Z--z.XZ);
rimmark3(z.X--z.B,z.Y--z.B,z.Z--z.B);

dOt z.A,z.B,z.C,z.X,z.Y,z.Z;

label.top (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B+(-2,2));
label.ulft (btex $C$ etex, z.C);

label.rt (btex $X$ etex, z.X);
label.bot (btex $Y$ etex, z.Y);
label.ulft (btex $Z$ etex, z.Z);

endfig;

beginfig(114)
save u;
u:=.8cm;

z.I=origin;
z.Z=(0,-1)*u;
z.X=z.Z rotated 100;
z.Y=z.Z rotated -105;
z.A=z.Z+(whatever*z.Z zscaled (0,1))=z.Y+(whatever*z.Y zscaled (0,1));
z.B=z.Z+(whatever*z.Z zscaled (0,1))=z.X+(whatever*z.X zscaled (0,1));
z.C=z.Y+(whatever*z.Y zscaled (0,1))=z.X+(whatever*z.X zscaled (0,1));

mark_rt_angle_withsize(z.A,z.Y,z.I,6);
mark_rt_angle_withsize(z.B,z.Z,z.I,6);
mark_rt_angle_withsize(z.B,z.X,z.I,6);

arcs(z.B,z.A,z.I,9);arcs(z.C,z.A,z.I,11);
arcs2(z.A,z.B,z.I,9);arcs2(z.C,z.B,z.I,12);

z.AA=bisector(z.B,z.A,z.C);
z.BB=bisector(z.A,z.B,z.C);
draw z.A--z.B--z.C--cycle;
draw z.I--z.X;
draw z.I--z.Y;
draw z.I--z.Z;
draw z.A--z.AA;
draw z.B--z.BB;
draw z.C--z.I dashed evenly;

rimmark (z.I--z.X,z.I--z.Y,z.I--z.Z);

dOt z.A,z.B,z.C,z.I,z.X,z.Y,z.Z,z.AA,z.BB;

label.llft (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);

label.urt (btex $A'$ etex, z.AA);
label.ulft (btex $B'$ etex, z.BB);

whitelabel.top (btex $I$ etex, z.I);

label.rt (btex $X$ etex, z.X);
label.lft (btex $Y$ etex, z.Y);
label.bot (btex $Z$ etex, z.Z);
endfig;

beginfig(116)
save u;
u:=.7cm;

z.I=origin;
z.Z=(0,-1)*u;
z.X=z.Z rotated 110;
z.Y=z.Z rotated -115;
z.A=z.Z+(whatever*z.Z zscaled (0,1))=z.Y+(whatever*z.Y zscaled (0,1));
z.B=z.Z+(whatever*z.Z zscaled (0,1))=z.X+(whatever*z.X zscaled (0,1));
z.C=z.Y+(whatever*z.Y zscaled (0,1))=z.X+(whatever*z.X zscaled (0,1));

draw z.A--z.B--z.C--cycle;
draw circle(z.I,z.X-z.I);

dOt z.A,z.B,z.C,z.X,z.Y,z.Z;

label.llft (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);

label.rt (btex $X$ etex, z.X);
label.lft (btex $Y$ etex, z.Y);
label.bot (btex $Z$ etex, z.Z);
endfig;

beginfig(118)
save u;
u:=1cm;

z.A=(2,1.6)*u;
z.B=(3,0)*u;
z.C=(0,0)*u;

z.D=bisector(z.B,z.A,z.C);
z.E=z.D+whatever*(z.A-z.C)=z.A+whatever*(z.A-z.B);
z.F=z.E+whatever*(z.B-z.C)=z.A+whatever*(z.A-z.C);

arcs(z.B,z.A,z.D,9);arcs(z.C,z.A,z.D,11);

draw z.A--z.B--z.C--cycle;
draw z.A--z.D--z.E--z.F;

parallel_mark(z.F--z.A);parallel_mark(z.D--z.E);
parallel_mark2(.5[z.E,z.F]--z.F);parallel_mark2(.2[z.B,z.C]--z.C);

dOt z.A,z.B,z.C,z.D,z.E,z.F;

label.top (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);
label.llft (btex $C$ etex, z.C);
label.bot (btex $D$ etex, z.D);
label.urt (btex $E$ etex, z.E);
label.ulft (btex $F$ etex, z.F);
endfig;

beginfig(120)
save u;
u:=1.4cm;

z.O=origin;
z.X=(1,0)*u;
z.Y=z.X rotated -100;
z.Q=z.X zscaled (1,-.7);

arcs(z.Q,z.X,z.Y,10);
arcs2(z.X,z.O,z.Y,10);
mark_rt_angle_withsize(z.O,z.X,2*z.X-z.Q,6);

draw circle(z.O,z.X);
draw z.X--z.Y--z.O--cycle;
draw ddline(z.X,z.Q)(.8,.4);

dOt z.O,z.Q,z.X,z.Y;

label.ulft (btex $O$ etex, z.O);
label.rt (btex $Q$ etex, z.Q);
label.rt (btex $X$ etex, z.X);
label.bot (btex $Y$ etex, z.Y);

endfig;

beginfig(122)
save u;
u:=1.4cm;

z.O=origin;
z.X=(1,0)*u;
z.Y=z.X rotated -100;
z.P=z.X rotated 120;
z.Q=z.P zscaled (1,-.7);

arcs(z.X,z.P,z.Y,10);
arcs2(z.X,z.O,z.Y,10);

draw circle(z.O,z.X);
draw z.X--z.O--z.Y;
draw z.X--z.P--z.Y;
draw ddline(z.P,z.Q)(.8,.4) dashed evenly;

dOt z.O,z.P,z.Q,z.X,z.Y;

label.ulft (btex $O$ etex, z.O);
label.ulft (btex $P$ etex, z.P);
label.ulft (btex $Q$ etex, z.Q);
label.rt (btex $X$ etex, z.X);
label.bot (btex $Y$ etex, z.Y);

endfig;

beginfig(124)
save u;
u:=1.4cm;

z.O=origin;
z.X=(1,0)*u;
z.Y=z.X rotated -100;
z.P=z.X zscaled (1,.8);

draw circle(z.O,z.X);
draw z.X--z.O--z.Y--cycle;
draw ddline(z.X,z.P)(.5,.5);
draw ddline(z.Y,z.P)(.2,0);

dOt z.O,z.P,z.X,z.Y;

label.ulft (btex $O$ etex, z.O);
label.rt (btex $P$ etex, z.P);
label.rt (btex $X$ etex, z.X);
label.lrt (btex $Y$ etex, z.Y);

endfig;

beginfig(126)
save u;
u:=1.4cm;

z.O=origin;
z.X=(1,0)*u;
z.Y=z.X rotated -100;
z.PP=z.X rotated 130;
z.P=.7[z.X,z.PP];

draw circle(z.O,z.X);
draw z.X--z.O--z.Y;
draw ddline(z.X,z.PP)(.2,.2);
draw ddline(z.Y,z.P)(.2,0);
draw ddline(z.Y,z.PP)(.2,0);

dOt z.O,z.P,z.PP,z.X,z.Y;

label.top (btex $O$ etex, z.O);
label.top (btex $P$ etex, z.P);
label.top (btex $P'$ etex, z.PP);
label.urt (btex $X$ etex, z.X);
label.llft (btex $Y$ etex, z.Y);

endfig;

beginfig(128)
save u;
u:=1.4cm;

z.O=origin;
z.X=(0,-1)*u;
z.Y=z.X rotated 55;
z.XX=z.X rotated -150;
z.YY=z.X rotated -80;
z.P=whatever[z.X,z.XX]=whatever[z.Y,z.YY];

draw circle(z.O,z.X);
draw z.X--z.XX;
draw z.Y--z.YY;
draw z.YY--z.XX;
draw z.Y--z.X;
draw z.O--z.X;
draw z.O--z.Y;
draw z.O--z.XX;
draw z.O--z.YY;

dOt z.O,z.P,z.X,z.Y,z.XX,z.YY;

label.urt (btex $O$ etex, z.O);
label.llft (btex $P$ etex, z.P);
label.bot (btex $X$ etex, z.X);
label.lrt (btex $Y$ etex, z.Y);
label.ulft (btex $X'$ etex, z.XX);
label.lft (btex $Y'$ etex, z.YY);

endfig;

beginfig(130)
save u;
u:=1.4cm;

z.O=origin;
z.X=(0,-1)*u;
z.Y=z.X rotated 100;
z.Z=z.X rotated -120;
z.XX=z.X rotated -165;
z.YY=z.X rotated -90;
z.P=whatever[z.X,z.XX]=whatever[z.Y,z.YY];
.5[z.ZZ,z.Z]=altitude(z.Z,z.O,z.P);

draw circle(z.O,z.X);
draw z.X--z.XX;
draw z.Y--z.YY;
draw z.Z--z.ZZ;

draw z.X--z.YY--z.Z--z.XX--z.Y--z.ZZ--cycle;

dOt z.P,z.X,z.Y,z.Z,z.XX,z.YY,z.ZZ;

label.llft (btex $P$ etex, z.P+(0,-1));
label.bot (btex $X$ etex, z.X);
label.rt (btex $Y$ etex, z.Y);
label.ulft (btex $Z$ etex, z.Z);
label.top (btex $X'$ etex, z.XX);
label.lft (btex $Y'$ etex, z.YY);
label.lrt (btex $Z'$ etex, z.ZZ);
endfig;

beginfig(132)
save u;
u:=1.4cm;

z.O=origin;
z.X=(0,-1)*u;

z.A=z.X rotated -55;
z.B=z.X rotated 55;
z.C=z.X rotated 190;

z.AAA=altitude(z.B,z.A,z.C);
z.BBB=altitude(z.A,z.B,z.C);

.5[z.A,z.AA]=altitude(z.A,z.O,z.AAA);
.5[z.B,z.BB]=altitude(z.B,z.O,z.BBB);

mark_rt_angle_withsize(z.A,z.AAA,z.C,6);
mark_rt_angle_withsize(z.B,z.BBB,z.C,6);

draw circle(z.O,z.X);
draw z.A--z.B--z.C--cycle;
draw z.A--z.AA;
draw z.BB--z.B;
draw z.AA--z.BB--z.C--cycle dashed evenly;

rimmark(z.AA--z.C);rimmark(z.BB--z.C);

dOt z.A,z.B,z.C,z.AA,z.BB;

label.llft (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);
label.urt (btex $A'$ etex, z.AA);
label.ulft (btex $B'$ etex, z.BB);
endfig;

beginfig(133)
save u;
u:=.7cm;

z.O=origin;
z.X=(-.8,-.6)*u;
z.L=z.X rotated -80;
z.M=z.X rotated 45;
z.P= z.L zscaled(1,whatever)=z.M zscaled(1,whatever);
z.N=altitude(z.X,z.O,z.P);
.5[z.X,z.Y]=z.N;

draw circle(z.O,z.X-z.O);
draw ddline(z.P,z.L)(.2,.4);
draw ddline(z.P,z.M)(.2,.4);
draw ddline(z.P,z.Y)(.2,.2);
draw circumcircle(z.P,z.L,z.M) dashed evenly;

rimmark(z.N--z.X,z.N--z.Y);

dOt z.L,z.M,z.N,z.P,z.X,z.Y;

label.top (btex $L$ etex, z.L);
whitelabel.bot (btex $M$ etex, z.M);
whitelabel.top (btex $N$ etex, z.N);
whitelabel.top (btex $P$ etex, z.P);
whitelabel.top (btex $X$ etex, z.X);
whitelabel.top (btex $Y$ etex, z.Y);
endfig;

beginfig(134)
save u;
u:=1cm;

z.O=origin;
z.X=(0,-1)*u;

z.A=z.X rotated -55;
z.B=z.X rotated -150;
z.C=z.X rotated 70;
z.D=z.X;

arcs(z.A,z.B,z.C,10);
arcs2(z.A,z.D,z.C,10);

draw circle(z.O,z.X);
draw z.A--z.B--z.C--z.D--cycle;


dOt z.A,z.B,z.C,z.D;

label.llft (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);
label.bot (btex $D$ etex, z.D);
endfig;

beginfig(136)
save u;
u:=.7cm;

z.O=origin;
z.X=(0,-1)*u;

z.Y=z.X rotated -80;
z.A=z.X rotated 60;
z.B=z.X rotated 179;
.8[z.O,z.OO]=z.O reflectedabout(z.A,z.B);
.5[z.A,z.XX]=altitude(z.X,z.OO,z.A);
.5[z.B,z.YY]=altitude(z.Y,z.OO,z.B);

draw circle(z.O,z.X-z.O);
draw circle(z.OO,z.XX-z.OO);
draw z.X--z.Y--z.YY--z.XX--cycle;

parallel_mark(z.X--z.Y);
parallel_mark(z.XX--z.YY);

dOt z.A,z.B,z.X,z.Y,z.XX,z.YY;

label.bot (btex $A$ etex, z.A);
label.ulft (btex $B$ etex, z.B);
label.bot (btex $X$ etex, z.X);
label.lft (btex $Y$ etex, z.Y);
label.rt (btex $X'$ etex, z.XX);
label.top (btex $Y'$ etex, z.YY);
endfig;


beginfig(138)
save u;
u:=1cm;

z.O=origin;
z.A=(0,-1)*u rotated 20;
z.B=(0,-1)*u rotated -80;
z.AA=(0,-1)*u rotated 180;
z.BB=(0,-1)*u rotated 65;
z.P=whatever[z.B,z.BB]=whatever[z.A,z.AA];
z.Y=altitude(z.BB,z.P,z.AA);
z.X=z.A+whatever*((z.A-z.AA) zscaled (0,1))=z.B+whatever*((z.B-z.BB) zscaled (0,1));

arcs(z.A,z.X,z.P,10);
arcs(z.A,z.B,z.P,10);
arcs(z.A,z.AA,z.BB,10);
mark_rt_angle_withsize(z.X,z.A,z.AA,6);
mark_rt_angle_withsize(z.X,z.B,z.BB,6);
markdashed_rt_angle_withsize(z.X,z.Y,z.AA,6);

draw circle(z.O,z.A-z.O);
draw circumcircle(z.A,z.B,z.P) dashed evenly;
draw circumcircle(z.A,z.AA,z.X) dashed evenly;

draw z.A--z.AA--z.BB--z.B--cycle;
draw z.A--z.X--z.B;
draw z.X--z.Y;

dOt z.A,z.B,z.AA,z.BB,z.P,z.X,z.Y;

label.lrt (btex $A$ etex, z.A);
label.ulft (btex $B$ etex, z.B);
label.top (btex $A'$ etex, z.AA);
label.lrt (btex $B'$ etex, z.BB);
whitelabel.ulft (btex $P$ etex, z.P);
label.llft (btex $X$ etex, z.X);
whitelabel.urt (btex $Y$ etex, z.Y);

endfig;



beginfig(140)
save u;
u:=1cm;


z.X=(0,-1)*u rotated 120;
z.O=-z.X;
z.L=z.X rotated -80;
z.M=z.L rotated 120;
z.N=z.L rotated -120;

mark_rt_angle_withsize(z.X,z.L,2*z.L-z.O,6);
mark_rt_angle_withsize(z.X,z.M,2*z.M-z.O,6);
mark_rt_angle_withsize(z.X,z.N,2*z.N-z.O,6);

draw z.L--z.M--z.N--cycle dashed evenly;
draw z.X--z.L;
draw z.X--z.M;
draw z.X--z.N;
draw ddline(z.O,z.L)(.3,.3);
draw ddline(z.O,z.M)(.3,.3);
draw ddline(z.O,z.N)(1,1);

rimmark(z.N--z.L, z.L--z.M, z.M--z.N);

dOt z.O,z.L,z.M,z.N,z.X;

label.bot (btex $L$ etex, z.L);
label.ulft (btex $M$ etex, z.M);
label.lft (btex $N$ etex, z.N);
label.rt (btex $X$ etex, z.X);
whitelabel.bot (btex $O$ etex, z.O);
endfig;

beginfig(142)
save u;
u:=1.4cm;

z.O=origin;
z.X=(0,-1)*u;

z.A=z.X rotated 45;
z.B=z.X rotated -30;
z.C=z.X rotated -110;
z.Y=z.X rotated 100;

draw ddarc(z.A,z.X,z.C)(0,0);
draw ddarc(z.A,z.Y,z.C)(0,0) dashed evenly;

dOt z.A,z.B,z.C,z.X,z.Y;

label.lrt (btex $A$ etex, z.A);
label.llft (btex $B$ etex, z.B);
label.ulft (btex $C$ etex, z.C);
label.bot (btex $X$ etex, z.X);
label.rt (btex $X'$ etex, z.Y);

endfig;

beginfig(144)
save u;
u:=1cm;

z.A=(0,0)*u;
z.C=(1,0)*u;
z.B=.4[z.A,z.C];
z.X=(-1.2)[z.A,z.C];
z.Y=1.8[z.A,z.C];

draw ddline(z.A,z.C)(1.5,-1) dashed evenly;
draw ddline(z.A,z.C)(-1,1.5) dashed evenly;
draw z.A--z.C;

dOt z.A,z.B,z.C;

label.bot (btex $A$ etex, z.A);
label.bot (btex $B$ etex, z.B);
label.bot (btex $C$ etex, z.C);
endfig;

beginfig(146)
save u;
u:=1cm;

z.A=(0,0)*u;
z.C=(1,0)*u;
z.B=-.4[z.A,z.C];
z.X=(-1.2)[z.A,z.C];
z.Y=1.8[z.A,z.C];

draw ddline(z.A,z.C)(1.5,-1);
draw ddline(z.A,z.C)(-1,1.5);
draw z.A--z.C dashed evenly;

dOt z.A,z.B,z.C,z.X,z.Y;

label.bot (btex $A$ etex, z.A);
label.bot (btex $B'$ etex, z.B);
label.bot (btex $C$ etex, z.C);
label.bot (btex $X$ etex, z.X);
label.bot (btex $Y$ etex, z.Y);
endfig;

beginfig(148)
save u;
u:=1cm;

z.A=(0,0)*u;
z.C=(1,0)*u;
z.B=1.6[z.A,z.C];
z.X=(-1.2)[z.A,z.C];
z.Y=1.8[z.A,z.C];

draw ddline(z.A,z.C)(1.5,-1) dashed evenly;
draw ddline(z.A,z.C)(0,1.5);

dOt z.A,z.B, z.X;

label.bot (btex $A$ etex, z.A);
label.bot (btex $B$ etex, z.B);
label.bot (btex $X$ etex, z.X);
endfig;

beginfig(150)
save u;
u:=1cm;

z.O=origin;
z.A=(0,-1)*u rotated 170;
z.B=(0,-1)*u rotated 85;
z.C=(0,-1)*u rotated 10;
z.X=z.A zscaled (1,-1.5);

draw ddarc(z.A,z.B,z.C)(0,0);
draw ddarc(z.A,-z.B,z.C)(0,0) dashed evenly;
draw ddline(z.A,z.X)(0,.2);
draw ddline(z.A,z.X)(.5,-1) dashed evenly;

dOt z.A,z.B,z.C,z.X;

label.top (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.bot (btex $C$ etex, z.C);
label.top (btex $X$ etex, z.X);
label.rt (btex $\Gamma$ etex, -z.B);
endfig;

beginfig(152)
save u;
u:=.8cm;

z.O=origin;
z.A=(0,-1)*u rotated 170;
z.B=(0,-1)*u rotated 85;
z.C=(0,-1)*u rotated -30;
z.X=z.A zscaled (1,-1.5);

drawarrow (cutcircle(circle(z.B,12), z.A,z.C));
drawarrow (cutcircle(circle(z.A,12), z.C,z.B));
drawarrow (cutcircle(circle(z.A,16), z.C,z.X));

draw ddarc(z.A,z.B,z.C)(0,0);
draw ddline(z.A,z.X)(0,.2);
draw z.A--z.B--z.C--cycle;

dOt z.A,z.B,z.C,z.X;

label.top (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.lft (btex $C$ etex, z.C);
label.top (btex $X$ etex, z.X);
endfig;

beginfig(154)
save u;
u:=1cm;

z.O1=(1,1)*u;
z.O2=(0,0)*u;
z.A=(0.1,.7)*u;
z.B1=z.A rotatedaround(z.O1,-100);
z.B2=z.A rotatedaround(z.O2,120);
z.C=z.A reflectedabout(z.O1,z.O2);
z.X1=z.A+(z.A-z.O1) zscaled (0,-1);
z.X2=z.A+(z.A-z.O2) zscaled (0,1);
z.Y1=z.C+(z.C-z.O1) zscaled (0,.8);
z.Y2=z.C+(z.C-z.O2) zscaled (0,-1.1);

dashedarcs(z.X1,z.A,z.X2,10);
dashedarcs(z.Y1,z.C,z.Y2,10);

draw ddarc(z.A,z.B1,z.C)(0,0);
draw ddarc(z.A,z.B2,z.C)(0,0);
draw ddline(z.A,z.X1)(0,.2);
draw ddline(z.A,z.X2)(0,.2);
draw ddline(z.C,z.Y1)(0,.2);
draw ddline(z.C,z.Y2)(0,.2);

dOt z.A,z.B1,z.B2,z.C,z.X1,z.X2,z.Y1,z.Y2;

label.rt (btex $A$ etex, z.A);
label.top (btex $B_1$ etex, z.B1);
label.lft (btex $B_2$ etex, z.B2);
label.lft (btex $C$ etex, z.C);
whitelabel.top (btex $X_1$ etex, z.X1);
whitelabel.rt (btex $Y_1$ etex, z.Y1);
whitelabel.lft (btex $X_2$ etex, z.X2);
whitelabel.bot (btex $Y_2$ etex, z.Y2);
endfig;

beginfig(158)
save u;
u:=1cm;

z.O=origin;
z.X=(1,0)*u;
z.T=z.X rotated 60;
z.P=altitude(z.X,z.T,z.O);
z.PP=whatever[z.O,z.X]=z.T zscaled(1, whatever);

mark_rt_angle_withsize(z.O,z.P,z.T,6);

draw circle(z.O,z.T-z.O) dashed linedot;
draw ddline(z.O,z.PP)(0,.2);
draw z.P--z.T;
draw ddline(z.T,z.PP)(.2,.2);

dOt z.O,z.P,z.T,z.PP;

label.bot (btex $P'$ etex, z.P);
label.llft (btex $P$ etex, z.PP);
label.urt (btex $T$ etex, z.T);
label.lft (btex $O$ etex, z.O);
label.urt (btex $\Omega$ etex, -z.T);
endfig;

beginfig(160)
save u;
u:=.8cm;

z.O=origin;
x.R=1.4*u;

z.A=(2,-.5)*u;
z.B=(2.2,2.4)*u;
z.AA=inversion(z.O,x.R)(z.A);
z.BB=inversion(z.O,x.R)(z.B);

draw circle(z.O,x.R) dashed linedot;
draw z.A--z.B--z.O--cycle;
draw z.AA--z.BB;

dOt z.O,z.A,z.B,z.AA,z.BB;

label.bot (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.bot (btex $A'$ etex, z.AA);
label.top (btex $B'$ etex, z.BB);
label.lft (btex $O$ etex, z.O);
endfig;

beginfig(162)
save u;
u:=.7cm;

z.O=origin;
x.R=1.4*u;

z.A=(1,1)*u;
z.Q=(3,1)*u;
z.B=z.A rotatedaround(z.Q,120);
z.C=z.A rotatedaround(z.Q,-120);

z.X=(5,-3)*u;

z.QQ= inversion(z.O,x.R)(z.Q);
z.AA= inversion(z.O,x.R)(z.A);
z.BB= inversion(z.O,x.R)(z.B);
z.CC= inversion(z.O,x.R)(z.C);

draw cutcircle(circle(z.O,x.R),z.X,z.X reflectedabout (z.O,z.Q)) dashed linedot;
draw circumcircle(z.A,z.B,z.C);
draw circumcircle(z.AA,z.BB,z.CC);

dOt z.Q,z.QQ;

label.rt (btex $Q$ etex, z.Q);
whitelabel.rt (btex $Q'$ etex, z.QQ);
label.urt (btex $\Gamma$ etex, z.C);
label.ulft (btex $\Gamma'$ etex, z.CC);
endfig;

beginfig(164)
save u;
u:=1cm;

z.A=(0,0)*u;
z.B=(1,0)*u;
z.C=2.1[z.A,z.B];
z.D=3.3[z.A,z.B];

draw ddline(z.A,z.D)(.1,.1);

dOt z.A,z.B, z.C, z.D;

label.top (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);
label.top (btex $D$ etex, z.D);
whitelabel (btex $x$ etex, .5[z.A,z.B]);
whitelabel (btex $y$ etex, .5[z.B,z.C]);
whitelabel (btex $z$ etex, .5[z.C,z.D]);

endfig;


beginfig(166)
save u;
u:=1cm;

z.A=(0,0)*u;
z.B=(1,0)*u;
z.C=2.1[z.A,z.B];
z.D=3.3[z.A,z.B];

z.O=(2,-3)*u;
x.R=2.8*u;

z.AA=inversion(z.O,x.R)(z.A);
z.BB=inversion(z.O,x.R)(z.B);
z.CC=inversion(z.O,x.R)(z.C);
z.DD=inversion(z.O,x.R)(z.D);

draw ddline(z.A,z.D)(.1,.1);
draw cutcircle(circle(z.O,x.R),1.2[z.A,z.D],(-.3)[z.A,z.D]) dashed linedot;
draw circumcircle(z.AA,z.BB,z.CC);
draw z.O--z.A dashed evenly;
draw z.O--z.B dashed evenly;
draw z.O--z.C dashed evenly;
draw z.O--z.D dashed evenly;

dOt z.A,z.B, z.C, z.D,z.AA,z.BB, z.CC, z.DD, z.O;

label.top (btex $A'$ etex, z.A);
label.top (btex $B'$ etex, z.B);
label.top (btex $C'$ etex, z.C);
label.top (btex $D'$ etex, z.D);
whitelabel.lrt (btex $A$ etex, z.AA);
whitelabel.lrt (btex $B$ etex, z.BB);
whitelabel.bot (btex $C$ etex, z.CC);
whitelabel.llft (btex $D$ etex, z.DD);
label.bot (btex $O$ etex, z.O);

endfig;

beginfig(168)
save u;
u:=.5cm;

z.a=(1,0)*u;
z.b=z.a rotated 120;
z.c=z.a rotated -120;
z.aa=-(2+sqrt(3))*z.a;
z.bb=-(2+sqrt(3))*z.b;
z.cc=-(2+sqrt(3))*z.c;

z.O=(2,1)*u;
x.R=2*u;

z.A= inversion(z.O,x.R)(z.a);
z.B= inversion(z.O,x.R)(z.b);
z.C= inversion(z.O,x.R)(z.c);
z.AA= inversion(z.O,x.R)(z.aa);
z.BB= inversion(z.O,x.R)(z.bb);
z.CC= inversion(z.O,x.R)(z.cc);

draw ddarc(z.A,z.B,z.CC)(20,20);
draw circumcircle(z.A,z.C,z.BB);
draw circumcircle(z.C,z.B,z.AA);
draw circumcircle(z.AA,z.BB,z.CC);
draw circumcircle(z.B,z.C,z.CC) dashed evenly;

dOt z.A,z.B,z.C,z.AA,z.BB,z.CC;
endfig;

beginfig(170)
save u,a,b,c;
u:=.6cm;
a:=1*u;
b:=1.2*u;
c:=1.1*u;

z.O1=(0,a);
z.O2=(2*sqrt(a*b), b);

save p; path p[];
p1=circle(z.O1,a+c);
p2=circle(z.O2,b+c);

z.O3=cross.top(p1, p2);
z.B=z.O3+(0,c);
z.A=(a/(a+b))[z.O1,z.O2];

draw circle(z.O1,a);
draw circle(z.O2,b);
draw circle(z.O3,c);
draw ddline((x.O1,0),(x.O2,0))(.4,.4);
draw (ddline((x.O1,0),(x.O2,0))(.4,.4)) shifted (0,y.B);

draw ddline(z.A,z.B)(.3,.3) dashed evenly;

dOt z.A, z.B;

label.rt (btex $A$ etex, z.A);
label.urt (btex $B$ etex, z.B);
endfig;

beginfig(172)
save u;
u:=1cm;

z.X=origin;
z.O=(-1,0)*u;
z.Q=z.O zscaled (0,-.7);
z.Y= z.X reflectedabout (z.O,z.Q);

mark_rt_angle_withsize(z.Q,z.X,2*z.X-z.O,6);
mark_rt_angle_withsize(z.Q,z.Y,2*z.Y-z.O,6);

draw circle(z.O,z.X-z.O) dashed linedot;
draw circle(z.Q,z.X-z.Q);

draw ddline(z.O,z.X)(.4,.6);
draw ddline(z.O,z.Y)(.4,.6);
draw ddline(z.Q,z.X)(.4,.6);
draw ddline(z.Q,z.Y)(.4,.6);

dOt z.X,z.Y,z.O,z.Q;

label.lrt (btex $O$ etex, z.O);
label.urt (btex $Q$ etex, z.Q);
label.lrt (btex $X$ etex, z.X);
label.top (btex $Y$ etex, z.Y+(-1,0));
label.urt (btex $\Omega$ etex, z.O+(0,-abs(z.X-z.O)) rotated -45);
label.urt (btex $\Gamma$ etex, z.Q+(0,abs(z.X-z.Q)) rotated -45);

endfig;

beginfig(174)
save u;
u:=.9cm;
z.O=origin;
x.R=2*u;

z.A=(2.2,1)*u;
z.B1=(3,-2)*u;
z.C1=(1.5,-1.8)*u;
z.B2=(2.2,1.9)*u;
z.C2=(1.3,2)*u;

z.AA= inversion(z.O,x.R)(z.A);
z.BB1= inversion(z.O,x.R)(z.B1);
z.CC1= inversion(z.O,x.R)(z.C1);
z.BB2= inversion(z.O,x.R)(z.B2);
z.CC2= inversion(z.O,x.R)(z.C2);

3[z.A,z.X1]=z.B1 rotatedaround(z.A,angle(z.A-z.C1)-angle(z.B1-z.C1));
.7[z.A,z.X2]=z.B2 rotatedaround(z.A,angle(z.A-z.C2)-angle(z.B2-z.C2));
1[z.AA,z.XX1]=z.BB1 rotatedaround(z.AA,angle(z.AA-z.CC1)-angle(z.BB1-z.CC1));
.3[z.AA,z.XX2]=z.BB2 rotatedaround(z.AA,angle(z.AA-z.CC2)-angle(z.BB2-z.CC2));

drawarrow cutcircle(circle(z.A,12), z.X1, z.X2);
drawarrow reverse(cutcircle(circle(z.AA,12), z.XX2, z.XX1));

draw ddarc(z.A,z.B1,z.C1)(0,0);
draw ddarc(z.A,z.B2,z.C2)(0,0);
draw ddarc(z.AA,z.BB1,z.CC1)(0,0);
draw ddarc(z.AA,z.BB2,z.CC2)(0,0);

draw ddline(z.A,z.X1)(0,.5);
draw ddline(z.A,z.X2)(0,.5);
draw ddline(z.AA,z.XX1)(0,.5);
draw ddline(z.AA,z.XX2)(0,.5);

draw circle(z.O,x.R) dashed linedot;

dOt z.A, z.B1, z.C1, z.B2, z.C2,  z.AA, z.BB1, z.CC1, z.BB2, z.CC2, z.X1, z.X2, z.XX1, z.XX2;

label.bot (btex $A$ etex, z.A);
label.bot (btex $B_1$ etex, z.B1);
label.llft (btex $C_1$ etex, z.C1);
label.urt (btex $B_2$ etex, z.B2);
label.ulft (btex $C_2$ etex, z.C2);

label.bot (btex $A'$ etex, z.AA);
label.rt (btex $B'_1$ etex, z.BB1);
label.lft (btex $C'_1$ etex, z.CC1);
whitelabel.urt (btex $B'_2$ etex, z.BB2);
label.lft (btex $C'_2$ etex, z.CC2);

whitelabel.rt (btex $X_1$ etex, z.X1);
label.ulft (btex $Y_1$ etex, z.XX1);
whitelabel.rt (btex $X_2$ etex, z.X2);
label.top (btex $Y_2$ etex, z.XX2);
endfig;

beginfig(176)
save u;
u:=1cm;

z.A=(0,0)*u;
z.P1=(.6,.3)*u;
z.P2=(-.5,.5)*u;
z.C1=(.2,1)*u;
z.C2=(.2,2)*u;

drawarrow cutcircle(circle(z.A,12), z.P1, z.P2);

draw ddarc(z.A,z.P1,z.C1)(0,0);
draw ddarc(z.A,z.P2,z.C2)(0,0);
draw z.P1--z.A--z.P2;

dOt z.A,z.P1,z.P2;

label.bot (btex $A$ etex, z.A);
label.lrt (btex $P_1$ etex, z.P1);
label.llft (btex $P_2$ etex, z.P2);
endfig;

beginfig(178)
save u;
u:=1cm;

z.O=origin;
x.R=2*u;

z.O1=(3,0)*u;
z.A=(3.5,1)*u;
x.R1=abs(z.A-z.O1);
z.B=z.A rotatedaround(z.O1,-40);
z.C=z.A rotatedaround(z.O1,180);
z.P=(2.2,1.8)*u;
z.Q=inversion(z.O1,x.R1)(z.P);

z.AA=inversion(z.O,x.R)(z.A);
z.BB=inversion(z.O,x.R)(z.B);
z.CC=inversion(z.O,x.R)(z.C);
z.PP=inversion(z.O,x.R)(z.P);
z.QQ=inversion(z.O,x.R)(z.Q);

z.OA=circumcenter(z.A,z.P,z.Q);
z.OB=circumcenter(z.B,z.P,z.Q);
z.OAA=circumcenter(z.AA,z.PP,z.QQ);
z.OBB=circumcenter(z.BB,z.PP,z.QQ);
z.OO1=circumcenter(z.AA,z.BB,z.CC);

draw z.A--z.A-3*unitvector(z.OA-z.A)--z.A-3*unitvector(z.OA-z.A)-3*unitvector(z.O1-z.A)--z.A-3*unitvector(z.O1-z.A)--cycle;
draw z.B--z.B-3*unitvector(z.OB-z.B)--z.B-3*unitvector(z.OB-z.B)-3*unitvector(z.O1-z.B)--z.B-3*unitvector(z.O1-z.B)--cycle;
draw z.AA--z.AA-3*unitvector(z.OAA-z.AA)--z.AA-3*unitvector(z.OAA-z.AA)-3*unitvector(z.OO1-z.AA)--z.AA-3*unitvector(z.OO1-z.AA)--cycle;
draw z.BB--z.BB-3*unitvector(z.OBB-z.BB)--z.BB-3*unitvector(z.OBB-z.BB)-3*unitvector(z.OO1-z.BB)--z.BB-3*unitvector(z.OO1-z.BB)--cycle;

draw cutcircle(circle(z.O,x.R), z.Q rotated -80,z.P rotated 30) dashed linedot;
draw circumcircle(z.A,z.B,z.C);
draw circumcircle(z.AA,z.BB,z.CC);
draw circumcircle(z.A,z.P,z.Q) dashed evenly;
draw circumcircle(z.B,z.P,z.Q) dashed evenly;
draw circumcircle(z.AA,z.PP,z.QQ) dashed evenly;
draw circumcircle(z.BB,z.PP,z.QQ) dashed evenly;

dOt z.P,z.Q,z.PP,z.QQ;

label.lft (btex $P$ etex, z.P);
label.bot (btex $Q$ etex, z.Q);
label.top (btex $P'$ etex, z.PP);
label.lrt (btex $Q'$ etex, z.QQ+(-1,1));
label.bot (btex $\Gamma$ etex, z.C);
label.bot (btex $\Gamma'$ etex, z.CC);
label.urt (btex $\Omega$ etex, (x.R,0) rotated 70);
endfig;

beginfig(180)
save u;
u:=1cm;

z.C=origin;
z.A=(1,0)*u;
z.B=z.A zscaled (0,1.8);
z.D=-z.A;

mark_rt_angle_withsize(z.A,z.C,z.B,6);
draw z.A--z.D--z.B--cycle;
draw z.C--z.B;

rimmark(z.C--z.A,z.C--z.D);
rimmark2(z.B--z.A,z.B--z.D);

dOt z.A,z.B,z.C,z.D;

label.rt (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.bot (btex $C$ etex, z.C);
label.lft (btex $D$ etex, z.D);
endfig;

beginfig(182)%copy of 86
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

beginfig(184)
save u;
u:=.7cm;

z.C=origin;
z.A=(3,0)*u;
z.B=(1.2,2)*u;
z.X=(.4,2.8)*u;
z.BB=z.B reflectedabout(z.C,z.X);
z.M=.5[z.B,z.BB];

arcs(z.B,z.C,z.X,9);
arcs(z.BB,z.C,z.X,9);
mark_rt_angle_withsize(z.B,z.M,z.X,6);

draw z.A--z.B--z.C--cycle;
draw ddline(z.C,z.X)(.2,.2);
draw z.B--z.BB--z.C;
draw z.A--z.BB;

rimmark(z.C--z.B,z.C--z.BB);
rimmark2(z.M--z.B,z.M--z.BB);

dOt z.A,z.B,z.C,z.BB,z.X;

label.rt (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.lft (btex $C$ etex, z.C);
label.lft (btex $B'$ etex, z.BB);
label.rt (btex $X$ etex, z.X);
endfig;

beginfig(186)
save u,n;
u:=1cm;
n:=4;


z.l=(.15,.02);
z.r=(.15,-.02);

z.B=origin;
z.A=(2,0)*u;
z.C=(.7,2)*u;

z.BC=((z.C-z.B) zscaled z.r) +z.B;
z.CB=((z.B-z.C) zscaled z.l) +z.C;

z.AC=((z.C-z.A) zscaled z.l) +z.A;
z.CA=((z.A-z.C) zscaled z.r) +z.C;

z.AB=((z.B-z.A) zscaled z.l) +z.A;
z.BA=((z.A-z.B) zscaled z.r) +z.B;

save a,b,c,d;
path a,b,c,d;

a=z.B--z.BC{z.BC-z.B}..{z.C-z.CB}z.CB--z.C;
b=z.A--z.AC{z.AC-z.A}..{z.C-z.CA}z.CA--z.C;
c=z.A--z.B;
d=(z.A--z.AB{z.AB-z.A}..{z.B-z.BA}z.BA--z.B) shifted (z.C-z.B);

labelarcsprof(z.B,z.A,z.AC,11, 8, btex $\alpha$ etex);
labelarcsprof2(z.A,z.B,z.BC,11, 12, btex $\beta$ etex);
labelarcsprof3(z.CA,z.C,z.CB,11, 12, btex $\gamma$ etex);
labelarcsprof1(z.AC,z.A,z.BC+z.A-z.B,3, 6, btex $\delta$ etex);

picture abc;
abc:= image(
arcs(z.B,z.A,z.AC,10);
arcs2(z.A,z.B,z.BC,10);
arcs3(z.CA,z.C,z.CB,10);
);

picture ddd;
ddd:= image(fill_angle(z.AC,z.A,z.BC+z.A-z.B,6););

picture ABC;
ABC:= image(
draw a;
draw b;
draw c;
whitelabel (btex $a$ etex, point 1.5 of a);
whitelabel (btex $b$ etex, point 1.5 of b);
whitelabel (btex $c$ etex, point .5 of c);
);

picture DDD;
DDD:= image(
draw d;
whitelabel (btex $d$ etex, point 1.5 of d);
);

for i=1 upto n: draw (abc shifted (i*(z.A-z.B)));
endfor
;

for i=0 upto n-1: draw (ddd shifted (i*(z.A-z.B)));
endfor
;

for i=0 upto n: draw (ABC shifted (i*(z.A-z.B)));
endfor
;

for i=0 upto n-1: draw (DDD shifted (i*(z.A-z.B)));
endfor
;

for i=0 upto n: 
dOt z.A + (i*(z.A-z.B));
dOt z.C + (i*(z.A-z.B));
endfor
;

dOt z.B;

label.bot (btex $A_0$ etex, z.B);

label.bot (btex $A_1$ etex, z.A);

label.bot (btex $A_2$ etex, 2*z.A);
label.bot (btex $\dots$ etex, .5(n+3)*z.A+(0,-4));
label.bot (btex $A_n$ etex, (n+1)*z.A);

label.top (btex $C_1$ etex, z.C);
label.top (btex $C_2$ etex, z.C+z.A);
label.top (btex $\dots$ etex, z.C+.5*(1+n)*z.A+(0,4));
label.top (btex $C_n$ etex, z.C+n*z.A);
endfig;

beginfig(187)
save u,n;
u:=1cm;
n:=8;

picture pic;

pic:= image(
z.l=(.15,.02);
z.r=(.15,-.02);

z.B=origin;
z.A=(2,0)*u;
z.C=(.7,2)*u;

z.BC=((z.C-z.B) zscaled z.r)+z.B;
z.CB=((z.B-z.C) zscaled z.l)+z.C;

z.AC=((z.C-z.A) zscaled z.l)+z.A;
z.CA=((z.A-z.C) zscaled z.r)+z.C;

z.AB=((z.B-z.A) zscaled z.l)+z.A;
z.BA=((z.A-z.B) zscaled z.r)+z.B;

save a,b,c,d;
path a,b,c,d;

a=z.B--z.BC{z.BC-z.B}..{z.C-z.CB}z.CB--z.C;
b=z.A--z.AC{z.AC-z.A}..{z.C-z.CA}z.CA--z.C;
c=z.A--z.B;
d=(z.A--z.AB{z.AB-z.A}..{z.B-z.BA}z.BA--z.B) shifted (z.C-z.B);

draw cutcircle(circle(z.A,11), z.AC, z.B);

draw cutcircle(circle(z.B,10),z.A, z.BC );
draw cutcircle(circle(z.B,12),z.A, z.BC );

draw cutcircle(circle(z.C,9), z.CB, z.CA);
draw cutcircle(circle(z.C,11), z.CB, z.CA);
draw cutcircle(circle(z.C,13), z.CB, z.CA);

labelarcsprof1(z.AC,z.A,z.BC+z.A-z.B,3, 6, btex  etex);

picture abc;
abc:= image(

draw cutcircle(circle(z.A,11), z.AC, z.B);

draw cutcircle(circle(z.B,10),z.A, z.BC );
draw cutcircle(circle(z.B,12),z.A, z.BC );

draw cutcircle(circle(z.C,9), z.CB, z.CA);
draw cutcircle(circle(z.C,11), z.CB, z.CA);
draw cutcircle(circle(z.C,13), z.CB, z.CA);
);

picture ddd;
ddd:= image(fill_angle(z.AC,z.A,z.BC+z.A-z.B,6););

picture ABC;
ABC:= image(
draw a pensemibold;
draw b pensemibold;
draw c pensemibold;
rimmark(a);
rimmark2(b);
rimmark3(c);
);

picture DDD;
DDD:= image(
draw d pensemibold;
rimmark10(d);
);

for i=1 upto n: draw (abc shifted (i*(z.A-z.B)));
endfor
;

for i=0 upto n-1: draw (ddd shifted (i*(z.A-z.B)));
endfor
;

for i=0 upto n: draw (ABC shifted (i*(z.A-z.B)));
endfor
;

for i=0 upto n-1: draw (DDD shifted (i*(z.A-z.B)));
endfor
;

for i=0 upto n: 
Dot z.A + (i*(z.A-z.B));
Dot z.C + (i*(z.A-z.B));
endfor
;

Dot z.B;
);

draw pic withcolor 1;

endfig;

beginfig(188)
save u;
u:=.7cm;

z.A=(0,0)*u;
z.B=(2,0)*u;
z.C=(1,2)*u;

path a,b,c,d;
a=z.A{1,1.8}..z.C;
b=z.B{-1,1.8}..z.C;
c=z.A{1,.2}..z.B;

z.D=point .5 of c;

d=z.D{.1,1}..z.C;

draw a;
draw b;
draw c;
draw d;

dOt z.A,z.B,z.C,z.D;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);
label.bot (btex $D$ etex, z.D);
endfig;

beginfig(189)%copy of 86
save u;
u:=1cm;

z.l=(.5,-.03);

z.O=origin;
z.X=(.8,.7)*u;
z.Y=(.5,-.7)*u;

draw -z.X--z.X..z.X+(z.Y-z.X) zscaled z.l..z.Y--(-z.Y)..-z.X+(-z.Y+z.X) zscaled z.l..cycle;
draw -z.X..z.Y+(-z.Y-z.X) zscaled z.l..z.Y;

rimmark2(z.O--z.X,z.O--(-z.X));
rimmark(z.O--z.Y,z.O--(-z.Y));

dOt z.X,-z.X,z.Y,-z.Y, z.O;

label.rt (btex $M$ etex, z.O+(1,0));
label.urt (btex $X$ etex, z.X);
label.llft (btex $C$ etex, -z.X);
label.lrt (btex $A$ etex, z.Y);
label.ulft (btex $B$ etex, -z.Y);
endfig;

beginfig(190)
save u;
u:=1cm;

z.A=origin;
z.O1=(0,1.5)*u rotated 60;
z.O2=z.O1 zscaled (0,-.8);

z.B=z.A reflectedabout(z.O1,z.O2);
z.P=z.A rotatedaround(z.O2,-30);
z.Q=z.A rotatedaround(z.O2,-75);

fill circle(z.O1,z.A-z.O1) withcolor .5;
draw ddarc(z.A,z.P,z.B)(0,0);
draw ddarc(z.A,2*z.O2-z.P,z.B)(0,0) dashed evenly;

draw z.A--z.A+4*unitvector(z.O1-z.A)--z.A+4*unitvector(z.O1-z.A)-4*unitvector(z.O2-z.A)--z.A-4*unitvector(z.O2-z.A)--cycle;
draw z.B--z.B+4*unitvector(z.O1-z.B)--z.B+4*unitvector(z.O1-z.B)-4*unitvector(z.O2-z.B)--z.B-4*unitvector(z.O2-z.B)--cycle;

dOt z.A,z.B,z.P,z.Q;

label.bot (btex $A$ etex, z.A+(0,-1));
label.top (btex $B$ etex, z.B+(0,1));
label.lft (btex $P$ etex, z.P);
label.lft (btex $Q$ etex, z.Q);
label.lft (btex $\Gamma$ etex, 2*z.O2-z.Q);

label.lft (btex h-plane etex, z.O1);

endfig;

beginfig(192)
save u;
u:=1cm;

z.O=origin;
z.R=(1.5,0)*u;
z.T=z.R rotated 35;
z.P=altitude(z.O,z.T,z.R);
z.PP=whatever*z.P=z.T zscaled (1,whatever);
z.Gamma=z.T rotatedaround(z.PP,-60);

fill circle(z.O,z.R) withcolor .5;

mark_rt_angle_withsize(z.O,z.P,z.T,6);
mark_rt_angle_withsize(z.O,z.T,z.PP,6);

draw circle(z.PP,z.T-z.PP);
draw ddline(z.O,z.PP)(0,.2);
draw z.O--z.T--z.PP;
draw z.T--z.P;

dOt z.O,z.P,z.T,z.PP;

label.bot (btex $P$ etex, z.P);
label.bot (btex $P'$ etex, z.PP);
label.lft (btex $O$ etex, z.O);
label.top (btex $T$ etex, z.T+(1,0));
label.urt (btex $\Gamma$ etex, z.Gamma);
endfig;

beginfig(194)
save u;
u:=1cm;

z.O=origin;
z.R=(1.5,0)*u;

fill circle(z.O,z.R) withcolor .5;

z.A=-z.R;
z.B=-z.A;
z.P=.8[z.A,z.B];

draw z.A--z.B;
dOt z.A,z.B,z.O,z.P;

label.bot (btex $P$ etex, z.P);
label.bot (btex $O$ etex, z.O);
label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
endfig;

beginfig(196)
save u;
u:=1cm;

z.O=origin;
z.R=(1.5,0)*u;
fill circle(z.O,z.R) withcolor .5;

z.Ph=(.8,0)*u;
z.Q=(.3,-.3)*u;
z.QQ=inversion(z.O,abs(z.R-z.O))(z.Q);
z.QQQ=inversion(z.Ph,abs(z.Q-z.Ph))(z.QQ);

z.P=cross(circumcircle(z.Q,z.QQ,z.QQQ), z.O--z.R);

draw circle(z.Ph,z.Q-z.Ph);
draw z.O--z.P;

dOt z.Ph,z.P,z.O,z.Q;

label.lft (btex $O$ etex, z.O);
label.bot (btex $P$ etex, z.P);
label.top (btex $\hat P$ etex, z.Ph);
label.llft (btex $Q$ etex, z.Q);
label.top (btex $\Delta_\rho'$ etex, z.Q rotatedaround(z.Ph,-120) +(0,-2));
endfig;

beginfig(198)
save u;
u:=1cm;

z.A=origin;
z.O1=(0,1.5)*u rotated 60;
z.O2=z.O1 zscaled (0,-.8);

z.B=z.A reflectedabout(z.O1,z.O2);
z.P=z.A rotatedaround(z.O2,-30);
z.Q=z.A rotatedaround(z.O2,-75);

fill circle(z.O1,z.A-z.O1) withcolor .5;
draw ddarc(z.A,z.P,z.B)(0,0);

dOt z.A,z.B,z.P,z.Q;

label.lrt (btex $A$ etex, z.A);
label.urt (btex $B$ etex, z.B);
label.lft (btex $P$ etex, z.P);
label.lft (btex $Q$ etex, z.Q);

endfig;

beginfig(200)
save u;
u:=2cm;

z.O=origin;
z.R=(1.5,0)*u;
fill arc(z.R rotated -100,z.R,z.R rotated 100)--cycle withcolor .5;

z.Ph=(.8,0)*u;
z.Q=(.4,-.3)*u;
z.QQ=inversion(z.O,abs(z.R-z.O))(z.Q);
z.QQQ=inversion(z.Ph,abs(z.Q-z.Ph))(z.QQ);

z.P=cross(circumcircle(z.Q,z.QQ,z.QQQ), z.O--z.R);
z.S=cross.lft(circle(z.Ph,z.Q-z.Ph), z.O--z.R);
z.T=cross.rt(circle(z.Ph,z.Q-z.Ph), z.O--z.R);

draw circle(z.Ph,z.Q-z.Ph);
draw z.O--z.T;

dOt z.Ph,z.P,z.O,z.Q,z.S,z.T;

label.lft (btex $P$ etex, z.O);
label.bot (btex $Q$ etex, z.P);
label.top (btex $\hat Q$ etex, z.Ph);
label.llft (btex $R$ etex, z.Q);
label.urt (btex $S$ etex, z.S);
label.rt (btex $T$ etex, z.T);
label.top (btex $\Delta$ etex, z.Q rotatedaround(z.Ph,-120) +(0,-1));
endfig;

beginfig(201)
save u;
u:=1cm;

z.o=origin;
z.A=(-1,0)*u;
z.B=(1,0)*u;
z.X=(-.3,0)*u;
z.Y=(.4,0)*u;

fill circle(z.o,z.A-z.o) withcolor .5;
draw z.A--z.B;

dOt z.A,z.B,z.X,z.Y;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.top (btex $X$ etex, z.X);
label.top (btex $Y$ etex, z.Y);

endfig;


beginfig(202)
save u;
u:=1cm;

z.O=origin;
z.R=(1.5,0)*u;
fill circle(z.O,z.R) withcolor .5;

z.A=z.R rotated 60;
z.B=z.R rotated -60;
z.AA=z.A rotated 5;
z.BB=z.B rotated -5;

path l;

l=z.A{-z.A}..{z.B}z.B;

draw l;
draw -z.AA--z.AA;
draw -z.BB--z.BB;

dOt z.O;

label.lft (btex $P$ etex, z.O);
label.rt (btex $\ell$ etex, point .5 of l);

endfig;

beginfig(204)
save u;
u:=1cm;

z.O=origin;
x.R=1.5*u;
fill circle(z.O,x.R) withcolor .5;

z.P=(.7,.8)*u;
z.Q=(-.6,.8)*u;

z.PP=inversion(z.O,x.R)(z.P);
z.QQ=inversion(z.O,x.R)(z.Q);

draw z.P--z.PP--z.QQ--z.Q--cycle;
draw z.P--z.QQ;
draw z.PP--z.Q;

dOt z.P,z.Q,z.PP,z.QQ;

label.lrt (btex $P$ etex, z.P);
label.llft (btex $Q$ etex, z.Q);
label.urt (btex $P'$ etex, z.PP);
label.ulft (btex $Q'$ etex, z.QQ);
endfig;

beginfig(206)
save u;
u:=1cm;

z.O=origin;
x.R=1.5*u;
fill circle(z.O,x.R) withcolor .5;

z.P=(-.5,0)*u;
z.A=(x.R,0) rotated 70;
z.C=(x.R,0) rotated 130;
z.PP=inversion(z.O,x.R)(z.P);
z.S=(.3,.2)*u;
z.SQ=inversion(z.O,x.R)(z.S); 

z.Ol=circumcenter(z.S,z.SQ,z.A);
z.PPP=inversion(z.Ol,abs(z.S-z.Ol))(z.P);
z.Q=cross.lft(circumcircle(z.S,z.SQ,z.A),circumcircle(z.P,z.PP,z.PPP));
z.B= z.A reflectedabout (z.O,z.Ol);

path l,m, PQ, phi;
l=ddarc(z.A,z.S,z.B)(0,0);
m=ddarc(z.A,z.P,z.PP)(0,0) cutbefore circle(z.O,x.R);
PQ=ddarc(z.Q,z.P,z.PP)(0,0) cutbefore z.P;
phi=subpath (0,1) of circle(z.P,11) cutbefore PQ cutafter m;

z.Z= point .8 of m;

z.OPQ=circumcenter(z.Q,z.P,z.PP);

draw z.Q--z.Q-4*unitvector(z.Ol-z.Q)--z.Q-4*unitvector(z.Ol-z.Q)-4*unitvector(z.OPQ-z.Q)--z.Q-4*unitvector(z.OPQ-z.Q)--cycle;

draw m;
draw l;

draw PQ;

draw ddarc(z.B,z.P,z.PP)(0,0) cutafter circle(z.O,x.R);
draw ddarc(z.C,z.P,z.PP)(0,0) cutbefore circle(z.O,x.R) dashed evenly;

draw phi;

dOt z.P,z.Q,z.Z;

label.top (btex $P$ etex, z.P+(3,1));
label.rt (btex $Q$ etex, z.Q);
label.ulft (btex $Z$ etex, z.Z);
label.urt (btex $\phi$ etex, z.P+(9,1.3));
label.rt (btex $\ell$ etex, point .7 of l);
endfig;

beginfig(208)
save u;
u:=1.4cm;

z.O=origin;
x.R=1.5*u;
path absolute;
absolute=circle(z.O,x.R);
fill absolute withcolor .5;

z.Q=(.8,0)*u;
2[z.Q,z.Z]=inversion(z.O,x.R)(z.Q);
z.X=inversion(z.O,x.R)(z.Z);
z.A= support.bot(absolute, z.Z);
z.B=z.A reflectedabout(z.O,z.Q);

draw circle(z.O,11) cutafter (z.O--z.B) cutbefore (z.O--z.Q);
draw circle(z.B,11) cutafter (z.B--z.Z) cutbefore (z.B--z.A);

draw arc(z.A,z.Q,z.B);
draw z.A--z.B--z.O--cycle;
draw z.O--z.Z;
draw z.A--z.Z--z.B;

dOt z.A,z.B,z.O,z.Q,z.X,z.Z;

label.lrt (btex $A$ etex, z.A);
label.urt (btex $B$ etex, z.B);
label.lft (btex $P$ etex, z.O);
label.llft (btex $Q$ etex, z.Q);
label.llft (btex $X$ etex, z.X);
label.rt (btex $Z$ etex, z.Z);
label.urt (btex $\phi$ etex, z.O+(12,.3));
label.lrt (btex $\phi$ etex, z.B+(.3,-12));
endfig;

beginfig(209)
save u;
u:=1.4cm;

z.O=origin;
x.R=1.5*u;
path absolute, p[];
absolute=circle(z.O,x.R);
fill absolute withcolor .5;

z.Q=(.8,0)*u;
2[z.Q,z.Z]=inversion(z.O,x.R)(z.Q);
z.X=inversion(z.O,x.R)(z.Z);
z.A= support.bot(absolute, z.Z);
z.B=z.A reflectedabout(z.O,z.Q);

p1=arc(z.A,z.Q,z.B);
draw p1;

z.x=point .4 of p1;
z.y=point 1.8 of p1;

draw z.x--z.O--z.y;
draw circle(z.O,11) rotated angle z.y cutafter (z.O--z.x);
dOt z.O,z.x,z.y;




label.lft (btex $P$ etex, z.O);
label.rt (btex $\beta$ etex, z.O+(11,0));
label.ulft (btex $X$ etex, z.x);
label.llft (btex $Y$ etex, z.y);
endfig;

beginfig(210)
save u,n;
u:=1.4cm;
n:=12;

z.I=origin;
x.r=.5*u;

z.A=(x.r,0) rotated 40;
z.B=z.A rotated 110;
z.C=z.A rotated -120;

path a,b,c;

a=circle((n+1)*z.A,n*x.r);
b=circle((n+1)*z.B,n*x.r);
c=circle((n+1)*z.C,n*x.r);

z.X=cross.rt(b,c);
z.Y=cross.lft(a,c);
z.Z=cross.bot(b,a);

draw circle(z.I,x.r);

draw arc(z.X,z.C,z.Y);
draw arc(z.Z,z.A,z.Y);
draw arc(z.Z,z.B,z.X);

draw z.I--z.X;
draw z.I--z.Y;
draw z.I--z.Z;

dOt z.I,z.X,z.Y,z.Z;

label.bot (btex $I$ etex, z.I);
label.llft (btex $X$ etex, z.X);
label.rt (btex $Y$ etex, z.Y);
label.top (btex $Z$ etex, z.Z);

endfig;

beginfig(212)
save u;
u:=1cm;

z.O=origin;
x.R=1.5*u;
path absolute;
absolute=circle(z.O,x.R);
fill absolute withcolor .5;

z.D=(-1,.5)*u;
z.DD=inversion(z.O,x.R)(z.D);

z.A=(x.R,0) rotated 110;

z.E=z.A rotated 45;

z.OD=circumcenter(z.D,z.DD,z.E);

z.B=inversion(z.OD,abs(z.OD-z.D))(z.A);

z.OAB=inversion(z.O,x.R)(.5[z.A,z.B]);
z.AB=z.A rotatedaround(z.OAB,-10);

z.P=(0,1)*u;
z.PP=inversion(z.OD,abs(z.OD-z.D))(z.P);

z.Pm=inversion(z.OAB,abs(z.A-z.OAB))(z.P);
z.Pa=inversion(z.O,x.R)(z.P);

z.Q=cross(arc(z.P,z.Pm,z.Pa),arc(z.A,z.AB,z.B));

z.QQ=inversion(z.OD,abs(z.OD-z.D))(z.Q);
z.PPm=inversion(z.OD,abs(z.OD-z.D))(z.Pm);

z.OPQ=circumcenter(z.Q,z.P,z.Pa);
z.OPPQQ=circumcenter(z.QQ,z.PP,z.PPm);

draw z.Q--z.Q-3*unitvector(z.OPQ-z.Q)--z.Q-3*unitvector(z.OPQ-z.Q)-3*unitvector(z.OAB-z.Q)--z.Q-3*unitvector(z.OAB-z.Q)--cycle;

draw z.QQ--z.QQ-3*unitvector(z.OPPQQ-z.QQ)--z.QQ-3*unitvector(z.OPPQQ-z.QQ)-3*unitvector(z.OAB-z.QQ)--z.QQ-3*unitvector(z.OAB-z.QQ)--cycle;

path PQ, PPQQ;
PQ=arc(z.P,z.Pm,z.Pa) cutbefore z.Q;
PPQQ=arc(z.QQ,z.PP,z.PPm) cutbefore z.PP;
draw PQ; 
draw PPQQ;
rimmark(PQ,PPQQ);

draw subpath (2.3,3.7) of circle(z.OD,abs(z.OD-z.D)) dashed linedot;

path m;
m=arc(z.A,z.AB,z.B);
draw m;
path g;
g=arc(z.A,z.P,z.B);
draw g;
draw arc(z.P,z.A,z.B) cutbefore z.A dashed evenly;


dOt z.A,z.B,z.P,z.PP;

label.top (btex $A$ etex, z.A);
label.bot (btex $B$ etex, z.B);
label.urt (btex $P$ etex, z.P);
label.rt (btex $P'$ etex, z.PP);
label.lft (btex $m$ etex rotated 68, (2,0)+point .3 of m);
label.rt (btex $g$ etex, (2,0)+point .3 of g);
label.llft (btex $\Gamma$ etex, 2*circumcenter(z.P,z.A,z.B)-z.P);
label.bot (btex $\Delta$ etex, point 3.3 of circle(z.OD,abs(z.OD-z.D)));
endfig;

beginfig(214)
save u;
u:=1cm;

z.O=origin;
x.R=1.5*u;
path absolute;
absolute=circle(z.O,x.R);
fill absolute withcolor .5;

z.A=(x.R,0) rotated 160;
z.OA=.4*z.A;

draw circle(z.OA,z.A-z.OA);
dOt z.A;

label.lft (btex $A$ etex, z.A);
label.top (btex $\Gamma$ etex, z.A rotatedaround(z.OA,120));
endfig;

beginfig(216)
save u;
u:=1cm;

z.O=origin;
x.R=1.5*u;
path absolute;
absolute=circle(z.O,x.R);
fill absolute withcolor .5;

z.A=z.O;
z.B=(-.2,1)*u;
z.C=(.8,.5)*u;

z.Oa=circumcenter(inversion(z.O,x.R)(z.C),z.C,z.B);
z.D=z.B rotatedaround(z.Oa, 20);

draw z.A--z.B--z.C--cycle;
draw arc(z.B,z.D,z.C);

dOt z.A,z.B,z.C,z.D;

label.bot (btex $A$ etex, z.A);
label.lft (btex $B$ etex, z.B);
label.rt (btex $C$ etex, z.C);
label.bot (btex $D$ etex, z.D);
endfig;

beginfig(218)
save u;
u:=1cm;

z.A=(0,0)*u;
z.B=(2,-3)*u;
z.C=(-.2,-3.3)*u;

path a,b,c,aa, aaa;
a=z.B{(z.C-z.B) rotated -10}..z.C;
b=z.C{(z.A-z.C) rotated -10}..z.A;
c=z.A{(z.B-z.A) rotated -10}..z.B;

z.BB = point .7 of c;
z.CC = point .3 of b;

aa= z.BB{(z.C-z.BB) rotated -8}..z.C;
aaa= z.BB{(z.CC-z.BB) rotated -4}..z.CC;

draw a;
draw b;
draw c;
draw aa;
draw aaa;

dOt z.A,z.B,z.C,z.BB,z.CC;

label.top (btex $A'$ etex, z.A);
label.rt (btex $B'$ etex, z.B);
label.lft (btex $C'$ etex, z.C);
label.urt (btex $B''$ etex, z.BB);
label.lft (btex $C''$ etex, z.CC);
endfig;

beginfig(220)
save u;
u:=1cm;

z.O=origin;
x.R=1.5*u;
path absolute;
absolute=circle(z.O,x.R);
fill absolute withcolor .5;

z.A=(x.R,0)rotated 40;
z.B=(x.R,0)rotated -40;
z.P=.5[z.A,z.B];
z.PP=inversion(z.O,x.R)(z.P);

z.Q=z.P+(0,-.3)*u;
z.QQ=inversion(z.PP,abs(z.A-z.PP))(z.Q);

draw subpath (1,3) of circle(z.PP,z.A-z.PP) dashed linedot;
draw z.O--z.PP;
draw z.QQ--z.PP dashed evenly;
draw z.P--z.Q;
draw z.O--z.QQ;

dOt z.PP,z.P,z.O,z.Q,z.QQ;

label.bot (btex $Q$ etex, z.Q);
label.bot (btex $Q'$ etex, z.QQ);
label.lft (btex $O$ etex, z.O);
label.top (btex $P$ etex, z.P);
label.rt (btex $Z$ etex, z.PP);
label.top (btex $\Gamma$ etex, point 1.2 of circle(z.PP,z.A-z.PP));
endfig;


beginfig(222)
save u,n;
u:=1.4cm;
n:=7;
z.O=origin;
x.R=1.5*u;
path absolute;
absolute=circle(z.O,x.R);

z.A=(x.R,0);
z.B=z.A rotated (360/n);


labelarcsprof(z.A,z.O, z.B,  15, 17, btex $\tfrac{2{\cdot}\pi}{n}$ etex rotated (180/n));

draw  absolute;

draw z.A--z.O--z.B;

draw
for i=1 upto n : 
(z.A rotated (i*360/n))-- 
endfor
cycle;

for i=1 upto n : 
dOt z.A rotated (i*360/n); 
endfor

dOt z.O;


label.rt (btex $A$ etex, z.A);
label.urt (btex $B$ etex, z.B);
label.lft (btex $O$ etex, z.O);
whitelabel.lft(btex $r$ etex rotated angle(z.A-z.O), .5[z.O,z.A]+(10,0));
whitelabel.lft(btex $r$ etex rotated angle(z.B-z.O), .5[z.O,z.B]+(10,0));
whitelabel.lft(btex $x_n$ etex rotated angle(z.A-z.B), .5[z.B,z.A]+(10,8));
endfig;

beginfig(224)
save u;
u:=1cm;

z.O=origin;
x.R=1.5*u;
path absolute;
absolute=circle(z.O,x.R);
fill absolute withcolor .5;

z.B=(1,0)*u;
z.A=z.B zscaled (0,1.3);
z.C=z.O;

z.AA=inversion(z.O,x.R)(z.A);
z.BB=inversion(z.O,x.R)(z.B);

mark_rt_angle_withsize(z.A,z.O,z.B,6);
draw z.AA--z.O--z.BB;

dOt z.A,z.B,z.C,z.AA,z.BB;

label.lft (btex $A$ etex, z.A);
label.bot (btex $B$ etex, z.B);
label.llft (btex $C$ etex, z.C);

label.top (btex $A'$ etex, z.AA);
label.rt (btex $B'$ etex, z.BB);
endfig;

beginfig(225)
save u;
u:=1cm;

z.O=origin;
z.V=(2,0)*u;
z.W=(.4,1.6)*u;
z.X=.6*z.V;
z.Y=.4*z.W;

draw z.V--z.V+z.W--z.W dashed evenly;
draw z.X--z.Y;
drawarrow z.O--(z.V+z.W);
drawarrow z.O--z.V;
drawarrow z.O--z.W;

dOt z.O,z.X,z.Y;%,z.V,z.V+z.W,z.W;

label.llft (btex $O$ etex, z.O);
label.bot (btex $X$ etex, z.X);
label.lft (btex $Y$ etex, z.Y);
label.urt (btex $P$ etex, z.V+z.W);
label.lrt (btex $V$ etex, z.V);
label.ulft (btex $W$ etex, z.W);
endfig;

beginfig(226)
save u, n;
u:=.7cm;
n:=7;

z.A=(5,0)*u;

for i=0 upto n-1 :
draw (-z.A rotated (360*i/n) shifted (-.8,.3)*u)--(z.A rotated (360*i/n) shifted (-.8,.3)*u);
endfor

path q;
q= (2,2)*u...(2.2,0)*u...(2,-2)*u...(0,-2.2)*u...(-2,-2)*u...(-2.2,0)*u...(-2,2)*u...(0,2.2)*u...cycle;
clip currentpicture to q;


endfig;

beginfig(228)
save u, n;
u:=.7cm;
n:=20;

path p;
p=(-5,-5)*u--(5,-4)*u;

for i=0 upto n-1 :
draw p shifted (i*(0,.5)*u);
endfor

path q;
q= (2,2)*u...(2.2,0)*u...(2,-2)*u...(0,-2.2)*u...(-2,-2)*u...(-2.2,0)*u...(-2,2)*u...(0,2.2)*u...cycle;
clip currentpicture to q;


endfig;

beginfig(230)
save u;
u:=1cm;

z.R=(10,0)*u;
z.L=(-20,0)*u;
z.B=(0,-20)*u;

z.T=(0,-1)*u;
z.t=z.T+2*u*unitvector(z.B-z.T);

z.S=z.T+.5*u*unitvector(z.R-z.T);
z.s=whatever[z.S,z.B]=whatever[z.t,z.R];

z.U=z.T-1*u*unitvector(z.R-z.T);
z.u=whatever[z.U,z.B]=whatever[z.t,z.R];

z.V=z.T+2.5*u*unitvector(z.L-z.T);
z.v=whatever[z.V,z.B]=whatever[z.t,z.L];

z.W=z.T-.3*u*unitvector(z.L-z.T);
z.w=whatever[z.W,z.B]=whatever[z.t,z.L];

z.X=.7[z.v,.1[z.V,z.T]];
z.Y=.8[z.v,.5[z.V,z.T]];
z.Z=.1[z.v,.9[z.V,z.T]];

z.XX=.7[z.u,.2[z.U,z.T]];
z.ZoZ=whatever[z.X,z.Y]=whatever[z.T,z.t];
z.YoY=whatever[z.X,z.Z]=whatever[z.T,z.t];
z.YY=.25[z.XX,z.ZoZ];
z.O=whatever[z.X,z.XX]=whatever[z.Y,z.YY];
z.ZZ=whatever[z.Z,z.O]=whatever[z.YoY,z.XX];

fill z.v--z.V--z.T--z.t--cycle withcolor .7;
fill z.s--z.S--z.T--z.t--cycle withcolor .8;

fill z.X--z.Y--z.Z--cycle withcolor .5;
draw z.X--z.XX;draw z.Y--z.YY;draw z.Z--z.ZZ;

fill z.w--z.W--z.T--z.t--cycle withcolor .7;
fill z.u--z.U--z.T--z.t--cycle withcolor .8;

fill z.XX--z.YY--z.ZZ--cycle withcolor .5;
draw z.O--z.XX;draw z.O--z.YY;draw z.O--z.ZZ;

Dot z.O;

transform U, V;

origin = origin transformed U=origin transformed V; 
unitvector(z.T-z.U)=(1.1,0) transformed U;
unitvector(z.T-z.V)=(1.2,0) transformed V;
unitvector(z.u-z.U)=(0,-1) transformed U;
unitvector(z.v-z.V)=(0,-1) transformed V;

label.lrt (btex $\Pi$ etex transformed U, z.U);
label.lrt (btex $\Pi'$ etex transformed V, z.V);
label.rt (btex $O$ etex, z.O);
endfig;

beginfig(232)
save u;
u:=.8cm;

z.O=origin;
z.P=(-1,1)*u;
z.R=(-.8,-1)*u;
z.Q=.4[z.P,z.R];

z.PP=-.85*z.P;
z.RR=1.4*z.R;
z.QQ=whatever*z.Q=whatever[z.PP,z.RR];

draw z.P--z.PP dashed evenly ;
draw z.RR--z.O dashed evenly;
draw z.Q--z.QQ dashed evenly;
draw ddline(z.P,z.R)(.3,.3);
draw ddline(z.QQ,z.RR)(.7,.1);

dOt z.O,z.P,z.Q,z.R,z.PP,z.QQ,z.RR;

label.urt (btex $O$ etex, z.O);

label.lft (btex $P$ etex, z.P);
label.bot (btex $P'$ etex, z.PP);

label.lft (btex $Q$ etex, z.Q);
label.bot (btex $Q'$ etex, z.QQ);

label.ulft (btex $R$ etex, z.R);
label.bot (btex $R'$ etex, z.RR);

label.rt (btex $\ell=\Pi\cap\Theta$ etex, (-.2)[z.P,z.R]);
label.top (btex $\ell'=\Pi'\cap\Theta$ etex rotated angle(z.QQ-z.RR), (-.35)[z.QQ,z.RR] +(0,-4));
endfig;

beginfig(234)
save u;
u:=1.2cm;

z.O=origin;

z.A=(1,.5)*u;
z.B=(.7,0)*u;
z.C=(1.2,-.4)*u;

z.AA=2.1*z.A;
z.BB=3.6*z.B;
z.CC=1.6*z.C;

z.X=whatever[z.B,z.C]=whatever[z.BB,z.CC];
z.Y=whatever[z.A,z.C]=whatever[z.AA,z.CC];
z.Z=whatever[z.B,z.A]=whatever[z.BB,z.AA];

hatchfill z.A--z.B--z.C--cycle  withcolor (20, 1.4mm, -.5bp);
hatchfill z.AA--z.BB--z.CC--cycle  withcolor (20, 1.4mm, -.5bp);

draw ddline(z.O,z.AA)(.1,.1) dashed evenly;
draw ddline(z.O,z.BB)(.1,.1) dashed evenly;
draw ddline(z.O,z.CC)(.1,.1) dashed evenly;

draw z.B--z.Z;
draw z.B--z.X;
draw z.A--z.Y;

draw z.BB--z.Z;
draw z.BB--z.X;
draw z.AA--z.Y;

draw z.Y--z.Z penbold;

Dot z.O;
dOt z.A,z.B,z.C,z.AA,z.BB,z.CC,z.X,z.Y,z.Z;
dOtc z.X,z.Y,z.Z;


label.ulft (btex $A$ etex, z.A);
whitelabel.lft (btex $B$ etex, z.B);
label.llft (btex $C$ etex, z.C);

whitelabel.urt (btex $A'$ etex, z.AA);
whitelabel.rt (btex $B'$ etex, z.BB);
whitelabel.lrt (btex $C'$ etex, z.CC);

label.top (btex $O$ etex, z.O);

label.llft (btex $X$ etex, z.X);
label.bot (btex $Y$ etex, z.Y);
label.top (btex $Z$ etex, z.Z);
endfig;

beginfig(236)
save u;
u:=1.1cm;

z.O=origin;

z.A=(1,.5)*u;
z.B=(.7,0)*u;
z.C=(1.2,-.4)*u;

z.AA=2.4*z.A;
z.BB=2.4*z.B;
z.CC=2.4*z.C;

hatchfill z.A--z.B--z.C--cycle  withcolor (20, 1.4mm, -.5bp);
hatchfill z.AA--z.BB--z.CC--cycle  withcolor (20, 1.4mm, -.5bp);

draw ddline(z.O,z.AA)(.1,.1) dashed evenly;
draw ddline(z.O,z.BB)(.1,.1) dashed evenly;
draw ddline(z.O,z.CC)(.1,.1) dashed evenly;


draw ddline(z.BB,z.AA)(.2,.2);
draw ddline(z.CC,z.BB)(.2,.2);
draw ddline(z.AA,z.CC)(.1,.1);

draw ddline(z.B,z.A)(.3,.3);
draw ddline(z.C,z.B)(.3,.3);
draw ddline(z.A,z.C)(.3,.3);

parallel_mark(z.B--z.C);parallel_mark(z.BB--z.CC);
parallel_mark2(z.C--z.A);parallel_mark2(z.CC--z.AA);

Dot z.O;
dOt z.A,z.B,z.C,z.AA,z.BB,z.CC;


label.ulft (btex $A$ etex, z.A);
whitelabel.lft (btex $B$ etex, z.B);
label.llft (btex $C$ etex, z.C);

whitelabel.rt (btex $A'$ etex, z.AA);
whitelabel.rt (btex $B'$ etex, z.BB+(0,1));
whitelabel.rt (btex $C'$ etex, z.CC);

label.top (btex $O$ etex, z.O);


endfig;

beginfig(238)
save u;
u:=1cm;

z.A=(-1,1)*u;
z.C=(1,1.2)*u;
z.B=.6[z.A,z.C];

z.AA=(-1,-1)*u;
z.CC=(1.2,-1.1)*u;
z.BB=.4[z.AA,z.CC];

z.X=whatever[z.B,z.CC]=whatever[z.BB,z.C];
z.Y=whatever[z.A,z.CC]=whatever[z.AA,z.C];
z.Z=whatever[z.B,z.AA]=whatever[z.BB,z.A];

draw ddline(z.A,z.C)(.2,.2);
draw ddline(z.AA,z.CC)(.2,.2);
draw ddline(z.X,z.Z)(.2,.2);

draw ddline(z.A,z.CC)(.2,.2);
draw ddline(z.B,z.AA)(.2,.2);
draw ddline(z.C,z.BB)(.2,.2);

draw ddline(z.A,z.BB)(.2,.2);
draw ddline(z.B,z.CC)(.2,.2);
draw ddline(z.C,z.AA)(.2,.2);

dOt z.A,z.B,z.C,z.AA,z.BB,z.CC;
Dot z.X,z.Y,z.Z;

whitelabel.top (btex $A$ etex, z.A);
whitelabel.top (btex $B$ etex, z.B);
whitelabel.top (btex $C$ etex, z.C);

whitelabel.bot (btex $A'$ etex, z.AA);
whitelabel.bot (btex $B'$ etex, z.BB);
whitelabel.bot (btex $C'$ etex, z.CC);

whitelabel.rt (btex $X$ etex, z.X);
whitelabel.top (btex $Y$ etex, z.Y+(1,0));
whitelabel.lft (btex $Z$ etex, z.Z);
endfig;


beginfig(240)
save u,k,m;
u:=1cm;
k:=1.3;
m:=1.9;

z.O=origin;
z.A=(1,.8)*u;
z.B=k*z.A;
z.C=m*z.B;

z.CC=(1.2,0)*u;
z.BB=m*z.CC;
z.AA=k*z.BB;

draw ddline(z.O,z.C)(.1,.2);
draw ddline(z.O,z.AA)(.1,.2);

draw z.A--z.BB--z.C--z.AA--z.B--z.CC--cycle;

parallel_mark(z.A--z.BB);
parallel_mark(z.B--z.AA);
parallel_mark2(z.A--z.CC);
parallel_mark2(z.C--z.AA);

dOt z.A,z.B,z.C,z.AA,z.BB,z.CC;

label.ulft (btex $A$ etex, z.A);
label.ulft (btex $B$ etex, z.B);
label.ulft (btex $C$ etex, z.C);

label.bot (btex $A'$ etex, z.AA);
label.bot (btex $B'$ etex, z.BB);
label.bot (btex $C'$ etex, z.CC);
endfig;

beginfig(242)
save u;
u:=1cm;

z.A=(0,0)*u;
z.B=(.5,.5)*u;
z.C=(0,1.3)*u;
z.D=(-.4,.3)*u;
z.E=whatever[z.A,z.B]=whatever[z.C,z.D];
z.F=whatever[z.C,z.B]=whatever[z.A,z.D];

draw ddline(z.C,z.F)(.2,.2);
draw ddline(z.C,z.E)(.2,.2);
draw ddline(z.B,z.E)(.2,.2);
draw ddline(z.D,z.F)(.2,.2);

dOt z.A,z.B,z.C,z.D,z.E,z.F;

label.bot (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.rt (btex $C$ etex, z.C);
label.lft (btex $D$ etex, z.D+(0,-1));
label.ulft (btex $E$ etex, z.E);
label.urt (btex $F$ etex, z.F);

label.urt (btex $p$ etex, 1.2[z.E,z.B]);
label.ulft (btex $q$ etex, 1.2[z.F,z.C]);
label.urt (btex $r$ etex, 1.2[z.E,z.C]);
label.ulft (btex $s$ etex, 1.2[z.F,z.D]);
endfig;

beginfig(244)
save u;
u:=1.3cm;

z.P=(0,0)*u;
z.Q=(1,-.2)*u;
z.R=(1.2,1)*u;
z.S=(.1,1.3)*u;

draw ddline(z.P,z.Q)(.3,.3);
draw ddline(z.P,z.R)(.3,.3);
draw ddline(z.P,z.S)(.3,.3);
draw ddline(z.Q,z.R)(.3,.3);
draw ddline(z.Q,z.S)(.3,.3);
draw ddline(z.R,z.S)(.3,.3);

dOt z.P,z.Q,z.R,z.S;

label.lrt (btex $P$ etex, z.P+(0,-1));
label.urt (btex $Q$ etex, z.Q);
label.ulft (btex $R$ etex, z.R+(0,1));
label.llft (btex $S$ etex, z.S);

label.top (btex $a$ etex, 1.3[z.P,z.S]);
label.lft (btex $b$ etex, (-.3)[z.P,z.Q]);
label.bot (btex $c$ etex, 1.3[z.R,z.Q]);
label.lft (btex $d$ etex, 1.3[z.R,z.S]);
label.llft (btex $e$ etex, 1.3[z.R,z.P]);
label.lrt (btex $f$ etex, 1.3[z.S,z.Q]);
endfig;

beginfig(245)
save u,v;
u:=2cm;
v:=.7cm;


z.A=(0*u,0*v);
z.B=(.4*u,1*v);
z.C=(1.3*u,.8*v);
z.D=(1.4*u,-.4*v);

z.U=whatever[z.A,z.B]=whatever[z.C,z.D];
z.V=whatever[z.A,z.C]=whatever[z.B,z.D];
z.W=whatever[z.U,z.V]=whatever[z.B,z.C];
z.X=whatever[z.A,z.W]=whatever[z.C,z.D];

draw ddline(z.A,z.U)(.2,.2);
draw ddline(z.D,z.U)(.2,.2);
draw ddline(z.B,z.C)(.4,.2);
draw ddline(z.A,z.C)(.2,.2);
draw ddline(z.B,z.D)(.1,.2);
draw ddline(z.A,z.X)(.2,.2);
draw ddline(z.U,z.V)(.3,.5);

dOt z.A,z.B,z.C,z.D,z.U,z.V,z.W,z.X;

label.bot (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.llft (btex $D$ etex, z.C+(1,-1));
label.llft (btex $C$ etex, z.D);
label.lft (btex $U$ etex, z.U);
label.bot (btex $V$ etex, z.V+(2,-2));
label.top (btex $W$ etex, z.W+(-2,0));
label.urt (btex $X$ etex, z.X+(-1,2));

label.rt (btex $k$ etex, 1.2[z.A,z.U]);
label.rt (btex $\ell$ etex, 1.2[z.B,z.D]);
label.bot (btex $m$ etex, 1.2[z.U,z.D]);
label.rt (btex $n$ etex, 1.2[z.A,z.C]);

label.lft (btex $p$ etex, 1.4[z.C,z.B]);
label.bot (btex $q$ etex, 1.5[z.U,z.V]);
label.rt (btex $r$ etex, 1.2[z.A,z.X]);
endfig;

beginfig(246)
save u;
u:=.5cm;

z.O=origin;
z.A=(0,-1)*u;
z.B=z.A rotated 120;
z.C=z.A rotated -120;

z.AA=-2*z.A;
z.BB=-2*z.B;
z.CC=-2*z.C;

draw ddline(z.A,z.AA)(.2,.2);
draw ddline(z.B,z.BB)(.2,.2);
draw ddline(z.C,z.CC)(.2,.2);
draw ddline(z.BB,z.AA)(.2,.2);
draw ddline(z.CC,z.AA)(.2,.2);
draw ddline(z.BB,z.CC)(.2,.2);
draw circle(z.O,z.A);

dOt z.A,z.B,z.C,z.AA,z.BB,z.CC,z.O;
endfig;

beginfig(246)
save u;
u:=.5cm;

z.k=(.2,.2);

z.O=origin;
z.A=(0,-2)*u;
z.B=z.A rotated 120;
z.C=z.A rotated -120;

z.AA=z.A zscaled z.k;
z.BB=z.B zscaled z.k;
z.CC=z.C zscaled z.k;

draw circumcircle(z.A,z.B,z.C);
draw ddarc(z.A,z.AA,z.O)(20,14);
draw ddarc(z.B,z.BB,z.O)(20,14);
draw ddarc(z.C,z.CC,z.O)(20,14);
draw ddarc(z.CC,z.AA,z.B)(14,14);
draw ddarc(z.AA,z.BB,z.C)(14,14);
draw ddarc(z.BB,z.CC,z.A)(14,14);

dOt z.A,z.B,z.C,z.AA,z.BB,z.CC,z.O;
endfig;

beginfig(248)
save u,a,b;
u:=1cm;
a:=35;
b:=-40;

z.O=origin;
x.R=1.5*u;

z.P=(1,0) rotated a;
z.Q=(1,0) rotated b;

z.Z=(0,x.P);
z.Y=z.Q yscaled (y.P);
z.X= z.Q rotated -90 yscaled (y.P);

z.C=x.R*z.Z;

transform TX,TY,TZ;

origin=origin transformed TX=origin transformed TY=origin transformed TZ;
z.X=(1,0) transformed TZ=(1,0) transformed TY;
z.Y=(0,1) transformed TZ=(1,0) transformed TX;
z.Z=(0,1) transformed TY=(0,1) transformed TX;





path p[];
p0= circle(z.O,x.R) rotated 1;

p1=p0 transformed TX cutafter (subpath (1,2) of p0 scaled .999);
p2=p0 transformed TX cutbefore (subpath (3,4) of p0 scaled .999);
p3=p0 transformed TY cutafter (subpath (0,1) of p0 scaled .999);
p4=p0 transformed TY cutbefore (subpath (2,3) of p0 scaled .999);
p5=p0 transformed TZ cutafter (subpath (3,4) of p0 scaled .999);
p6=p0 transformed TZ cutbefore (subpath (1,2) of p0 scaled .999);

p7=p0 yscaled .3 rotated 35 cutbefore p1 cutafter p3;

z.A=point 0 of p7;
z.B=point 2 of p7;

markdashed_rt_angle_withsize(z.X,z.O,z.Y,6);
markdashed_rt_angle_withsize(z.X,z.O,z.Z,6);
markdashed_rt_angle_withsize(z.Z,z.O,z.Y,6);


draw (6*z.X--6*z.X+6*z.Y--6*z.Y) shifted z.C cutafter p1 cutbefore p3;

draw p0;
draw p1;
draw p2;
draw p3;
draw p4;
draw p5;
draw p6;
draw p7;

draw z.O--(x.R*z.X) dashed evenly;
draw z.O--(x.R*z.Y) dashed evenly;
draw z.O--(x.R*z.Z) dashed evenly;

drawarrow ddline(z.O,x.R*z.X)(-1,.6);
drawarrow ddline(z.O,x.R*z.Y)(-1,.6);
drawarrow ddline(z.O,x.R*z.Z)(-1,.6);

dOt z.A,z.B,z.C;

label.urt (btex $A$ etex, z.A);
label.lft (btex $B$ etex, z.B);
whitelabel.ulft (btex $C$ etex, z.C);

label.bot (btex $x$ etex, 1.6*x.R*z.X);
label.bot (btex $y$ etex, 1.6*x.R*z.Y);
label.urt (btex $z$ etex, 1.6*x.R*z.Z);

endfig;

beginfig(250)
save u;
u:=1cm;

z.F1=(-1,0)*u;
z.F2=(1,0)*u;
z.A=(-1,.2)*u;

path p;
p= ellipseFFP(z.F1, z.F2, z.A);

z.B=point .1 of p;

z.AA=exbisector(z.F1, z.A, z.F2);
z.BB=exbisector(z.F1, z.B, z.F2);

z.T=whatever[z.A,z.AA]=whatever[z.B,z.BB];
z.TT=bisector(z.F1, z.T, z.F2);

draw p cutbefore z.A cutafter z.B;
draw p  cutafter z.B;
draw p cutafter z.A cutbefore z.B dashed evenly;

%draw p reflectedabout (z.T,z.TT) shifted -z.T scaled .5 shifted z.T;

draw (p cutbefore z.A cutafter z.B) reflectedabout (z.T,z.TT) shifted -z.T scaled .5 shifted z.T;
draw (p  cutafter z.B) reflectedabout (z.T,z.TT) shifted -z.T scaled .5 shifted z.T;
draw (p cutafter z.A cutbefore z.B) reflectedabout (z.T,z.TT) shifted -z.T scaled .5 shifted z.T dashed evenly ;

draw z.A--z.T--z.B;

endfig;

beginfig(252)
save u;
u:=1.6cm;

z.O=origin;
z.N=(0,1)*u;
z.S=-z.N;
z.E=z.N rotated -90;
z.P=z.N rotated -40;
z.PP=whatever[z.S,z.P]=whatever[z.O,z.E];

draw circle(z.O,z.N);
draw subpath (.3,1.7) of circle(z.S,z.E-z.S) dashed linedot;
drawarrow ddline(z.S,z.N)(.2,.3);
draw ddline(-z.E,z.E)(.2,.2);
draw ddline(z.S,z.P)(0,.3);

dOt z.S,z.N,z.P,z.PP,z.O;

label.ulft (btex $N$ etex, z.N);
label.llft (btex $O$ etex, z.O);
label.rt (btex $P$ etex, z.P+(0,1));
label.lrt (btex $P'$ etex, z.PP);
label.llft (btex $S$ etex, z.S);

label.llft (btex $\Sigma$ etex, z.N rotated 135);
label.ulft (btex $\Upsilon$ etex, z.E rotatedaround(z.S,55));
endfig;

beginfig(254)
save u;
u:=1.4cm;

z.O=origin;
z.E=(1,0)*u;
z.N=z.E rotated 90;
z.P=z.E rotated 50;
z.PP=whatever*z.P=z.N+whatever*z.E;

draw z.N-1.2*z.E--z.N+1.2*z.E;
draw z.O--z.PP;
draw -z.E--z.E dashed evenly;
draw subpath (0,2) of circle(z.O,z.E);

dOt z.P,z.PP,z.N,z.O;

label.top (btex $N$ etex, z.N);
label.bot (btex $O$ etex, z.O);
label.bot (btex $P$ etex, z.P+(0,-1));
label.top (btex $P'$ etex, z.PP);

label.lft (btex $\Sigma^+$ etex, z.N rotated 70);
label.top (btex $\Pi^+$ etex, z.N-z.E);

endfig;

beginfig(256)
save u;
u:=1.6cm;

z.O=origin;
z.N=(0,1)*u;
z.S=-z.N;
z.E=z.N rotated -90;
z.PP=z.N rotated -40;
z.Ph=altitude(z.O,z.PP,z.E);
z.P=whatever[z.S,z.PP]=whatever[z.O,z.E];

mark_rt_angle_withsize(z.E,z.Ph,z.PP,6);

draw circle(z.O,z.N);
drawarrow ddline(z.S,z.N)(.3,.3);
draw ddline(-z.E,z.E)(.3,.2);
draw z.S--z.PP--z.Ph;

dOt z.N,z.O,z.P,z.Ph,z.PP,z.S;

label.ulft (btex $N$ etex, z.N);
label.ulft (btex $O$ etex, z.O);
label.ulft (btex $P$ etex, z.P+(1,0));
label.bot (btex $\hat P$ etex, z.Ph);
label.urt (btex $P'$ etex, z.PP);
label.llft (btex $S$ etex, z.S);
label.bot (btex $\Pi$ etex, -1.3*z.E);
label.ulft (btex $\Sigma$ etex, z.N rotated 50);
endfig;

beginfig(258)
save u;
u:=1cm;

z.O=origin;
z.A=(-1,0)*u;
z.B=-z.A;
z.PP=z.A rotated -60;
z.Ph=altitude(z.A,z.PP,z.B);

mark_rt_angle_withsize(z.A,z.PP,z.B,6);
mark_rt_angle_withsize(z.PP,z.Ph,z.B,6);


draw circle(z.O,z.A);
draw z.A--z.PP--z.B--cycle;
draw z.PP--z.Ph;

dOt z.A,z.B,z.Ph,z.PP;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.top (btex $\Gamma$ etex, z.A rotated 90);
label.bot (btex $\hat P$ etex, z.Ph);
label.top (btex $P'$ etex, z.PP);
endfig;

beginfig(260)
save u;
u:=1cm;

z.O=origin;
z.R=(1,0)*u;

z.P=(.6,.5)*u;
z.Q=(abs(inversion(z.O,abs(z.R))(z.P))+sqrt(abs(inversion(z.O,abs(z.R))(z.P))**2-abs(z.R)**2))*unitvector(z.P);
z.QQ=inversion(z.O,abs(z.R))(z.Q);

z.A1=z.R rotated -20;
z.A2=z.R rotated 20;
z.A3=z.R rotated -90;

.5[z.A1,z.B1]=altitude(z.A1,z.O,z.P);
.5[z.A2,z.B2]=altitude(z.A2,z.O,z.P);
.5[z.A3,z.B3]=altitude(z.A3,z.O,z.P);

draw circle(z.O,z.R);
draw z.A1--z.B1;
draw z.A2--z.B2;
draw z.A3--z.B3;

draw circumcircle(z.A1,z.QQ,z.Q) dashed evenly;
draw circumcircle(z.A2,z.QQ,z.Q) dashed evenly;
draw ddarc(z.A3,z.QQ,z.Q)(10,20) dashed evenly;

Dot z.P;
dOt z.A1,z.A2,z.A3,z.B1,z.B2,z.B3,z.Q,z.QQ;
dOtc z.Q,z.QQ;

whitelabel.lrt (btex $A_1$ etex, z.A1);
whitelabel.rt (btex $A_2$ etex, z.A2);
whitelabel.bot (btex $A_3$ etex, z.A3);
whitelabel.top (btex $B_1$ etex, z.B1+(2,0));
whitelabel.top (btex $B_2$ etex, z.B2+(0,1));
whitelabel.urt (btex $B_3$ etex, z.B3+(0,-1));
endfig;


vardef 
klein(expr a, b)(expr c)=a+2*abs(c-a)*unitvector(c-a)/(1+(abs(c-a)/b)**2)
enddef;

beginfig(262)
save u;
u:=1cm;

z.O=origin;
x.R=1.5*u;
path absolute;
absolute=circle(z.O,x.R);
fill absolute withcolor .5;

z.shift=(5,0)*u;

fill absolute shifted z.shift withcolor .5;

path p[];

z.Q0=(-.4,.9)*u;

x.R0=.3*u;

z.Q=(.3,-.3)*u;
z.QQ=inversion(z.O,x.R)(z.Q);
z.QQQ=inversion(z.Q0,x.R0)(z.Q);

z.O0=cross(circumcircle(z.Q,z.QQ,z.QQQ), z.O--(2*z.Q0));


p0=circle(z.Q0,x.R0);
z.P01=point .2 of p0;
z.P02=point .5 of p0;
z.P03=point .8 of p0;
z.P04=point 1.2 of p0;
z.P05=point 2.2 of p0;

p12=fivepointsconic(
klein(z.O,x.R)(z.P01),
klein(z.O,x.R)(z.P02),
klein(z.O,x.R)(z.P03),
klein(z.O,x.R)(z.P04),
klein(z.O,x.R)(z.P05));

z.Q1=(.5,.5)*u;
x.R1=.25*u;


z.QQQ1=inversion(z.Q1,x.R1)(z.Q);

z.O1=cross(circumcircle(z.Q,z.QQ,z.QQQ1), z.O--(2*z.Q1));


p1=circle(z.Q1,x.R1);
z.P11=point .2 of p1;
z.P12=point .5 of p1;
z.P13=point .8 of p1;
z.P14=point 1.2 of p1;
z.P15=point 2.2 of p1;

p11=fivepointsconic(
klein(z.O,x.R)(z.P11),
klein(z.O,x.R)(z.P12),
klein(z.O,x.R)(z.P13),
klein(z.O,x.R)(z.P14),
klein(z.O,x.R)(z.P15));

z.A=(0,-x.R) rotated 30;
z.B=(0,-x.R) rotated -40;
z.OAB=z.A zscaled (1,whatever)=z.B zscaled (1,whatever);
z.AB=z.A rotatedaround(z.OAB,20);

z.C=(0,-.3*x.R);
z.CC=inversion(z.OAB,abs(z.A-z.OAB))(z.C);

p2= arc(z.A,z.AB,z.B);

p3=arc(z.A,z.C,z.B);

p4=arc(z.A,z.CC,z.B);

z.P31=point .2 of p3;
z.P32=point .5 of p3;
z.P33=point .8 of p3;
z.P34=point 1.2 of p3;
z.P35=point 2.2 of p3;

p31=fivepointsconic(
klein(z.O,x.R)(z.P31),
klein(z.O,x.R)(z.P32),
klein(z.O,x.R)(z.P33),
klein(z.O,x.R)(z.P34),
klein(z.O,x.R)(z.P35));

draw p0;
draw p1;
draw p11 shifted z.shift;
draw p12 shifted z.shift;
draw p31 shifted z.shift penhair;
draw p2;
draw p3 penhair;
draw p4 penhair;
draw (z.A--z.B) shifted z.shift;

Dot z.O1, z.O0, klein(z.O,x.R)(z.O0) shifted z.shift, klein(z.O,x.R)(z.O1) shifted z.shift;

label.bot (btex Conformal model etex, (0,-x.R)+(0,-2));
label.bot (btex Projective model etex, (0,-x.R)+z.shift+(0,-2));

endfig;

beginfig(264)
save u;
u:=1.4cm;

z.O=origin;
z.A=(0,2)*u;
z.B=z.A rotated (2*72);
z.C=z.A rotated (-72);
z.D=z.A rotated (72);
z.E=z.A rotated (-2*72);

z.R=cross(circle(.5[z.O,z.A],.5*z.A), z.C--.5[z.C,z.D]);

path absolute;
absolute=circle(z.O,abs(z.R));
fill absolute withcolor .5;

draw z.A--z.B--z.C--z.D--z.E--cycle;

.5[z.R,z.R1]=altitude(z.C,z.O,z.D);
.5[z.R,z.R2]=altitude(z.R,z.O,z.B);
.5[z.R1,z.R3]=altitude(z.R1,z.O,z.B);

draw z.R3--z.R2;
draw (z.R3--z.R2) reflectedabout(z.O,z.A);
draw (z.R3--z.R2) rotated 72;
draw (z.R3--z.R2) reflectedabout(z.O,z.A) rotated -72;

clip currentpicture to absolute;

z.P=whatever[z.A,z.B]=whatever[z.C,z.D];
z.Q=z.P reflectedabout(z.O,z.A);

dOt z.R,z.R1, z.P, z.Q;

label.ulft (btex $A$ etex, z.R1);
label.urt (btex $B$ etex, z.R);
label.lrt (btex $P$ etex, z.P+(-1,0));
label.llft (btex $Q$ etex, z.Q +(1,0));
endfig;

beginfig(266)
save u;
u:=.7cm;

z.O=origin;
x.R=1.5*u;
path absolute;
absolute=circle(z.O,x.R);
fill absolute withcolor .5;

z.A=(x.R,0) rotated 60;
z.B=(x.R,0) rotated -60;
z.Z=z.A zscaled (1,whatever)=z.B zscaled (1,whatever);
z.C=(x.R,0) rotated 20;
.5[z.C,z.D]=altitude(z.C,z.O,z.Z);

z.P=whatever[z.A,z.B]=whatever[z.C,z.D];

mark_rt_angle_withsize(z.B,z.P,z.D,6);

draw z.A--z.B;
draw z.C--z.D;
draw z.Z--z.C dashed evenly;
draw ddline(z.Z,z.A)(0,.3) dashed evenly;
draw ddline(z.Z,z.B)(0,.3) dashed evenly;

dOt z.Z;

label.top (btex $m$ etex rotated angle(z.P-z.D), .5[z.P,z.D]+(0,-2));
label.rt (btex $\ell$ etex , .5[z.P,z.B]);
label.top (btex $s$ etex , .5[z.A,z.Z]);
label.bot (btex $t$ etex , .5[z.B,z.Z]);
endfig;

beginfig(268)
save u;
u:=1cm;

z.O=origin;
x.R=1.5*u;
path absolute;
absolute=circle(z.O,x.R);
fill absolute withcolor .5;

z.X=(x.R,0) rotated 60;
z.Y=(x.R,0) rotated -60;
z.C=.5[z.X,z.Y];
z.A=z.O;
z.B=.5[z.C,z.X];

mark_rt_angle_withsize(z.A,z.C,z.B,6);

draw z.X--z.Y;
draw z.B--z.A--z.C;

dOt z.A,z.B,z.C,z.X,z.Y;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);
label.urt (btex $X$ etex, z.X);
label.lrt (btex $Y$ etex, z.Y);

label.top (btex $u$ etex rotated angle(z.B-z.A), .5[z.B,z.A]+(0,-1));
label.bot (btex $t$ etex , .5[z.A,z.C]);
label.rt (btex $s$ etex , .5[z.C,z.B]);

endfig;

beginfig(270)
save u;
u:=1.4cm;

z.O=origin;
x.RR=1.5*u;
path absolute;
absolute=circle(z.O,x.RR);
fill absolute withcolor .5;

z.P=z.O;
z.E=(x.RR,0);
z.A=z.E rotated -20;
z.C=-z.A;
z.Q=(0,y.A);
.5[z.A,z.B]=z.Q;
z.R=.6[z.Q,z.B];
z.S=(x.R,0);
z.T=whatever[z.R,z.S]=whatever[z.A,z.P];

mark_rt_angle_withsize(z.Q,z.P,z.S,6);
mark_rt_angle_withsize(z.P,z.S,z.R,6);
mark_rt_angle_withsize(z.R,z.Q,z.P,6);

draw z.A--z.C;
draw z.A--z.B;
draw z.B--z.C dashed evenly;
draw (0,-x.RR)--(0,x.RR);
draw ((0,-x.RR)--(0,x.RR)) shifted z.S;
draw -z.E--z.E;
clip currentpicture to absolute;

rimmark(z.P--z.T,z.Q--z.R);

dOt z.A,z.B,z.C,z.R,z.Q,z.P,z.S,z.T;

label.lrt (btex $A$ etex, z.A);
label.llft (btex $B$ etex, z.B);
label.ulft (btex $C$ etex, z.C);
label.urt (btex $P$ etex, z.P);
label.lrt (btex $Q$ etex, z.Q);
label.llft (btex $R$ etex, z.R);
label.llft (btex $S$ etex, z.S);
label.urt (btex $T$ etex, z.T);

label.lft (btex $m$ etex rotated 90, z.P+(0,.5*x.RR));
label.lft (btex $k$ etex rotated 90, z.S+(0,.5*x.RR));
label.bot (btex $\ell$ etex , z.Q+(.5*x.RR,0));
label.top (btex $n$ etex , z.P+(.5*x.RR,0));
endfig;

beginfig(272)
save u, a;
u:=1cm;
a:=130;

z.0=origin;
z.1=(1,0)*u;
z.i=(0,1)*u;
z.eia=z.1 rotated a;

drawarrow cutcircle(circle(z.0,10), z.1, z.eia);
label.urt (btex $\alpha$ etex, 10*unitvector(z.1) rotated (a/2));

drawarrow ddline(-z.1,z.1)(.3,.3);
drawarrow ddline(-z.i,z.i)(.3,.3);
draw z.0--z.eia;
draw circle(z.0,z.1-z.0);

dOt z.0,z.1,z.i,z.eia;

label.llft (btex $0$ etex, z.0);
label.lrt (btex $1$ etex, z.1);
label.urt (btex $i$ etex, z.i);
label.ulft (btex $e^{i\cdot\alpha}$ etex, z.eia);

endfig;

beginfig(274)
save u,m,n;
u:=1cm;
m:=2;
n:=2;

for i = 0 upto m : draw (i,-.5)*u--(i,n+.5)*u penhair dashed evenly; endfor
for j = 0 upto n : draw (-.5,j)*u--(m+.5,j)*u penhair dashed evenly; endfor

z.0=(0,0)*u;
z.1=(1,0)*u;
z.i=(0,1)*u;
z.z=(1.4,1.8)*u;

drawarrow cutcircle(circle(z.0,15), z.1, z.z);
whitelabel.urt (btex $\theta=\arg z$ etex rotated (angle(z.z)/2), (2,-3)+15*unitvector(z.1) rotated (angle(z.z)/2));

draw z.0--z.z;

dOt z.0,z.1,z.i,z.z;

label.llft (btex $0$ etex, z.0);
label.lrt (btex $1$ etex, z.1);
label.ulft (btex $i$ etex, z.i);
label.rt (btex $z$ etex, z.z);
whitelabel.ulft (btex $\rho=|z|$ etex rotated angle(z.z), .5[z.0,z.z]+(15,-11));

endfig;

beginfig(276)
save u;
u:=1.4cm;

z.O=origin;
z.P=(-.8,-.6)*u;
z.Q=(1.2,-.2)*u;
z.V= z.P zscaled(1,1);
z.W= z.Q zscaled(1,-1);
z.M=.5[z.V,z.W];

mark_rt_angle_withsize(z.O,z.P,z.V,6);
mark_rt_angle_withsize(z.O,z.Q,z.W,6);
markdashed_rt_angle_withsize(z.P,z.M,z.Q,6);

draw z.O--z.P--z.V--z.W--z.Q--cycle;
draw z.V--z.O--z.W;
draw z.P--z.M--z.Q--cycle dashed evenly;

rimmark(z.O--z.P,z.P--z.V);
rimmark2(z.O--z.Q,z.Q--z.W);
rimmark3(z.V--z.M,z.M--z.W);
rimmark10(z.P--z.M,z.M--z.Q);

dOt z.O,z.P,z.Q,z.V,z.W,z.M;

label.top (btex $O$ etex, z.O);
label.lft (btex $P$ etex, z.P);
label.rt (btex $Q$ etex, z.Q);
label.llft (btex $V$ etex, z.V);
label.lrt (btex $W$ etex, z.W);
label.bot (btex $M$ etex, z.M);
endfig;

beginfig(277)
save u;
u:=2cm;

picture pic;

pic:= image(
z.O=origin;
z.P=(-.8,-.6)*u;
z.Q=(1.2,-.2)*u;
z.V= z.P zscaled(1,1);
z.W= z.Q zscaled(1,-1);
z.M=.5[z.V,z.W];

mark_rt_angle_withsize(z.O,z.P,z.V,6) ;
mark_rt_angle_withsize(z.O,z.Q,z.W,6);
markdashed_rt_angle_withsize(z.P,z.M,z.Q,6);

draw z.O--z.P--z.V--z.W--z.Q--cycle pensemibold;
draw z.V--z.O--z.W pensemibold;
draw z.P--z.M--z.Q--cycle dashed evenly;

rimmark(z.O--z.P,z.P--z.V);
rimmark2(z.O--z.Q,z.Q--z.W);
rimmark3(z.V--z.M,z.M--z.W);
rimmark10(z.P--z.M,z.M--z.Q);
);

draw pic withcolor 1;

endfig;

beginfig(278)
save u;
u:=1cm;

z.O=origin;
z.E=(1,0)*u;
z.I=(0,1)*u;
z.A=(1,1)*u;
z.B=(2,1)*u;
z.C=(3,1)*u;

draw z.C--z.I--z.O--3*z.E--cycle;
draw z.A--z.E;
draw z.B--2*z.E;
draw z.O--z.A;
draw z.O--z.B;
draw z.O--z.C;

dOt z.O,z.E,z.A,z.B,z.C,z.I;

label.bot (btex $O$ etex, z.O);
label.bot (btex $E$ etex, z.E);
label.top (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);
label.top (btex $I$ etex, z.I);

endfig;

beginfig(280)
save u;
u:=1cm;

z.U=(-1,1)*u;
z.V= z.U rotated 100;
z.W=z.U rotated 170;
z.Z=z.U rotated -80;

z.UU=(-.5,.4)*u;
z.WW=(.6,-.5)*u;

path p[];

p0= circumcircle(z.U,z.V,z.W);
p1= circumcircle(z.U,z.UU,z.V);
p2= circumcircle(z.W,z.WW,z.V);
p3= circumcircle(z.W,z.WW,z.Z);
p4= circumcircle(z.U,z.UU,z.Z);

z.VV=cross.top(p1,p2);
z.ZZ=cross.bot(p3,p4);

p5=circumcircle(z.UU,z.VV,z.WW);

draw p0;
draw p1;
draw p2;
draw p3;
draw p4;
draw p5 dashed evenly;

clip currentpicture to (p0 scaled 1.6);

dOt z.U,z.V,z.W,z.Z,z.UU,z.VV,z.WW,z.ZZ;

whitelabel.ulft (btex $U$ etex, z.U);
whitelabel.llft (btex $V$ etex, z.V);
whitelabel.lrt (btex $W$ etex, z.W);
whitelabel.urt (btex $Z$ etex, z.Z);

whitelabel.llft (btex $U'$ etex, z.UU);
whitelabel.lft (btex $V'$ etex, z.VV);
whitelabel.urt (btex $W'$ etex, z.WW);
whitelabel.lrt (btex $Z'$ etex, z.ZZ);

endfig;

beginfig(282)
save u;
u:=1.9cm;

z.A=origin;
z.B=(1,0)*u;
z.V=(.2,.4)*u;

-z.B = z.V zscaled z1;
z.U= z.B+(z.B zscaled z1);

-z.B = z.U zscaled z2;
z.W= z.B+(z.B zscaled z2);

draw z.A--z.B--z.V--cycle;
draw z.A--z.U--z.B;
draw z.A--z.W--z.B;

draw z.U--z.V--z.W--cycle;
hatchfill z.U--z.V--z.W--cycle  withcolor (50, 1mm, -.5bp);

dOt z.A,z.B,z.V,z.U, z.W;

label.llft (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);

label.top (btex $U$ etex, z.U);
label.lft (btex $V$ etex, z.V);
label.rt (btex $W$ etex, z.W);

endfig;

beginfig(284)
save u;
u:=.8cm;

z.O=origin;
z.A=(.5,1)*u;
z.B=z.A rotated 100;
z.C=z.A rotated -120;

draw circle(z.O,z.A-z.O) dashed evenly;
draw circle(1.5*z.A,.5*z.A);
draw circle(.4*z.B,.6*z.B);
draw circle(1.3*z.C,.3*z.C);

endfig;

beginfig(286)
save u;
u:=1.4cm;

z.O=origin;
z.A=(-1,0)*u;
z.B=-z.A;
z.C=z.A rotated -60;
z.D=altitude(z.A,z.C,z.B);

mark_rt_angle_withsize(z.A,z.C,z.B,6);
mark_rt_angle_withsize(z.B,z.D,z.C,6);

draw circle(z.O,z.A);
draw z.A--z.B--z.C--cycle;
draw z.C--z.D;

dOt z.O,z.A,z.B,z.C,z.D;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.ulft (btex $C$ etex, z.C);
label.bot (btex $D$ etex, z.D);
endfig;

beginfig(288)
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

beginfig(290)
save u;
u:=1cm;

z.O=origin;
z.X=(-.3,1.4)*u;
z.Y=z.X rotated 80;
z.P=(4,.2)*u;

.5[z.X,z.XX]=altitude(z.P,z.O,z.X);
.5[z.Y,z.YY]=altitude(z.P,z.O,z.Y);

z.Z=whatever[z.X,z.Y]=whatever[z.XX,z.YY];
z.ZZ=whatever[z.X,z.YY]=whatever[z.XX,z.Y];

draw circle(z.O,z.X);
draw ddline(z.P,z.X)(.5,.5);
draw ddline(z.P,z.Y)(.5,.5);
draw ddline(z.Y,z.Z)(.5,.5);
draw ddline(z.YY,z.Z)(.2,.5);
draw ddline(z.Y,z.XX)(.2,.2);
draw ddline(z.YY,z.X)(.2,.2);
draw ddline(z.ZZ,z.Z)(2,2) dashed evenly;

path p;
p=z.P-20*unitvector(z.Y-z.P)--z.P-20*unitvector(z.X-z.P)--
2.9[z.Z,z.ZZ]
--z.Y-20*unitvector(z.Z-z.Y)--z.Y-20*unitvector(z.P-z.Y)--z.X-20*unitvector(z.P-z.X)--z.Z-20*unitvector(z.YY-z.Z)--z.Z-20*unitvector(z.Y-z.Z)--cycle;

clip currentpicture to p;

Dot z.P;
dOt z.X,z.Y,z.Z,z.XX,z.YY,z.ZZ;
dOtc z.Z,z.ZZ;

whitelabel.ulft (btex $X$ etex, z.X);
whitelabel.ulft (btex $Y$ etex, z.Y);
label.lft (btex $Z$ etex, z.Z);

whitelabel.urt (btex $X'$ etex, z.XX);
whitelabel.lrt (btex $Y'$ etex, z.YY);
whitelabel.bot (btex $Z'$ etex, z.ZZ);
label.top (btex $P$ etex, z.P);
label.urt (btex $\Gamma$ etex, z.X rotated 150);

label.top (btex $x$ etex, .4[z.P,z.XX]);
label.bot (btex $y$ etex, .5[z.P,z.YY]);
label.ulft (btex $p$ etex, (-1.2)[z.ZZ,z.Z]);
endfig;


beginfig(292)
save u;
u:=.8cm;

z.A=(0,0)*u;
z.B=(2,.5)*u;
z.C=(.7,1.8)*u;
z.X=.6[.4[z.A,z.B],z.C];

draw ddline(z.A,z.B)(.2,.2);
draw ddline(z.C,z.B)(.2,.2);
draw ddline(z.A,z.C)(.2,.2);

dOt z.A,z.B,z.C,z.X;

label.lrt (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B+(2,0));
label.lft (btex $C$ etex, z.C+(0,-2));
label.lrt (btex $X$ etex, z.X);
endfig;

beginfig(294)
save u;
u:=1cm;

path p[];
p0=(0,0)*u--(.4,.2)*u--(.1,.5)*u--cycle;
p1=(.9,.7)*u--(1.2,-.1)*u--(2,1.5)*u--cycle;
p2=(2.1,1)*u--(.8,1.8)*u--(1.1, .4)*u--cycle;

fill p0 withcolor 0;
fill p1 withcolor 0;
fill p2 withcolor 0;

draw (.2,1.3)*u--(.8,1.2)*u;
draw (1,.1)*u--(1.8,.3)*u;

draw circle((2,.6)*u,.27);
draw circle((2.2,.5)*u,.27);
draw circle((2.1,.55)*u,.27);
endfig;

beginfig(296)
save u;
u:=1cm;

z.A=origin;
z.B=(1,0)*u;
z.D=z.B rotated 60;
z.C=z.B+z.D;
z.shift=(2,0)*u;

path p[];

p0=z.A--z.B--z.C--z.D--cycle;
p1=p0 shifted z.shift;

fill p0 withcolor 0;
fill p1 withcolor 0;

draw z.B--z.D withcolor 1 dashed evenly;
draw (z.A--z.C) shifted z.shift withcolor 1 dashed evenly;
endfig;

beginfig(298)
save u;
u:=1cm;

z.A=(0,1)*u;
z.B=(2,1.2)*u;
z.C=(1,.3)*u;

z.AA=(.2,0)*u;
z.BB=(.8,2.2)*u;
z.CC=(1.8, .3)*u;

z.X=whatever[z.AA,z.BB]=whatever[z.A,z.C];
z.Y=whatever[z.AA,z.BB]=whatever[z.A,z.B];
z.Z=whatever[z.CC,z.BB]=whatever[z.A,z.B];
z.V=whatever[z.CC,z.BB]=whatever[z.C,z.B];

path p[];
p0=z.A--z.B--z.C--cycle;
p1=z.AA--z.BB--z.CC--cycle;
p2=z.C--z.X--z.Y--z.Z--z.V--cycle;

fill p0 withcolor .5;
fill p1 withcolor .5;
fill p2 withcolor 0;

draw z.C--z.Y withcolor 1 dashed evenly;
draw z.C--z.Z withcolor 1 dashed evenly;
draw p2 withcolor 1 dashed evenly;
endfig;


beginfig(300)
save u,n;
u:=2.8cm;
n:=6;

z.A=origin;
z.B=(0,1)*u;


path p[];
p0=z.A--z.B--z.B zscaled (1,-1)--z.B zscaled (0,-1)--cycle;

fill p0 withcolor .5;

for i=0 upto n:
draw (z.A--z.B) shifted ((i/n,0)*u) penbold;
endfor

label.bot (btex $A_1$ etex, z.A);
label.top (btex $B_1$ etex, z.B);
label.bot (btex $A_2$ etex, z.A shifted ((1/n,0)*u));
label.top (btex $B_2$ etex, z.B shifted ((1/n,0)*u));

label.bot (btex $A_n$ etex, z.A+z.B zscaled(0,-1));
label.top (btex $B_n$ etex, z.B zscaled(1,-1));

label.bot (btex $\dots$ etex, z.A shifted (((1+n)/(2*n),0)*u));
label.top (btex $\dots$ etex, z.B shifted (((1+n)/(2*n),0)*u));

endfig;

beginfig(302)
save u;
u:=1cm;

z1=(.1,1.4)*u;
z2=(0,.5)*u;
z3=(.5,0)*u;
z4=(2.5,.6)*u;
z5=(2.4,1.5)*u;

path p[];

p0=z1--z2--z3--z4--z5--cycle;

z.a1=.5[z5,z1];
z.a2=.3[z.a1,z3];
z.a3=.4[z.a2,z4];
z.a4=.4[z3,z4];

draw p0;
draw z.a1--z.a2--z.a3--z.a4;

label (btex $\mathcal{Q}_1$ etex, (.6,.7)*u);
label (btex $\mathcal{Q}_2$ etex, (2,1)*u);
label.bot (btex $\mathcal{R}$ etex, z.a4);
endfig;

beginfig(304)
save u,a,b,c;
u:=1.4cm;
a:=1*u;
b=2*u;
c=.8*u;

draw (0,0)--(0,a)--(b,a)--(b,0)--cycle;
draw (c,0)--(c,a);

label (btex $\mathcal{R}_{a,c}$ etex, ((b+c)/2,a/2));
label (btex $\mathcal{R}_{b,c}$ etex, (c/2,a/2));
label.bot (btex $\mathcal{R}_{a+b,c}$ etex, (b/2,0));
endfig;

beginfig(306)
save u;
u:=.7cm;

z.A=origin;
z.B=(2,0)*u;
z.C=(5,1.4)*u;
z.D=z.C-z.B;
z.AA=(0,y.C);
z.BB=z.AA+z.B;

draw z.A--z.B--z.C--z.AA--cycle;
draw z.A--z.D;
draw z.B--z.BB;

dOt z.A,z.B,z.C,z.D,z.AA,z.BB;

label.bot (btex $A$ etex, z.A);
label.bot (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);
label.top (btex $D$ etex, z.D);
label.top (btex $A'$ etex, z.AA);
label.top (btex $B'$ etex, z.BB);
endfig;

beginfig(308)
save u;
u:=1cm;

z.a=(1,.2)*u;
z.b=(.3,1)*u;
z.d=z.b+.4*z.a;
z.c=z.a-.3*z.d;

draw origin--z.a--z.a+z.b--z.b--cycle;
draw origin--z.c--z.c+z.d--z.d--cycle;

dOt origin,z.a,z.b,z.a+z.b,z.c,z.d,z.c+z.d;

label.llft (btex $A$ etex, origin);
label.lrt (btex $B'$ etex, z.a);
label.urt (btex $C'$ etex, z.a+z.b);
label.ulft (btex $D'$ etex, z.b);
label.bot (btex $B$ etex, z.c);
label.rt (btex $C$ etex, z.c+z.d);
label.top (btex $D$ etex, z.d);

endfig;

beginfig(310)
save u;
u:=1.4cm;

z.a=(1,0)*u;
z.b=(-.3,1)*u;

draw origin--z.a--z.a+z.b--z.b--cycle;
draw origin--z.a+z.b;

dOt origin,z.a,z.b,z.a+z.b;

label.llft (btex $A$ etex, origin);
label.lrt (btex $B$ etex, z.a);
label.urt (btex $C$ etex, z.a+z.b);
label.ulft (btex $D$ etex, z.b);

label.rt (btex $m$ etex rotated angle(-z.b), .5*z.b+(-2,0));
label.top (btex $n$ etex, z.b+.5*z.a);
endfig;

beginfig(312)
save u,a,b;
u:=1cm;
a:=.65*u;
b:=1*u;

z.shift=(0,-2)*u;

draw origin--(a+b,0)--(a+b,a+b)--(0,a+b)--cycle;
draw (a,0)--(a,a+b);
draw (0,a)--(a+b,a);
draw (a+b,0)--(a,a)--(0,a+b);

draw (origin--(a+b,0)--(a+b,a+b)--(0,a+b)--cycle) shifted z.shift;
draw ((a,0)--(a+b,a)--(b,a+b)--(0,b)--cycle) shifted z.shift;

label (btex $\mathcal{K}_a$ etex, .5*(a,a));
label (btex $\mathcal{K}_b$ etex, (a,a)+.5*(b,b));
label (btex $\mathcal{K}_c$ etex, .5*(a+b,a+b) shifted z.shift);

label.urt (btex $\mathcal{T}$ etex, (0,a));
label.llft (btex $\mathcal{T}$ etex, (a,a+b));
label.urt (btex $\mathcal{T}$ etex, (a,0));
label.llft (btex $\mathcal{T}$ etex, (a+b,a));

label.urt (btex $\mathcal{T}$ etex, (0,0) shifted z.shift);
label.llft (btex $\mathcal{T}$ etex, (a+b,a+b) shifted z.shift);
label.lrt (btex $\mathcal{T}$ etex, (0,a+b) shifted z.shift);
label.ulft (btex $\mathcal{T}$ etex, (a+b,0) shifted z.shift);
endfig;

beginfig(314)
save u,a,b;
u:=.8cm;
a:=1*u;
b:=60;

path p;
p=(-a,-a)--(0,-a)+(a,0) rotated b;

draw (-a,-a)--(-a,a)--(a,a)--(a,-a)--cycle;

draw p;
draw p rotated 90;
draw p rotated 180;
draw p rotated -90;
endfig;

beginfig(316)
save u;
u:=1cm;

z.A=(.5,1.8)*u;
z.B=(2,0)*u;
z.C=(0,0)*u;
z.D=bisector(z.C,z.A,z.B);
z.X=altitude(z.C,z.D,z.A);
z.Y=altitude(z.B,z.D,z.A);

arcs(z.C,z.A,z.D,9);
arcs(z.B,z.A,z.D,11);
mark_rt_angle_withsize(z.D,z.X,z.A,6);
mark_rt_angle_withsize(z.D,z.Y,z.A,6);

draw z.A--z.B--z.C--cycle;
draw z.A--z.D;
draw z.X--z.D--z.Y;

rimmark(z.D--z.X,z.D--z.Y);

dOt z.A,z.B,z.C,z.D;

label.top (btex $A$ etex, z.A);
label.lrt (btex $B$ etex, z.B);
label.llft (btex $C$ etex, z.C);
label.bot (btex $D$ etex, z.D);

endfig;

beginfig(318)
save u;
u:=1.4cm;

z.A=(.7,1.2)*u;
z.B=(0,0)*u;
z.C=(2,0)*u;
z.AA=.3[z.B,z.C];
z.X=.5[z.A,z.AA];
z.BB=whatever[z.A,z.C]=whatever[z.B,z.X];
z.CC=whatever[z.A,z.B]=whatever[z.C,z.X];

draw z.A--z.B--z.C--cycle;
draw z.A--z.AA;
draw z.B--z.BB;
draw z.C--z.CC;

dOt z.A,z.B,z.C,z.AA,z.BB,z.CC,z.X;

label.top (btex $A$ etex, z.A);
label.llft (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);

label.bot (btex $A'$ etex, z.AA);
label.urt (btex $B'$ etex, z.BB);
label.ulft (btex $C'$ etex, z.CC);

label.lrt (btex $X$ etex, z.X+(-2,-3));
endfig;

beginfig(319)
save u;
u:=.7cm;

z.O=origin;

z.A1=(-1,1)*u;
z.A4=(2,1.4)*u;
z.A2=.3[z.A1,z.A4];
z.A3=.6[z.A1,z.A4];

z.B1=-1.4*z.A1;
z.B4=-.8*z.A4;
z.B2=whatever[z.O,z.A2]=whatever[z.B1,z.B4];
z.B3=whatever[z.O,z.A3]=whatever[z.B1,z.B4];

draw ddline(z.A1,z.A4)(.2,.2);
draw ddline(z.B1,z.B4)(.2,.2);
draw z.A1--z.B1;
draw z.A2--z.B2;
draw z.A3--z.B3;
draw z.A4--z.B4;

dOt z.O,z.A1,z.A2,z.A3,z.A4,z.B1,z.B2,z.B3,z.B4;

label.rt (btex $O$ etex, z.O+(2,0));

label.top (btex $L_1$ etex, z.A1);
label.top (btex $L_2$ etex, z.A2);
label.top (btex $L_3$ etex, z.A3);
label.top (btex $L_4$ etex, z.A4);

label.bot (btex $M_1$ etex, z.B1);
label.bot (btex $M_2$ etex, z.B2);
label.bot (btex $M_3$ etex, z.B3);
label.bot (btex $M_4$ etex, z.B4);
endfig;

beginfig(320)
save u,r,a;
u:=2cm;
r:=10*u;
a=4;

z1=origin;
z.O1=(0,-r);
z12=z1 rotatedaround(z.O1,-a/2);
z2=z1 rotatedaround(z.O1,-a);
z.O2=z.O1 rotatedaround(z2,90);
z23=z2 rotatedaround(z.O2,-a);
z33=z2 rotatedaround(z.O2,-2a);

z3=(z1--(2,2)*u) intersectionpoint (z2..z23..z33);
z34=z23 reflectedabout(z1,(2,2)*u);
z4=z2 reflectedabout(z1,(2,2)*u);
z41=z12 reflectedabout(z1,(2,2)*u);

path p;
p=z1..z12..z2--z2..z23..z3--z3..z34..z4--z4..z41..z1--cycle;

fill p withcolor 0;

mark_rt_angle_withsize(z1+(1,0)*u,z1,z1+(0,1)*u,6) withcolor 1;
mark_rt_angle_withsize(z2+(dir (180-a))*u,z2,z2+(dir (90-a))*u,6) withcolor 1;
mark_rt_angle_withsize(z4+(dir (-90+a))*u,z4,z4+(dir (a))*u,6) withcolor 1;

draw p;

dOt z1,z2,z3,z4;

label.ulft (btex $A$ etex, z4);
label.llft (btex $B$ etex, z1);
label.lrt (btex $C$ etex, z2);
label.urt (btex $D$ etex, z3);

endfig;

end
