var a=42;function b(h,e){var f=Array(60),c=null,g;for(g in e)c&&(e[g]+=e[c]),c=g;for(;0<h;){h<f.length&&(f=Array(h));for(c=0;c<f.length;c++){a=(3877*a+29573)%139968;g=1*a/139968;for(var n in e)if(g<e[n]){f[c]=n;break}}d+=f.join("").length;h-=f.length}}
for(var d=0,k=14E5,l=0,m=60;0<k;){k<m&&(m=k);if(287>l+m)d+="GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA".substring(l,l+m).length,l+=m;else var p="GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA".substring(l),
l=m-p.length,d=d+(p+"GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA".substring(0,l)).length;k-=m}b(21E3,{a:.27,b:.12,c:.12,t:.27,f:.02,g:.02,h:.02,i:.02,j:.02,l:.02,m:.02,o:.02,s:.02,u:.02,v:.02});b(35E3,{a:.302954942668,b:.1979883004921,c:.1975473066391,t:.3015094502008});
if(1456E3!=d)throw"ERROR: bad result: expected 1456000 but got "+d;
