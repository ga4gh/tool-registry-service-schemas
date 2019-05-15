#!/usr/bin/env node
'use strict';
var path = require('path');

require('shelljs/global');
set('-e');
set('-v');

mkdir('-p', 'spec')
mkdir('-p', 'docs/web_deploy')

cp('openapi/openapi.yaml', 'spec/swagger.yaml');

exec('npm run swagger bundle --        -o docs/web_deploy/swagger.json');
exec('npm run swagger bundle -- --yaml -o docs/web_deploy/swagger.yaml');

var SWAGGER_UI_DIST = path.dirname(require.resolve('swagger-ui-dist'));
rm('-rf', 'docs/web_deploy/swagger-ui/')
cp('-R', SWAGGER_UI_DIST, 'docs/web_deploy/swagger-ui/')
ls('docs/web_deploy/swagger-ui')
sed('-i', 'https://petstore.swagger.io/v2/swagger.json', './../swagger.json', 'docs/web_deploy/swagger-ui/index.html')
