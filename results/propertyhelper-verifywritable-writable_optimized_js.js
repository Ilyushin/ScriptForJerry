var obj={};Object.defineProperty(obj,"a",{writable:true,value:123});verifyWritable(obj,"a");if(obj.a!==123)$ERROR("`verifyWritable` should be non-destructive.");
