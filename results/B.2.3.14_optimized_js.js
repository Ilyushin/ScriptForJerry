assert.sameValue("_".sup(),"<sup>_</sup>");assert.sameValue("<".sup(),"<sup><</sup>");assert.sameValue(String.prototype.sup.call(42),"<sup>42</sup>");assert["throws"](TypeError,function(){String.prototype.sup.call(undefined)});assert["throws"](TypeError,function(){String.prototype.sup.call(null)});assert.sameValue(String.prototype.sup.length,0);
