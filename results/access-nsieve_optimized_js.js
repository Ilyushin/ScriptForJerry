for(var a,b=0,c=1;3>=c;c++){for(var d=1E4*(1<<c),e=b,f=d,g=Array(d+1),h=void 0,k=void 0,l=void 0,h=2;h<=f;h++)g[h]=!0;l=0;for(h=2;h<=f;h++)if(g[h]){for(k=h+h;k<=f;k+=h)g[k]=!1;l++}b=e+l}a=b;if(14302!=a)throw"ERROR: bad result: expected 14302 but got "+a;