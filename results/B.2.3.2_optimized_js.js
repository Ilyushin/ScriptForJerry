assert.sameValue("_".anchor("b"),'<a name="b">_</a>');assert.sameValue("<".anchor("<"),'<a name="<"><</a>');assert.sameValue("_".anchor(42),'<a name="42">_</a>');assert.sameValue("_".anchor('"'),'<a name="&quot;">_</a>');assert.sameValue(String.prototype.anchor.call(42,42),'<a name="42">42</a>');assert["throws"](TypeError,function(){String.prototype.anchor.call(undefined)});assert["throws"](TypeError,function(){String.prototype.anchor.call(null)});assert.sameValue(String.prototype.anchor.length,1);
