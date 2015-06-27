var test = require('tape');

test("can require index.js",function(t){
    t.plan(1);
    var index = require('../index.js');

    t.ok(index,'should have index.js');
});