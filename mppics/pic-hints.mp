input macros
input hatching
input mparrows
input fiziko

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../lectures}
\begin{document}
{\small
etex

filenametemplate "pic-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;

%outputformat := "svg";

beginfig(322)
save u;
u:=1cm;

z.O=origin;
z.A=(-1,0)*u;
z.B=-z.A;
z.X=(-.4,2)*u;
z.Y=whatever[z.X,z.B]=(0,whatever);

mark_rt_angle_withsize(z.A,z.O,z.Y,6);

draw z.A--z.B--z.X--cycle;
draw z.A--z.Y;
draw ddline(z.O,z.Y)(.2,.7);

rimmark(z.O--z.A,z.O--z.B);
rimmark2(z.Y--z.A,z.Y--z.B);


dOt z.A,z.B,z.X,z.Y;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.top (btex $X$ etex, z.X);
label.urt (btex $Y$ etex, z.Y);
label.rt (btex $\ell$ etex, 1.5[z.O,z.Y]);
endfig;


beginfig(324)
save u;
u:=1cm;

z.A=(1,0)*u;
z.B=origin;
z.C=(-.5,1.2)*u;
z.D=z.A zscaled (0,-.7);
z.X=whatever[z.B,z.D]=whatever[z.A,z.C];

mark_rt_angle_withsize(z.A,z.B,z.D,6);

draw ddline(z.D,z.X)(.2,.2);
draw z.A--z.B--z.C--cycle;

dOt z.A,z.B,z.C,z.D,z.X;

label.rt (btex $A$ etex, z.A);
label.llft (btex $B$ etex, z.B+(0,1));
label.ulft (btex $C$ etex, z.C);
label.rt (btex $D$ etex, z.D);
label.urt (btex $X$ etex, z.X);
endfig;

beginfig(326)
save u;
u:=.5cm;

z.O=origin;
z.A=(0,-2)*u rotated 60;
z.B=z.A rotated 30;
z.C=z.A rotatedaround(z.B ,60);

draw circle(z.O,z.A);
draw circle(z.A,z.B-z.A);
draw circle(z.B,z.B-z.A);
draw ddline(z.A,z.B)(1.4,1.2) penbold;
draw ddline(z.O,z.C)(.2,.2) dashed evenly;

Dot z.O;
dOt z.A,z.B,z.C;

endfig;

beginfig(328)
save u;
u:=.5cm;

z.O=origin;
z.A=(0,2)*u rotated -70;
z.B=z.A rotated -20;
z.C=z.A rotated -40;
z.AB=z.A rotatedaround(z.B ,60);
z.BA=z.A rotatedaround(z.B ,-60);
z.BC=z.C rotatedaround(z.B ,60);
z.CB=z.C rotatedaround(z.B ,-60);

draw circle(z.O,z.A) penbold;
draw circle(z.A,z.B-z.A);
draw circle(z.B,z.B-z.A);
draw circle(z.C,z.B-z.A);
draw ddline (z.O,z.BA)(.2,.2);
draw ddline (z.O,z.BC)(.2,.2);

dOt z.A,z.B,z.C,z.AB,z.BA,z.BC,z.CB,z.O;
dOtc z.O;

endfig;

beginfig(330)
save u;
u:=.5cm;

z.O=origin;
z.A=(0,2)*u rotated -20;
z.B=.5*z.A rotated 150;
z.P=z.A zscaled(.5,-1.4);

draw circle(z.O,z.A);
draw circle(z.O,.5*z.A) penbold;
draw circle(z.B,z.B);
draw ddline(z.A,z.O)(.2,.2);
draw ddline(z.P,.5*z.A)(.2,.5) dashed evenly;

draw ddarc(z.A,z.O,z.O rotatedaround(z.P,5))(10,5);

Dot z.P;
dOt z.A,z.B,2*z.B,.5*z.A,z.O;


endfig;


beginfig(332)
save u;
u:=.4cm;

z.O1=(0,0)*u;
z.A1=(1,0)*u rotatedaround(z.O1,50);
z.O2=(-.5,-1)*u;
z.A2=(0,-2.3)*u;
z.X=(2.4,-2)*u;
z.Y=(1.7,-2.8)*u;
z.B1=z.A1+unitvector(z.A1-z.O1)*abs(z.X-z.Y);
z.B2=z.A2+unitvector(z.A2-z.O2)*abs(z.X-z.Y);
z.Z=cross.rt(circle(z.O1,z.B1-z.O1),circle(z.O2,z.B2-z.O2));

draw circle(z.O1,z.A1-z.O1) penbold;
draw circle(z.O2,z.A2-z.O2) penbold;
draw circle(z.O1,z.B1-z.O1);
draw circle(z.O2,z.B2-z.O2);
draw circle(z.Z,abs(z.X-z.Y)) dashed evenly;
draw z.X--z.Y penbold;
draw z.O1--z.B1;
draw z.O2--z.B2;

rimmark(z.X--z.Y,z.B1--z.A1,z.B2--z.A2);

Dot z.X,z.Y;
dOt z.O1,z.O2,z.A1,z.A2,z.B1,z.B2,z.Z;
endfig;

beginfig(333)
save u;
u:=1cm;

z.A=(0,0)*u;
z.B=(.8,1.6)*u;
z.C=(2,0)*u;

z.P=.6[z.A,z.B];
z.Q=.6[z.C,z.B];

parallel_mark(z.P--z.Q);
parallel_mark(z.A--z.C);

draw z.A--z.B--z.C--cycle;
draw ddline(z.P,z.Q)(.4,.4);

dOt z.A,z.B,z.C,z.P,z.Q;

label.bot (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.bot (btex $C$ etex, z.C);

label.ulft (btex $P$ etex, z.P);
label.urt (btex $Q$ etex, z.Q);
endfig;

beginfig(334)%92
save u;
u:=.6cm;

z.B=origin;
z.O=(-1,-2)*u;
z.OO=(-x.O,y.O);
z.X=altitude(z.B,z.O,z.OO);
z.A= z.O*(1+abs(z.X-z.O)/abs(z.O));
z.C=(-x.A,y.A);

mark_rt_angle_withsize(z.O,z.X,z.B,6);

draw z.A--z.B--z.C--cycle;
draw z.A--z.X;
draw circle(z.O,z.X-z.O);
draw z.O--z.X;

rimmark(z.O--z.X,z.O--z.A);

dOt z.A,z.B,z.C,z.X,z.O;

label.llft (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);
label.urt (btex $X$ etex, z.X);


endfig;

beginfig(335)
save u;
u:=2cm;

z.A=origin;
z.B=(2,0)*u;
z.M=(1.4,.5)*u;
z.N=z.M+abs(z.B-z.M)*unitvector(z.M);
z.L=z.M-abs(z.B-z.M)*unitvector(z.M);
z.P=(abs(z.M)/abs(z.N))*z.B;
z.Q=(abs(z.M)/abs(z.L))*z.B;

z.LM=whatever[z.L,z.B]=whatever[z.M,z.P];
z.MN=whatever[z.N,z.B]=whatever[z.M,z.Q];

draw ddline(z.A,z.N)(.1,.1);
draw ddline(z.A,z.Q)(.1,.1);
draw ddline(z.B,z.N)(.2,.2);
draw ddline(z.P,z.M)(.2,.2);
draw ddline(z.B,z.L)(.2,.2);
draw ddline(z.Q,z.M)(.1,.1);
draw ddarc(z.L,z.B,z.N)(20,20);

parallel_mark(z.MN--z.B);
parallel_mark(z.M--z.LM);
parallel_mark2(z.LM--z.B);
parallel_mark2(z.M--z.MN);

dOt z.A,z.B,z.M,z.L,z.N,z.P,z.Q;

whitelabel.bot (btex $A$ etex, z.A);
whitelabel.bot (btex $B$ etex, z.B);
whitelabel.bot (btex $P$ etex, z.P);
whitelabel.bot (btex $Q$ etex, z.Q);
whitelabel.top (btex $L$ etex, z.L);
whitelabel.top (btex $M$ etex, z.M);
whitelabel.top (btex $N$ etex, z.N);
endfig;

beginfig(336)
save u;
u:=1cm;

z.A=(0,0)*u;
z.B=(2,0)*u;
z.C=(1.3,2.2)*u;
z.AA=altitude(z.C,z.A,z.B);
z.BB=altitude(z.A,z.B,z.C);
z.CC=altitude(z.B,z.C,z.A);
z.H=orthocenter(z.A,z.B,z.C);

draw circumcircle(z.A,z.AA,z.B);
draw ddline(z.A,z.B)(.2,.2);
draw ddline(z.C,z.B)(.2,.2);
draw ddline(z.A,z.C)(.2,.2);
draw ddline(z.A,z.AA)(.2,.2);
draw ddline(z.B,z.BB)(.2,.2);
draw ddline(z.C,z.CC)(.2,.2) dashed evenly;

Dot z.C;
dOt z.A,z.B,z.AA,z.BB,z.H;
endfig;

beginfig(337)
save u;
u:=1.1cm;

z.A=(0,1)*u;
z.B=z.A rotated 120;
z.C=z.A rotated -120;
z.P=z.A rotated 45;

z.AA= z.A rotatedaround(z.P,-60);

draw circumcircle(z.A,z.B,z.C);
draw z.A--z.B--z.C--cycle;
draw z.P--z.A;
draw z.P--z.B;
draw z.P--z.C;
draw z.A--z.AA;

rimmark(z.A--z.B,z.B--z.C,z.C--z.A);

dOt z.A,z.B,z.C,z.P,z.AA;

label.top (btex $A$ etex, z.A);
label.llft (btex $B$ etex, z.B);
label.lrt (btex $C$ etex, z.C);
label.ulft (btex $P$ etex, z.P+(1,-1));
label.urt (btex $A'$ etex, z.AA+(-1,0));
endfig;

beginfig(338)
save u;
u:=1cm;

z.A=origin;
z.B=(2,.3)*u;
z.C=(-.3,-1)*u;
z.O=circumcenter(z.A,z.B,z.C);
z.P=z.A rotatedaround(z.O,140);
z.X=altitude(z.B,z.P,z.C);
z.Y=altitude(z.C,z.P,z.A);
z.Z=altitude(z.A,z.P,z.B);

mark_rt_angle_withsize(z.P,z.Z,z.B,6);
mark_rt_angle_withsize(z.P,z.X,z.B,6);
mark_rt_angle_withsize(z.P,z.Y,z.A,6);

%hatchfill z.A--z.B--z.C--cycle  withcolor (-50, 1mm, -.5bp);

draw circumcircle(z.A,z.B,z.C);
draw circumcircle(z.P,z.X,z.Y) dashed evenly;
draw circumcircle(z.P,z.Y,z.Z) dashed evenly;
draw circumcircle(z.P,z.Z,z.X) dashed evenly;

draw ddline(z.C,z.Y)(0,.2);
draw ddline(z.Z,z.Y)(.2,.2);
draw z.A--z.B--z.C--cycle penbold;
draw z.P--z.X;
draw z.P--z.Y;
draw z.P--z.Z;

dOt z.A,z.B,z.C,z.P,z.X,z.Y,z.Z;

label.ulft (btex $A$ etex, z.A);
label.urt (btex $B$ etex, z.B);
whitelabel.lft (btex $C$ etex, z.C);

label.bot (btex $P$ etex, z.P+(1,0));

whitelabel.ulft (btex $X$ etex, z.X);
label.lft (btex $Y$ etex, z.Y);
whitelabel.top (btex $Z$ etex, z.Z);
endfig;


beginfig(340)
save u;
u:=1cm;

z.A=(0,0)*u;
z.B=(0,-1)*u;
z.C=(2,-.3)*u;
z.X= z.C rotatedaround(z.B, -60);
z.O=circumcenter(z.B,z.C,z.X);
.5[z.Q,z.X]= altitude(z.X,z.O,z.A);

draw z.A--z.B--z.C--cycle penbold;
draw z.B--z.X--z.C;
draw ddline(z.A,z.X)(.1,.1);
draw circumcircle(z.B,z.C,z.X);

rimmark(z.B--z.C,z.B--z.X,z.C--z.X);

Dot z.A,z.B,z.C;
dOt z.X,z.Q;
dOtc z.Q;


endfig;

beginfig(342)
save u,a;
u:=.5cm;
a=30;

z.O=origin;
x.R=2*u;
z.P=(4,0)*u;
z.PP=inversion(z.O,x.R)(z.P);
z.X=x.R*unitvector(z.P);
z.Y=z.X rotated a;
z.Q=z.PP rotated a;
z.XP=altitude(z.Y,z.X,z.P);
z.PX=altitude(z.X,z.P,z.Q);

draw circle(z.O,x.R) penbold;
draw circle(z.O,z.PP);
draw ddline(z.Y,z.P)(.2,.15);
draw ddline(z.Q,z.PX)(.2,-.2);
draw ddline(z.O,z.P)(0,.1);
draw ddline(z.O,z.Y)(0,.2);

parallel_mark(z.XP--z.P);
parallel_mark(z.X--z.PX);

Dot z.P;
dOt z.X,z.Y,z.Q,z.O,z.PP;
dOtc z.PP;


endfig;

beginfig(344)
save u;
u:=.7cm;

z.QQ=origin;
z.AA=(1,1)*u;
z.BB=-z.AA;
z.XX=z.AA zscaled (0,1);
z.YY=-z.XX;

z.P=(-5,-.5)*u;
x.R=3.4*u;

z.A=inversion(z.P,x.R)(z.AA);
z.B=inversion(z.P,x.R)(z.BB);
z.Q=inversion(z.P,x.R)(z.QQ);
z.X=inversion(z.P,x.R)(z.XX);
z.Y=inversion(z.P,x.R)(z.YY);

draw ddline(z.BB,z.XX)(.5,.5);
draw ddline(z.YY,z.AA)(.5,.5);
draw circumcircle(z.AA,z.XX,z.QQ);
draw circumcircle(z.BB,z.YY,z.QQ);
draw circumcircle(z.AA,z.BB,z.XX) dashed evenly;

draw circumcircle(z.A,z.Y,z.P);
draw circumcircle(z.B,z.X,z.P);
draw circumcircle(z.A,z.X,z.Q);
draw circumcircle(z.B,z.Y,z.Q);
draw circumcircle(z.A,z.B,z.X) dashed evenly;

draw cutcircle(circle(z.P,x.R), (-.8)[z.BB,z.XX], 2[z.BB,z.XX]) dashed linedot;

parallel_mark(z.BB--z.XX);
parallel_mark(z.YY--z.AA);

dOt z.A,z.B,z.X,z.Y,z.Q,z.P,z.AA,z.BB,z.XX,z.YY,z.QQ;

label.lft (btex $A$ etex, z.A);
whitelabel.rt (btex $B$ etex, z.B);
whitelabel.urt (btex $X$ etex, z.X);
label.lft (btex $Y$ etex, z.Y);
label.bot (btex $Q$ etex, z.Q+(1,0));

whitelabel.urt (btex $A'$ etex, z.AA);
whitelabel.llft (btex $B'$ etex, z.BB);
whitelabel.ulft (btex $X'$ etex, z.XX);
whitelabel.lrt (btex $Y'$ etex, z.YY);
label.bot (btex $Q'$ etex, z.QQ);

label.lft (btex $P$ etex, z.P);
endfig;

beginfig(346)
save u,k;
u:=.8cm;
k:=3.5;

z.O=origin;
z.A=(-.5,.15)*u;
z.B=(-x.A,y.A);
z.OA=k*z.A;
z.OB=k*z.B;
y.X=y.OA-abs(z.A-z.OA);
x.X=x.OA;
y.Y=y.OA+abs(z.A-z.OA);
x.Y=x.OA;

draw circle(z.O,z.A);
draw circle(z.OA,z.A-z.OA);
draw circle(z.OB,z.A-z.OA);
draw ddline(z.X,(-x.X,y.X))(.4,.4);
draw ddline(z.Y,(-x.Y,y.Y))(.4,.4);
draw ddline(z.A,z.B)(.8,.8) dashed evenly;

parallel_mark(z.X--(-x.X,y.X));
parallel_mark(z.Y--(-x.Y,y.Y));

dOt z.A,z.B;

label.ulft (btex $A$ etex, z.A);
label.urt (btex $B'$ etex, z.B);
endfig;

beginfig(348)
save u;
u:=1cm;

z.A=(1,2)*u;
z.B=(0,0)*u;
z.C=(1.5,0)*u;
z.CC=1.4[z.B,z.C];

arcs2(z.A,z.B,z.C,10);
arcs3(z.B,z.C,z.A,10);
arcs3(z.B,z.CC,z.A,10);

draw ddline(z.B,z.CC)(0,.2);
draw z.C--z.A--z.B;
draw z.CC--z.A dashed evenly;

dOt,z.A,z.B,z.C,z.CC;

label.top (btex $A'$ etex, z.A);
label.llft (btex $B'$ etex, z.B);
label.bot (btex $C'$ etex, z.C);
label.bot (btex $C''$ etex, z.CC+(2,0));
endfig;

beginfig(349)
save u,n;
u:=1cm;
n:=4;


z.l=(.5,.15);

z.A=origin;
z.B=(1,0)*u;
z.C=z.B zscaled(1,1.5);
z.D=z.B zscaled(0,1.2);

z.CD=((z.D-z.C) zscaled z.l) +z.C;

save a,b,c,d;
path a,b,c,d;

a=z.A--z.B;
b=z.B--z.C;
c=z.C..z.CD..z.D;
d=z.D--z.A;

picture abcd;
abcd:= image(
draw a;
draw b;
draw c;
draw d reflectedabout(z.B,z.C);
draw a reflectedabout(z.B,z.C);
draw c reflectedabout(z.B,z.C);
dOt z.A,z.B,z.C,z.D;
whitelabel (btex $a$ etex, .5[z.A,z.B]);
whitelabel (btex $a$ etex, .5[z.A,z.B] reflectedabout(z.B,z.C));
whitelabel (btex $c$ etex, point 1 of c);
whitelabel (btex $c$ etex, (point 1 of c) reflectedabout(z.B,z.C));
whitelabel (btex $b$ etex rotated 90, .5[z.D,z.A]+(6,0)+z.B);
whitelabel (btex $d$ etex rotated 90, .5[z.D,z.A]+(6,0));

);

draw d;

for i=0 upto n: draw (abcd shifted (2*i*(z.B-z.A)));
endfor
;

dOt z.A shifted (2*(n+1)*(z.B-z.A)),z.D shifted (2*(n+1)*(z.B-z.A));

whitelabel(btex $d$ etex rotated 90, .5[z.D,z.A]+(6,0)+(2*(n+1)*(z.B-z.A)));

label.bot (btex $A$ etex, z.A);
label.bot (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);
label.top (btex $D$ etex, z.D);

mark_rt_angle_withsize(z.A,z.B,z.C,6);
mark_rt_angle_withsize(z.D,z.A,z.B,6);
endfig;


beginfig(350)
save u;
u:=1cm;

z.O=origin;
x.RR=1.5*u;
path absolute;
absolute=circle(z.O,x.RR);
fill absolute withcolor .5;

z.A=(.9,.9)*u;
z.AAA=(.8,1)*u;
z.AA=inversion(z.O,x.RR)(z.A);

z.B=(-.9,.8)*u;
z.BBB=(-.8,1)*u;
z.BB=inversion(z.O,x.RR)(z.B);

z.C=(0,-.2)*u;
z.CCC=(-.5,-.2)*u;
z.CC=inversion(z.O,x.RR)(z.C);

draw circumcircle(z.A,z.AA,z.AAA);
draw circumcircle(z.B,z.BB,z.BBB);
draw circumcircle(z.C,z.CC,z.CCC);

clip currentpicture to absolute;

endfig;

beginfig(351)
save u;
u:=1.4cm;

z.O=origin;
x.RR=1.5*u;
path absolute;
absolute=circle(z.O,x.RR);
fill absolute withcolor .5;

z.A=(.9,.9)*u;
z.AAA=(.8,1)*u;
z.AA=inversion(z.O,x.RR)(z.A);

z.B=(-.9,.8)*u;
z.BBB=(-.8,1)*u;
z.BB=inversion(z.O,x.RR)(z.B);

z.C=(0,-.2)*u;
z.CCC=(-.5,-.2)*u;
z.CC=inversion(z.O,x.RR)(z.C);

draw circumcircle(z.A,z.AA,z.AAA) pensemibold;
draw circumcircle(z.B,z.BB,z.BBB) pensemibold;
draw circumcircle(z.C,z.CC,z.CCC) pensemibold;

clip currentpicture to absolute;
draw absolute dashed evenly;

endfig;

beginfig(352)
u:=1.2cm;

z.O=origin;
x.RR=1.5*u;
path absolute;
absolute=circle(z.O,x.RR);
fill absolute withcolor .5;

z.Q=z.O;
z.B=(x.RR,0);
z.A=-z.B;
z.P=z.B/sqrt(2);
z.R=z.P zscaled (0,1);

mark_rt_angle_withsize(z.P,z.Q,z.R,6);

draw circumcircle(z.P,z.Q,z.R);
draw z.A--z.B;
draw arc(z.R,z.P,inversion(z.O,x.RR)(z.P)) cutafter (z.Q--z.B);
draw z.Q--z.R;

rimmark(z.Q--z.P,z.Q--z.R);

clip currentpicture to absolute;

dOt z.A,z.B,z.P,z.Q,z.R;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);

label.lrt (btex $P$ etex, z.P+(-2,0));
label.llft (btex $Q$ etex, z.Q);
label.ulft (btex $R$ etex, z.R);
endfig;


beginfig(353)
save u;
u:=1.4cm;

z.P=(0,0)*u;
z.Q=(1,0)*u;
z.X=(.7,.9)*u;

z.XP=.3[z.X,z.P];
z.XQ=.5[z.X,z.Q];
z.Z=(-1)[z.XP,z.XQ];

draw ddline(z.P,z.Q)(.2,.2);
draw ddline(z.X,z.P)(.2,.2);
draw ddline(z.X,z.Q)(.2,.2);
draw ddline(z.Z,z.XQ)(.2,.2);

dOt z.P,z.Q,z.X,z.Z,z.XP,z.XQ;

label.lrt (btex $A$ etex, z.P);
label.llft (btex $B$ etex, z.Q);
label.rt (btex $X$ etex, z.X);
label.urt (btex $Z$ etex, z.Z);
endfig;

beginfig(354)
u:=1cm;

z.M=origin;
z.A=(-1,-.2)*u;
z.B=-z.A;
z.X=(.3,.7)*u;
z.Y=-z.X;

draw z.A--z.B penbold;

draw ddline(z.A,z.X)(.2,.2);
draw ddline(z.A,z.Y)(.2,.2);
draw ddline(z.B,z.X)(.2,.2);
draw ddline(z.B,z.Y)(.2,.2);
draw ddline(z.X,z.Y)(.2,.2);

parallel_mark(z.A--z.X);
parallel_mark(z.Y--z.B);
parallel_mark2(z.A--z.Y);
parallel_mark2(z.X--z.B);

Dot z.A,z.B;
dOt z.X,z.Y,z.M;
dOtc z.M;

whitelabel.lft (btex $A$ etex, z.A);
whitelabel.rt (btex $B$ etex, z.B);
endfig;

beginfig(356)
save u;
u:=1.4cm;

z.A=(0,0)*u;
z.B=(2,0)*u;
z.P=(.6,2)*u;
z.RR=.7[z.P,z.A];
z.Q=.2[z.RR,z.B];
z.PP=(-.6)[z.Q,z.A];
z.R=.4[z.PP,z.B];
z.QQ=whatever[z.R,z.A]=whatever[z.P,z.B];
z.M=whatever[z.P,z.PP]=whatever[z.Q,z.QQ];

draw z.P--z.RR--z.Q--z.PP--z.R--z.QQ--cycle penbold;
draw z.Q--z.QQ;
draw z.R--z.RR;
draw z.P--z.M;
draw z.A--z.RR dashed evenly;
draw z.A--z.Q dashed evenly;
draw z.A--z.QQ dashed evenly;
draw z.B--z.R dashed evenly;
draw z.B--z.QQ dashed evenly;
draw z.B--z.Q dashed evenly;

dOt z.A,z.B,z.P,z.Q,z.R,z.PP,z.QQ,z.RR,z.M;
dOtc z.A,z.B;
Dot z.M;

label.top (btex $P$ etex, z.P);
whitelabel.bot (btex $Q$ etex, z.Q);
whitelabel.bot (btex $R$ etex, z.R);
label.urt (btex $P'$ etex, z.PP);
label.rt (btex $Q'$ etex, z.QQ);
label.lft (btex $R'$ etex, z.RR);

endfig;

beginfig(358)
u:=1.4cm;

z.O=origin;
x.R=1.4*u;
z.A=(x.R,0) rotated 120;
z.B=z.A rotated -60;
z.X=z.A rotated -120;

z.BB=whatever[z.O,z.B rotated 90]=z.X/sqrt(2)+whatever*(z.X rotated 90);
z.AA=z.BB rotated -120;
z.XX=z.BB rotated 120;

draw circle(z.O,x.R);

path p[],q[];
p0=subpath (2,4) of ellipse_canonical(x.R, x.R/sqrt(3));
p1=subpath (0,.5) of p0;
p2=subpath (.5,1) of p0;
p3=subpath (1,1.5) of p0;
p4=subpath (1.5,2) of p0;

z.Q=(point 1 of p0) rotated 120;
x.ratio=y.Q/sqrt(x.R**2-x.Q**2);

q0=subpath (0,2) of ellipse_canonical(x.R, x.R*x.ratio);
q1=subpath (0,2/3) of q0;
q2=subpath (2/3,4/3) of q0;
q3=subpath (4/3,2) of q0;
q4= subpath (0,2/3) of circle(z.O,x.R);

draw p0;
draw p0 rotated 120;
draw p0 rotated -120;
draw q0;
draw q0 rotated 120;
draw q0 rotated -120;

rimmark(p1,p2,p3,p4);
rimmark(p1 rotated 120,p2 rotated 120,p3 rotated 120,p4 rotated 120);
rimmark(p1 rotated -120,p2 rotated -120,p3 rotated -120,p4 rotated -120);

rimmark2(q1,q2,q3);
rimmark2(q1 rotated 120,q2 rotated 120,q3 rotated 120);
rimmark2(q1 rotated -120,q2 rotated -120,q3 rotated -120);
rimmark2(q4 rotated 0,q4 rotated 60,q4 rotated 120,q4 rotated 180,q4 rotated -120,q4 rotated -60);

dOt z.A,z.B,z.X,-z.A,-z.B,-z.X,z.AA,z.BB,z.XX,z.Q,z.Q rotated 120,z.Q rotated -120;

label.ulft (btex $A$ etex, z.A);
label.urt (btex $B$ etex, z.B);
label.bot (btex $C$ etex, z.XX);
endfig;

beginfig(360)
save u,k;
u:=1.2cm;
k:=.7;

z.O=origin;
x.RR=1.5*u;
path absolute;
absolute=circle(z.O,x.RR);
fill absolute withcolor .5;


z.A=(k*x.RR,0) rotated 80;
z.B=z.A rotated 80;
z.C=z.A rotated 150;

z.AA=.5[z.B,z.C];
z.BB=.5[z.C,z.A];
z.CC=.5[z.A,z.B];

draw z.A--z.B--z.C--cycle;
draw z.A--z.AA;
draw z.B--z.BB;
draw z.C--z.CC;
draw circle(z.O,k*x.RR);

rimmark(z.AA--z.B,z.AA--z.C);
rimmark2(z.BB--z.A,z.BB--z.C);
rimmark3(z.CC--z.B,z.CC--z.A);

dOt z.A,z.B,z.C,z.AA,z.BB,z.CC;

endfig;

beginfig(362)
save u,k;
u:=1.2cm;
k:=.7;

z.O=origin;
x.RR=1.5*u;
path absolute;
absolute=circle(z.O,x.RR);
fill absolute withcolor .5;

z.A=(-x.RR,0);
z.B=-z.A;
z.C=z.B rotated 60;
z.D=z.C reflectedabout(z.A,z.B);
z.P=z.O;
z.Q=altitude(z.A,z.C,z.B);

mark_rt_angle_withsize(z.C,z.Q,z.B,6);
draw cutcircle(circle(z.O,10), z.B, z.C);
draw z.P--z.C--z.D--cycle;
draw z.A--z.B;

dOt z.P,z.Q;

label.llft (btex $P$ etex, z.P);
label.lrt (btex $Q$ etex, z.Q);
label.urt (btex $\phi$ etex, z.P+(10,1));
endfig;

beginfig(364)
save u,k;
u:=.7cm;
k:=1.3;

z.I=origin;
z.T=(0,-1)*u;
z.O=z.T zscaled (1,-1.8);
z.TT= z.T reflectedabout (z.O,z.I);
z.X=z.T rotated 60;
z.P=k[z.O,z.X];
z.II=k[z.O,z.I];

draw ddline(z.O,z.T)(0,.8);
draw ddline(z.O,z.TT)(0,.8);
draw ddline(z.O,z.P)(0,.1);
draw ddline(z.O,z.II)(0,.2);
draw circle(z.I,z.T);
draw circle(z.II,z.P-z.II) dashed evenly;

dOt z.O,z.X,z.P,z.I,z.II;
dOtc z.II;


label.top (btex $I$ etex, z.I);
whitelabel.top (btex $I'$ etex, z.II);
label.lft (btex $O$ etex, z.O);
whitelabel.top (btex $X$ etex, z.X);
whitelabel.top (btex $P$ etex, z.P);

endfig;

beginfig(366)
save u;
u:=1.4cm;

z.O=origin;
z.B=(0,1)*u;
z.A=z.B rotated 72;
z.C=z.B rotated -72;
z.D=z.B rotated -144;
z.E=z.B rotated 144;
z.X=whatever[z.A,z.C]=whatever[z.B,z.E];

arcs(z.C,z.A,z.B,10);
arcs(z.A,z.C,z.B,10);
arcs(z.A,z.B,z.X,10);
arcs2(z.C,z.X,z.B,10);
arcs2(z.C,z.B,z.X,10);

draw circle(z.O,z.B);
draw z.A--z.B--z.C--z.D--z.E--cycle;
draw z.A--z.C;
draw z.B--z.E;

rimmark(z.A--z.B,z.B--z.C,z.C--z.D,z.D--z.E,z.E--z.A);

dOt z.A,z.B,z.C,z.D,z.E,z.X;

label.lft (btex $A$ etex, z.A);
label.top (btex $B$ etex, z.B);
label.rt (btex $C$ etex, z.C);
label.lrt (btex $X$ etex, z.X);
endfig;

beginfig(368)
save u, a;
u:=1cm;
a:=140;

z.O=origin;
z.A=(0,1)*u;
z.B=z.A rotated a;
z.C=z.A rotated -a;
z.AA=.5[z.B,z.C];

mark_rt_angle_withsize(z.A,z.AA,z.B,6);
mark_rt_angle_withsize(z.A,z.B,-z.A,6);
mark_rt_angle_withsize(z.A,z.C,-z.A,6);

draw z.A--z.B--z.C--cycle;
draw ddline(-z.A,z.A)(.1,.1);
draw ddline(-z.A,z.B)(.3,.3);
draw ddline(-z.A,z.C)(.3,.3);

dOt z.A,z.B,z.C;
Dot -z.A;

label.urt (btex $A$ etex, z.A);
whitelabel.lft (btex $B$ etex, z.B);
whitelabel.rt (btex $C$ etex, z.C);
endfig;

beginfig(370)
save u;
u:=1cm;

z.O=(-1,0)*u;
z.P=-z.O;
z.X=z.P rotated 60;
z.S=z.P rotated 140;
z.Y=cross(circle(z.O,z.X-z.O),z.S--z.S+(2*z.P zscaled (0,1)));
z.YY=z.Y reflectedabout(z.O,z.P);
z.XX=z.X reflectedabout(z.O,z.P);
z.Z=whatever[z.Y,z.XX]=whatever[z.YY,z.X];

draw circle(z.O,z.X-z.O) penbold;
draw circle(z.O,z.S-z.O) penbold;
draw ddline(z.Y,z.YY)(.15,.15);
draw ddline(z.X,z.XX)(.2,.2);
draw ddline(z.X,z.YY)(.1,.2);
draw ddline(z.Y,z.XX)(.2,.1);
draw ddline(z.P,z.Z)(.2,1.4) dashed evenly;

dOt z.P,z.X,z.Y,z.XX,z.YY,z.Z;

label.rt (btex $X$ etex, z.X);
label.llft (btex $Y$ etex, z.Y);
whitelabel.rt (btex $Z$ etex, z.Z);
label.rt (btex $X'$ etex, z.XX);
label.ulft (btex $Y'$ etex, z.YY);
label.top (btex $P$ etex, z.P);
endfig;


beginfig(372)%308
save u;
u:=1cm;

z.a=(1,.2)*u;
z.b=(.3,1)*u;
z.d=z.b+.4*z.a;
z.c=z.a-.3*z.d;
z.E=z.c+whatever*z.d=z.b+whatever*z.a;

draw origin--z.a--z.a+z.b--z.b--cycle;
draw origin--z.c--z.c+z.d--z.d--cycle;
draw z.a+z.b--z.E--z.c+z.d;

dOt origin,z.a,z.b,z.a+z.b,z.c,z.d,z.c+z.d,z.E;

label.llft (btex $A$ etex, origin);
label.lrt (btex $B'$ etex, z.a);
label.top (btex $C'$ etex, z.a+z.b);
label.ulft (btex $D'$ etex, z.b);
label.bot (btex $B$ etex, z.c);
label.lrt (btex $C$ etex, z.c+z.d);
label.top (btex $D$ etex, z.d);
label.urt (btex $E$ etex, z.E);

endfig;

beginfig(374)
save u;
u:=.8cm;

z.A=(0,0)*u;
z.B=(2,0)*u;
z.C=(.7,2)*u;
z.AA=altitude(z.B,z.A,z.C);
z.BB=altitude(z.A,z.B,z.C);

arcs(z.A,z.C,z.B,10);
mark_rt_angle_withsize(z.B,z.BB,z.C,6);
mark_rt_angle_withsize(z.A,z.AA,z.C,6);

draw z.A--z.B--z.C--cycle;
draw z.A--z.AA;
draw z.B--z.BB;

dOt z.A,z.B,z.C,z.AA,z.BB;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.top (btex $C$ etex, z.C);
label.urt (btex $A'$ etex, z.AA);
label.ulft (btex $B'$ etex, z.BB);
endfig;

beginfig(376)
save u;
u:=.8cm;

z.A=origin;
z.B=(2,0)*u;
z.D=(.3,1.8)*u;
z.C=z.B+z.D;
z.F=.3[z.A,z.D];
z.E=z.F+z.B;
z.M=.4[z.F,z.E];

draw z.A--z.B--z.C--z.D--cycle;
draw z.F--z.E;
draw z.A--z.M;
draw z.B--z.M;
draw z.C--z.M;
draw z.D--z.M;

dOt z.A,z.B,z.C,z.D,z.E,z.F,z.M;

label.lft (btex $A$ etex, z.A);
label.rt (btex $B$ etex, z.B);
label.rt (btex $C$ etex, z.C);
label.lft (btex $D$ etex, z.D);
label.rt (btex $E$ etex, z.E);
label.lft (btex $F$ etex, z.F);
label.bot (btex $M$ etex, z.M+(0,-1));
endfig;
end
