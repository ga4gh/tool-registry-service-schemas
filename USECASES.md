The GA4GH tool-registry-schema, instances of which are called tool-registry-services, was both out of a desire to generalize our (the team at OICR) experience on the PCAWG (Pan-Cancer Analysis of Whole Genomes) project. 

In short, we found ourselves needing a way to distribute, reliably, workflows that could execute on single nodes in a variety of compute environments such as AWS, Azure, OpenStack, vCloud, and HPC. We settled eventually on a combination of Docker and a proprietary descriptor and workflow language called SeqWare. In order to present this solution to the world as Dockstore, we replaced that proprietary descriptor with CWL (Common Workflow Language). 

This schema generalizes this approach and aims to let use communicate with others that have similar (but not identical) approaches. 

Our use case was as follows, we needed: 

* sharing: we needed to share descriptions of tools and the parameters for how to run them
  * how much does a workflow need in terms of resources? Who is currently maintaining a workflow? i.e. a tool should be encouraged to describe a certain set of metadata including who wrote a tool, who is maintaining a tool, how much in the way of resources does a tool require, and what are the types of input files that it requires 
* transparency: it should be simple to understand how a tool was constructed and what binaries went into it in order to facilitate modification 
* Docker: not necessarily Docker, but at the time Docker was the most mature way of distributing and running the tools that we had in the form of "fat Dockers" that had a large amount of code and services within them. While we added support for things like workflows of "small Dockers" via CWL, our use-case is still focused around "fat Dockers" so this use-case must be well served i.e. the tool registry should make it easy to share command-line tools based on larger Docker contaienrs
* test parameters: In order to ensure that a workflow works reliably, we needed to test a workflow with a "known good" set of parameters. i.e. it should be trivial to determine what parameters "should" invoke a tool successfully

## Reference Materials

* Dockstore tutorial https://docs.google.com/presentation/d/12ZbaQIPqyOApfuaIH_ulOJwlBDzaECwDdbTFrnhagGg/edit?usp=sharing
