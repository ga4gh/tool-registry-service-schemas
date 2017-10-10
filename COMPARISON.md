## Overview

A comparison between TRS and other APIs.

| Resource | [TRS](https://github.com/ga4gh/tool-registry-schemas) | [Bio.tools](http://biotools.readthedocs.io/en/latest/api_reference.html) |
| --- | --- | --- |
| list resources | `GET http://editor2.swagger.io/api/ga4gh/v1/tools` | `curl -X GET "https://bio.tools/api/tool/?page=1&format=json&name=signalp&sort=name&ord=asc&q=protein-signal-peptide-detection"` |
| resource details | `GET http://editor2.swagger.io/api/ga4gh/v1/tools/{id}` | `curl -X GET "https://bio.tools/api/tool/signalp/?format=json"` |


## List Resources

TRS

```
to do
```

bio.tools

```
{
   "next" : null,
   "count" : 1,
   "list" : [
      {
         "link" : [
            {
               "type" : "Repository",
               "comment" : null,
               "url" : "http://www.cbs.dtu.dk/cgi-bin/sw_request?signalp"
            }
         ],
         "topic" : [
            {
               "uri" : "http://edamontology.org/topic_3510",
               "term" : "Protein sites, features and motifs"
            }
         ],
         "availability" : null,
         "documentation" : [
            {
               "type" : "General",
               "comment" : null,
               "url" : "http://www.cbs.dtu.dk/services/SignalP"
            }
         ],
         "toolType" : [
            "Command-line tool",
            "Web application"
         ],
         "version_hash" : null,
         "editPermission" : {
            "type" : "group",
            "authors" : [
               "CBS"
            ]
         },
         "additionDate" : "2015-12-17T14:23:00Z",
         "credit" : [
            {
               "typeEntity" : "Person",
               "typeRole" : "Developer",
               "gridId" : null,
               "orcidId" : null,
               "email" : null,
               "url" : null,
               "name" : "TN Petersen",
               "comment" : null
            },
            {
               "gridId" : null,
               "typeRole" : "Provider",
               "typeEntity" : "Institute",
               "orcidId" : null,
               "email" : null,
               "comment" : null,
               "name" : "CBS",
               "url" : null
            },
            {
               "name" : "Henrik Nielsen",
               "url" : null,
               "comment" : null,
               "orcidId" : null,
               "email" : "hnielsen@cbs.dtu.dk",
               "typeEntity" : null,
               "gridId" : null,
               "typeRole" : "Developer"
            }
         ],
         "accessibility" : [],
         "description" : "Prediction of the presence and location of signal peptide cleavage sites in amino acid sequences from different organisms.",
         "version" : "4.1",
         "collectionID" : [
            "CBS"
         ],
         "cost" : "Free of charge (with restrictions)",
         "elixirInfo" : null,
         "lastUpdate" : "2017-08-17T11:46:29Z",
         "id" : "signalp",
         "name" : "SignalP",
         "function" : [
            {
               "output" : [
                  {
                     "data" : {
                        "uri" : "http://edamontology.org/data_1277",
                        "term" : "Protein features"
                     },
                     "format" : [
                        {
                           "uri" : "http://edamontology.org/format_2305",
                           "term" : "GFF"
                        }
                     ]
                  },
                  {
                     "format" : [],
                     "data" : {
                        "term" : "Sequence report",
                        "uri" : "http://edamontology.org/data_2955"
                     }
                  }
               ],
               "input" : [
                  {
                     "format" : [
                        {
                           "uri" : "http://edamontology.org/format_1929",
                           "term" : "FASTA"
                        }
                     ],
                     "data" : {
                        "uri" : "http://edamontology.org/data_2044",
                        "term" : "Sequence"
                     }
                  }
               ],
               "comment" : "predicts the presence and location of signal peptide cleavage sites in amino acid sequences from different organisms",
               "operation" : [
                  {
                     "term" : "Protein signal peptide detection",
                     "uri" : "http://edamontology.org/operation_0418"
                  },
                  {
                     "uri" : "http://edamontology.org/operation_0422",
                     "term" : "Protein cleavage site prediction"
                  }
               ]
            }
         ],
         "maturity" : "Mature",
         "downtime" : null,
         "operatingSystem" : [
            "Linux",
            "Mac"
         ],
         "owner" : "cbs_admin",
         "license" : null,
         "canonicalID" : null,
         "download" : [
            {
               "url" : "http://www.cbs.dtu.dk/cgi-bin/sw_request?signalp",
               "comment" : null,
               "type" : "Source code"
            },
            {
               "url" : "http://www.cbs.dtu.dk/cgi-bin/sw_request?signalp",
               "comment" : null,
               "type" : "Binaries"
            }
         ],
         "publication" : [
            {
               "pmid" : "21959131",
               "doi" : null,
               "type" : "Primary",
               "version" : null,
               "pmcid" : null
            },
            {
               "pmcid" : null,
               "type" : "Other",
               "version" : null,
               "doi" : "doi:10.1038/nmeth.1701",
               "pmid" : null
            }
         ],
         "language" : [],
         "contact" : [
            {
               "url" : null,
               "name" : "Henrik Nielsen",
               "tel" : null,
               "email" : "hnielsen@cbs.dtu.dk"
            }
         ],
         "homepage" : "http://cbs.dtu.dk/services/SignalP/",
         "validated" : 0
      }
   ],
   "previous" : null
}
```

## Resource Details

TRS

```
todo
```

bio.tools

```
{
   "id" : "signalp",
   "contact" : [
      {
         "name" : "Henrik Nielsen",
         "url" : null,
         "email" : "hnielsen@cbs.dtu.dk",
         "tel" : null
      }
   ],
   "toolType" : [
      "Command-line tool",
      "Web application"
   ],
   "owner" : "cbs_admin",
   "license" : null,
   "maturity" : "Mature",
   "additionDate" : "2015-12-17T14:23:00Z",
   "canonicalID" : null,
   "collectionID" : [
      "CBS"
   ],
   "lastUpdate" : "2017-08-17T11:46:29Z",
   "link" : [
      {
         "type" : "Repository",
         "comment" : null,
         "url" : "http://www.cbs.dtu.dk/cgi-bin/sw_request?signalp"
      }
   ],
   "topic" : [
      {
         "uri" : "http://edamontology.org/topic_3510",
         "term" : "Protein sites, features and motifs"
      }
   ],
   "credit" : [
      {
         "typeRole" : "Developer",
         "orcidId" : null,
         "gridId" : null,
         "name" : "TN Petersen",
         "typeEntity" : "Person",
         "url" : null,
         "email" : null,
         "comment" : null
      },
      {
         "orcidId" : null,
         "typeRole" : "Provider",
         "email" : null,
         "comment" : null,
         "name" : "CBS",
         "gridId" : null,
         "typeEntity" : "Institute",
         "url" : null
      },
      {
         "typeRole" : "Developer",
         "orcidId" : null,
         "name" : "Henrik Nielsen",
         "gridId" : null,
         "url" : null,
         "typeEntity" : null,
         "comment" : null,
         "email" : "hnielsen@cbs.dtu.dk"
      }
   ],
   "editPermission" : {
      "authors" : [
         "CBS"
      ],
      "type" : "group"
   },
   "accessibility" : [],
   "documentation" : [
      {
         "type" : "General",
         "comment" : null,
         "url" : "http://www.cbs.dtu.dk/services/SignalP"
      }
   ],
   "homepage" : "http://cbs.dtu.dk/services/SignalP/",
   "publication" : [
      {
         "type" : "Primary",
         "pmcid" : null,
         "pmid" : "21959131",
         "doi" : null,
         "version" : null
      },
      {
         "type" : "Other",
         "version" : null,
         "doi" : "doi:10.1038/nmeth.1701",
         "pmid" : null,
         "pmcid" : null
      }
   ],
   "description" : "Prediction of the presence and location of signal peptide cleavage sites in amino acid sequences from different organisms.",
   "elixirInfo" : null,
   "availability" : null,
   "cost" : "Free of charge (with restrictions)",
   "version" : "4.1",
   "downtime" : null,
   "download" : [
      {
         "url" : "http://www.cbs.dtu.dk/cgi-bin/sw_request?signalp",
         "type" : "Source code",
         "comment" : null
      },
      {
         "comment" : null,
         "type" : "Binaries",
         "url" : "http://www.cbs.dtu.dk/cgi-bin/sw_request?signalp"
      }
   ],
   "function" : [
      {
         "output" : [
            {
               "data" : {
                  "term" : "Protein features",
                  "uri" : "http://edamontology.org/data_1277"
               },
               "format" : [
                  {
                     "uri" : "http://edamontology.org/format_2305",
                     "term" : "GFF"
                  }
               ]
            },
            {
               "data" : {
                  "term" : "Sequence report",
                  "uri" : "http://edamontology.org/data_2955"
               },
               "format" : []
            }
         ],
         "operation" : [
            {
               "term" : "Protein signal peptide detection",
               "uri" : "http://edamontology.org/operation_0418"
            },
            {
               "uri" : "http://edamontology.org/operation_0422",
               "term" : "Protein cleavage site prediction"
            }
         ],
         "input" : [
            {
               "format" : [
                  {
                     "uri" : "http://edamontology.org/format_1929",
                     "term" : "FASTA"
                  }
               ],
               "data" : {
                  "uri" : "http://edamontology.org/data_2044",
                  "term" : "Sequence"
               }
            }
         ],
         "comment" : "predicts the presence and location of signal peptide cleavage sites in amino acid sequences from different organisms"
      }
   ],
   "validated" : 0,
   "version_hash" : null,
   "operatingSystem" : [
      "Linux",
      "Mac"
   ],
   "language" : [],
   "name" : "SignalP"
}

```
