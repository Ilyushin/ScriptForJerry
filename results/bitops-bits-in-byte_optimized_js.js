var a=0,b,c,d=0;for(b=0;350>b;b++)for(c=0;256>c;c++){for(var e=d,f=c,g=1,h=0;256>g;)f&g&&h++,g<<=1;d=e+h}a=d;if(358400!=a)throw"ERROR: bad result: expected 358400 but got "+a;
