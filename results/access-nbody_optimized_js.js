function m(g,a,h,e,c,k,d){this.x=g;this.y=a;this.z=h;this.c=e;this.f=c;this.g=k;this.b=d}function n(g){this.a=g;for(var a=g=0,h=0,e=this.a.length,c=0;c<e;c++){var k=this.a[c],d=k.b;g+=k.c*d;a+=k.f*d;h+=k.g*d}e=this.a[0];e.c=-g/39.47841760435743;e.f=-a/39.47841760435743;e.g=-h/39.47841760435743}
n.prototype.advance=function(g){for(var a,h,e,c,k=this.a.length,d=0;d<k;d++)for(var b=this.a[d],l=d+1;l<k;l++){var f=this.a[l];a=b.x-f.x;h=b.y-f.y;e=b.z-f.z;c=Math.sqrt(a*a+h*h+e*e);c=g/(c*c*c);b.c-=a*f.b*c;b.f-=h*f.b*c;b.g-=e*f.b*c;f.c+=a*b.b*c;f.f+=h*b.b*c;f.g+=e*b.b*c}for(d=0;d<k;d++)a=this.a[d],a.x+=g*a.c,a.y+=g*a.f,a.z+=g*a.g};
function p(){for(var g=q,a,h,e,c=0,k=g.a.length,d=0;d<k;d++)for(var b=g.a[d],c=c+.5*b.b*(b.c*b.c+b.f*b.f+b.g*b.g),l=d+1;l<k;l++){var f=g.a[l];a=b.x-f.x;h=b.y-f.y;e=b.z-f.z;a=Math.sqrt(a*a+h*h+e*e);c-=b.b*f.b/a}return c}
for(var r=0,t=3;24>=t;t*=2){for(var q=new n([new m(0,0,0,0,0,0,39.47841760435743),new m(4.841431442464721,-1.1603200440274284,-.10362204447112311,.606326392995832,2.81198684491626,-.02521836165988763,.03769367487038949),new m(8.34336671824458,4.124798564124305,-.4035234171143214,-1.0107743461787924,1.8256623712304119,.008415761376584154,.011286326131968767),new m(12.894369562139131,-15.111151401698631,-.22330757889265573,1.0827910064415354,.8687130181696082,-.010832637401363636,.0017237240570597112),
new m(15.379697114850917,-25.919314609987964,.17925877295037118,.979090732243898,.5946989986476762,-.034755955504078104,.0020336868699246304)]),u=100*t,r=r+p(),v=0;v<u;v++)q.advance(.01);r+=p()}if(-1.3524862408537381!=r)throw"ERROR: bad result: expected -1.3524862408537381 but got "+r;
