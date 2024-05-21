![ga4gh logo](https://raw.githubusercontent.com/dockstore/dockstore-ui2/2.7.4/images/high-res/ga4gh.png)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1193735.svg)](https://doi.org/10.5281/zenodo.1193735)


![release_badge](https://img.shields.io/github/v/tag/ga4gh/tool-registry-service-schemas)


Schemas for the GA4GH Tool Registry API
=======================================

This repository is the home for the schema for the GA4GH Tool Registry API.  The goal of the API is to provide a standardized way to describe the availability of tools and workflows.  In this way, we can have multiple repositories that share tools and workflows of various types that are described in workflow languages (e.g. WDL, CWL, Nextflow, Galaxy, Snakemake), have their dependencies embedded as containers (e.g. Docker, Singularity) or suitable alternatives (e.g., Conda), and have a consistent way to interact, search, and retrieve information from these various registries.  The end goal is to make it much easier to share scientific tools and workflows, enhancing our ability to make research reproducible, sharable, and transparent.

**See the human-readable [Reference Documentation](https://ga4gh.github.io/tool-registry-service-schemas). You can also explore the specification in the [Swagger Editor](https://editor.swagger.io/?url=https://raw.githubusercontent.com/ga4gh/tool-registry-schemas/develop/openapi/openapi.yaml).**  *Manually load the JSON if working from a non-develop branch version.* Preview documentation from the [gh-openapi-docs](https://github.com/ga4gh/gh-openapi-docs) for the development branch [here](https://ga4gh.github.io/tool-registry-service-schemas/preview/develop/docs/index.html)

The [Global Alliance for Genomics and Health](http://genomicsandhealth.org/) (GA4GH) is an international
coalition, formed to enable the sharing of genomic and clinical data.

Cloud Work Stream
----------------------------------

The Cloud Work Stream is focused on creating specific standards for defining, sharing, and executing portable workflows and self-contained tasks, and accessing data across clouds.

We work with many different Driver Projects to develop, enhance, test, and use the Cloud Work Stream APIs.

What is the Tool Registry API Schema?
-------------------------------------

This is the home of the schema for the GA4GH Tool Registry API. The GA4GH Tool Registry API is a standard for listing and describing available tools (both stand-alone, self-contained tools and workflows in CWL, WDL, Nextflow, Galaxy or Snakemake) in a given registry. This defines a minimal, common API describing tools that we propose for support by multiple tool/workflow registries like [Dockstore](https://www.dockstore.org/), [BioContainers](https://biocontainers.pro), and [Agora](https://github.com/broadinstitute/agora) for the purposes of exchange, indexing, and searching.

This repo uses the [HubFlow](https://github.com/mvalipour/hubflow) scheme which is closely based on 
[GitFlow](https://nvie.com/posts/a-successful-git-branching-model/). In practice, this means that 
the master branch contains the last production release of the schema whereas the develop branch 
contains the latest development changes which will end up in the next production release. As of 
February 2022,  the master branch contains the last production release (currently 
![release_badge](https://img.shields.io/github/v/tag/ga4gh/tool-registry-service-schemas))) whereas 
the develop branch contains work which will accumulate and evolve into a 2.1 production release.

Our current iteration focuses on a read-only API due to potentially different views and approaches to registration/security.

Key features of the current API:

* Read-only API
* Serve tool and workflow resources via specifically designed schemas that encourage rich metadata annotation and help enable software [FAIRification](https://doi.org/10.1038/s41597-022-01710-x)
* Download individual workflow descriptor files or an archive of all workflow and accessory files (e.g., test files)
* Allow integrators to interrogate the language versions of these workflows (e.g. CWL 1.1, CWL 1.2 or Nextflow DSL2) to identify compatible workflows
* Get specific versions of workflows and tools, potentially with immutable versions with checksums on their files
* Assign globally unique [TRS URIs](https://ga4gh.github.io/tool-registry-service-schemas/DataModel/) to specific versions of tool and workflow resources
* Provides more structure than a simple unformatted list of tools but it is also a standard for registries to implement as opposed to a registry implementation itself

Open questions:
---------------

Questions TRS currently does not (comprehensively) address include the following:

* How do we track authorship? Should we track authorship of the tool metadata, the Docker image, or the underlying algorithm, or all of above?
* How to describe indexing and external services like an external [SPARQL](https://github.com/common-workflow-language/workflows#sparql) service?
* How to better interoperate with the GA4GH [Workflow Execution Service (WES)](https://github.com/ga4gh/workflow-execution-service-schemas) and [Task Execution Service (TES)](https://github.com/ga4gh/task-execution-schemas/) APIs for triggering workflow and tool runs


How to view
------------

See the swagger editor to view our [schema in progress](https://editor.swagger.io/?url=https://raw.githubusercontent.com/ga4gh/tool-registry-schemas/develop/openapi/openapi.yaml).


How to contribute changes
-------------------------

Take cues for now from the [CONTRIBUTING.md](https://github.com/ga4gh/tool-registry-service-schemas/blob/develop/CONTRIBUTING.md) document.

At the very least, create an issue in our [GitHub tracker](https://github.com/ga4gh/tool-registry-schemas/issues).

Even better, fork the codebase, fix the issue, and create a pull request back to the project along with your ticket.

Adding registries
-----------------

To add a registry that supports the GA4GH Registry API:

1. fork the repo
1. modify [registry.json](registry.json)
1. submit a pull request back to the project
1. we will confirm the site is valid then accept your pull request

Cross indexing Tool Registry sites
----------------------------------

See our [registry.json](registry.json) for a list of known registries that conform to the Tool Registry API standard.

License
-------

See the [LICENSE](LICENSE)

For more information
--------------------

* [GA4GH Cloud Work Stream](https://github.com/ga4gh/wiki/wiki) - the wiki and meeting notes for the workstream
* APIs that we co-ordinate/meet with
  * [DRS](https://github.com/ga4gh/wiki/wiki/Data-Repository-Service)
  * [TES](https://github.com/ga4gh/wiki/wiki/Task-Execution-Service)
  * [WES](https://github.com/ga4gh/wiki/wiki/Workflow-Execution-Service)
* [Global Alliance for Genomics and Health](https://www.ga4gh.org/) - GA4GH's main page
* [GA4GH Technical Alignment Sub Committee (TASC)](https://github.com/ga4gh/TASC) - we try to co-ordinate GA4GH API decisions here
* [GA4GH Slack](https://ga4gh.slack.com/) - although you may need an invitation from a GA4GH administrator if your email domain name has not been allow-listed, see [https://github.com/ga4gh/TASC/issues/44](https://github.com/ga4gh/TASC/issues/44)
