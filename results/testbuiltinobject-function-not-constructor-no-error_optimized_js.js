var threw=false;try{testBuiltInObject(function(){},true,false,[],0)}catch(err){threw=true;if(err.constructor!==Test262Error)$ERROR('Expected a Test262Error, but a "'+err.constructor.name+'" was thrown.')}if(threw===false)$ERROR("Expected a Test262Error, but no error was thrown.");
