## Instruction for modifying the TRS

To make changes to the TRS, join the GA4GH organization or ask to join this repository as a collaborator. Then in your branch, modify:
 - The swagger yaml file (`ga4gh-tool-discovery.yaml`) with a Swagger 2 definition of the changes.
   - This swagger yaml file will be used in the validation server.
 - An OpenAPI yaml file (`openapi.yaml`) with an OpenAPI 3 definition of the changes will be auto-generated by swagger2openapi and checked in by an automated TravisCI build
