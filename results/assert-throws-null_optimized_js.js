var threw=false;try{assert["throws"](Error,function(){throw null;})}catch(err){threw=true;if(err.constructor!==Test262Error)$ERROR('Expected a Test262Error, but a "'+err.constructor.name+'" was thrown.')}if(threw===false)$ERROR("Expected a Test262Error, but no error was thrown.");
