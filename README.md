![ga4gh logo](http://genomicsandhealth.org/files/logo_ga.png)

Schemas for the Data Working Group - Containers and Workflows Task Team
=======================================================================

![](http://online.swagger.io/validator/?url=https://raw.githubusercontent.com/ga4gh/tool-registry-schemas/develop/src/main/resources/swagger/ga4gh-tool-discovery.yaml)

The [Global Alliance for Genomics and Health](http://genomicsandhealth.org/) is an international
coalition, formed to enable the sharing of genomic and clinical data.

The [Data Working Group](http://ga4gh.org/#/) concentrates on data representation, storage,
and analysis, including working with platform development partners and
industry leaders to develop standards that will facilitate
interoperability.

Containers and Workflows Task Team
----------------------------------

The Containers & Workflows working group is an informal, multi-vendor working group born out of the BOSC 2014 codefest, consisting of various organizations and individuals that have an interest in portability of data analysis workflows. Our goal is to create specifications that enable data scientists to describe analysis tools and workflows that are powerful, easy to use, portable, and support reproducibility for a variety of problem areas including data-intensive science like bioinformatics, physics, and astronomy; and business analytics such as log analysis, data mining, and ETL.

From within this group, two approaches have emerged, resulting in the production of two distinct but complementary specifications: the Common Workflow Language, or CWL, and the Workflow Description Language, or WDL. The CWL approach emphasizes execution features and machine-readability, and serves a core target audience of software and platform developers. The WDL approach, on the other hand, emphasizes scripting  and human-readability, and serves a core target audience of research scientists. 

Together, these two specifications cover a very wide spectrum of analysis use cases. Work is underway to ensure interoperability through conversion and related utilities.

What is this?
------------

Currently, this is the home of the Registry API proposal. The registry API is a minimal common API describing tools that we proposal for support by multiple registries like [Dockstore](https://www.dockstore.org/) and [Agora](https://github.com/broadinstitute/agora) for the purposes of exchange, indexing, and searching. 

Our current proposal is to start with a read-only API due to potentially different views and approaches to registration/security.

Key features of the current API proposal:

* read-only API
* May serve up CWl, WDL, to describe a tool depending on what is available
* ID:  globally unique across systems and also identifies the system that it came from (ex: 123456323@agora.broadinstitute.org )

Outstanding questions: 

* How do we track authorship? Should we track authorship of the tool metadata, the Docker image, or the underlying algorithm, or all of above?
* How to describe indexing and external services like an external [sparql](https://github.com/common-workflow-language/workflows#sparql) service. 
* Versioning
* Terminology discussion (do we describe triples separately from tools? should we describe them as aggregations of tools for just the case that CWL documents have more than one tool? etc.)


How to view
------------

See the swagger editor to view our [schema in progress](http://editor.swagger.io/#/?import=https://raw.githubusercontent.com/ga4gh/tool-registry-schemas/develop/src/main/resources/swagger/ga4gh-tool-discovery.yaml).

If the current schema fails to validate, visit [debugging](http://online.swagger.io/validator/debug?url=https://raw.githubusercontent.com/ga4gh/tool-registry-schemas/develop/src/main/resources/swagger/ga4gh-tool-discovery.yaml)



How to contribute changes
-------------------------

Take cues for now from the [ga4gh/schemas](https://github.com/ga4gh/schemas/blob/master/CONTRIBUTING.rst) document.

License
-------

See the [LICENSE]

  []: http://genomicsandhealth.org/files/logo_ga.png
  [Global Alliance for Genomics and Health]: http://genomicsandhealth.org/
  [INSTALL.md]: INSTALL.md
  [CONTRIBUTING.md]: CONTRIBUTING.md
  [LICENSE]: LICENSE
  [Google Forum]: https://groups.google.com/forum/#!forum/ga4gh-dwg-containers-workflows
