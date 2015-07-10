var validator = require('xsd-schema-validator');
var fs = require('fs');

fs.readFile('index.xml', 'utf8', function (err,data) {
    if (err) {
        throw err;
    }

    validator.validateXML(data, 'blog.xsd', function(err, result) {
      if (err) {
        console.log("uh oh - NOT valid!");
        throw err;
      }
     
      console.log("yay - it validated!");
      result.valid;
    });
}); 

