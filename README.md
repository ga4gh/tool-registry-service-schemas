![ga4gh logo](https://raw.githubusercontent.com/dockstore/dockstore-ui2/2.7.4/images/high-res/ga4gh.png)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7079592.svg)](https://doi.org/10.5281/zenodo.7079592)


Schemas for the GA4GH Tool Registry API
=======================================

This repository is the home for the schema for the GA4GH Tool Registry API.  The goal of the API is to provide a standardized way to describe the availability of tools and workflows.  In this way, we can have multiple repositories that share Docker-based tools and WDL/CWL/Nextflow/Galaxy/Snakemake-based workflows and have a consistent way to interact, search, and retrieve information from these various registries.  The end goal is to make it much easier to share scientific tools and workflows, enhancing our ability to make research reproducible, sharable, and transparent.

**See the human-readable [Reference Documentation](https://ga4gh.github.io/tool-registry-service-schemas). You can also explore the specification in the [Swagger Editor](https://editor.swagger.io/?url=https://raw.githubusercontent.com/ga4gh/tool-registry-schemas/develop/openapi/openapi.yaml).**  *Manually load the JSON if working from a non-develop branch version.* Preview documentation from the [gh-openapi-docs](https://github.com/ga4gh/gh-openapi-docs) for the development branch [here](https://ga4gh.github.io/tool-registry-service-schemas/preview/develop/docs/index.html)

The [Global Alliance for Genomics and Health](http://genomicsandhealth.org/) (GA4GH) is an international
coalition, formed to enable the sharing of genomic and clinical data.

Cloud Work Stream
----------------------------------

The Cloud Work Stream is focused on creating specific standards for defining, sharing, and executing portable workflows and accessing data across clouds.
We work with many different Driver Projects to develop, enhance, test, and use the Cloud Work Stream APIs.

What is the Tool Registry API Schema?
-------------------------------------

This is the home of the schema for the GA4GH Tool Registry API. The GA4GH Tool Registry API is a standard for listing and describing available tools (both stand-alone, Docker-based tools as well as workflows in CWL, WDL, Nextflow, Galaxy or Snakemake) in a given registry. This defines a minimal, common API describing tools that we propose for support by multiple tool/workflow registries like [Dockstore](https://www.dockstore.org/), [BioContainers](https://biocontainers.pro), and [Agora](https://github.com/broadinstitute/agora) for the purposes of exchange, indexing, and searching.

This repo uses the [HubFlow](https://datasift.github.io/gitflow/) scheme which is closely based on [GitFlow](https://nvie.com/posts/a-successful-git-branching-model/). In practice, this means that the master branch contains the last production release of the schema whereas the develop branch contains the latest development changes which will end up in the next production release. 
As of February 2022, this means that the 2.0.1 version is described on master whereas the develop branch contains work which will accumulate and evolve into a 2.1 production release.

Our current iteration focuses on a read-only API due to potentially different views and approaches to registration/security.

Key features of the current API:

* read-only API
* Serve up one or more of CWL, WDL, Nextflow, Galaxy or Snakemake to describe a tool or represent a workflow depending on the tool/workflow submitter 
* Download individual workflow files or the entire workflow as a zip
* Interrogate the language versions of these workflows
* Get specific versions of workflows and tools, potentially with immutable versions with checksums on their files
* ID: globally unique across systems and also identifies the system that it came from (ex: 123456323@agora.broadinstitute.org )


Outstanding questions:

* How do we track authorship? Should we track authorship of the tool metadata, the Docker image, or the underlying algorithm, or all of above?
* How to describe indexing and external services like an external [sparql](https://github.com/common-workflow-language/workflows#sparql) service
* How to better co-ordinate with WES, TES


How to view
------------

See the swagger editor to view our [schema in progress](https://editor.swagger.io/?url=https://raw.githubusercontent.com/ga4gh/tool-registry-schemas/develop/openapi/openapi.yaml).


How to contribute changes
-------------------------

Take cues for now from the [CONTRIBUTING.md](https://github.com/ga4gh/tool-registry-service-schemas/blob/develop/CONTRIBUTING.md) document.

At the very least, create an issue in our [Github tracker](https://github.com/ga4gh/tool-registry-schemas/issues).

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
