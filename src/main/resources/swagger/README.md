## Instruction for modifying the TRS

To make changes to the TRS, modify the swagger yaml file.  This swagger yaml file will be used in the validation server.
A protobuf file will be automatically generated through Travis using Openapi2proto and some post processing.
A 2nd swagger yaml will be generated from the newly generated protobuf file using protoc-gen-swagger and will have basic checks to determine that vital information is not lost between these conversions.
After successful conversion checks, the protobuf file will be uploaded back to this repository and branch using the repository's deploy key.

### Current protobuf generation status:
The .travis.yml that automatically generates the protobuf file is currently not present in this pull request because there's currently no deploy key for this repository yet (Travis would definitely fail the build).

See https://github.com/garyluu/validator/blob/master/.travis.yml for an similar travis file that automatically generates and uploads the protobuf file.

### A few notes:
Some information is lost during the swagger.yaml to protobuf conversion such as optional/required properties, headers, content-type, etc.
If making these type of changes in the swagger yaml, ensure there's a comment in the swagger yaml indicating it.
In general, comments are carried over from swagger to protobuf.  In the event of ambiguity or conversion issues, use comments.

https://groups.google.com/a/genomicsandhealth.org/forum/?hl=en-GB#!topic/ga4gh-cloud/ElieFuwHgcM lists a bunch of other issues that will need to be taken into account when editing the swagger yaml.

To preserve as much compatibility with protobuf as possible, here are some things to avoid using in the swagger yaml:
- Required properties in objects.  Protobuf will consider all of them as optional
- All header info for example: no-cache, max-age, max-stale, all encoding related headers, authorization, content-type, etc
- Enum path parameters
- Custom error response objects
- More than 1 successful response object
- Global enums that have the same property names
- HTTP methods that are HEAD, TRACE, OPTIONS, and CONNECT due to tooling (protobuf could use custom http patterns but too complicated for automated conversion)
- Nullable properties (even swagger doesn't support it very well)
- all vendor extensions such as x-example, x-description, x-summary, etc
