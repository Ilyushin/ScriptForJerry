var obj={};Object.defineProperty(obj,"a",{writable:false,value:123});verifyNotWritable(obj,"a");if(obj.a!==123)$ERROR("`verifyNotWritable` should be non-destructive.");
