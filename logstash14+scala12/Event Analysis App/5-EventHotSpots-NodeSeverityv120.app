{
   "name": "Netcool/OMNIbus Event Analysis - Node and Severity Hot Spots App",
   "type": "DynamicDashboard",
   "description": "Displays Netcool/OMNIbus Event Hot Spots based upon Node and Severity",
   "customLogic": {
      "script": "DynamicDashboard.sh",
      "description": "Various visualization examples based upon Netcool/OMNIbus events indexed in SCALA",
      "parameters": [
         {
            "value": {
               "start": 0,
               "results": 0,
               "outputTimeZone": "UTC",
               "filter": {
                  "timefilters": {
                     "granularity": "hour",
                     "lastnum": 1,
                     "type": "relative"
                  }
               },
               "logsources": [
                  {
                     "type": "logSource",
                     "name": "\/mynetcoolevents"
                  }
               ],
               "query": "Severity:[0..5]",
               "facets": {
							"Node": {
								"terms": {
									"field": "Node",
									"size": 20,
									"nested_facet": {
										"Severity": {
											"terms": {
												"field": "Severity",
												"size": 6
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "Severity"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "hourlyEventTrendByNode"
		},
		{
            "value": {
               "start": 0,
               "results": 0,
               "outputTimeZone": "UTC",
               "filter": {
                  "timefilters": {
                     "granularity": "day",
                     "lastnum": 1,
                     "type": "relative"
                  }
               },
               "logsources": [
                  {
                     "type": "logSource",
                     "name": "\/mynetcoolevents"
                  }
               ],
               "query": "Severity:[0..5]",
               "facets": {
							"Node": {
								"terms": {
									"field": "Node",
									"size": 20,
									"nested_facet": {
										"Severity": {
											"terms": {
												"field": "Severity",
												"size": 6
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "Severity"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "dailyEventTrendByNode"
		},
		{
            "value": {
               "start": 0,
               "results": 0,
               "outputTimeZone": "UTC",
               "filter": {
                  "timefilters": {
                     "granularity": "week",
                     "lastnum": 1,
                     "type": "relative"
                  }
               },
               "logsources": [
                  {
                     "type": "logSource",
                     "name": "\/mynetcoolevents"
                  }
               ],
               "query": "Severity:[0..5]",
               "facets": {
							"Node": {
								"terms": {
									"field": "Node",
									"size": 20,
									"nested_facet": {
										"Severity": {
											"terms": {
												"field": "Severity",
												"size": 6
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "Severity"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "weeklyEventTrendByNode"
		},
		{
            "value": {
               "start": 0,
               "results": 0,
               "outputTimeZone": "UTC",
               "filter": {
                  "timefilters": {
                     "granularity": "month",
                     "lastnum": 1,
                     "type": "relative"
                  }
               },
               "logsources": [
                  {
                     "type": "logSource",
                     "name": "\/mynetcoolevents"
                  }
               ],
               "query": "Severity:[0..5]",
               "facets": {
							"Node": {
								"terms": {
									"field": "Node",
									"size": 20,
									"nested_facet": {
										"Severity": {
											"terms": {
												"field": "Severity",
												"size": 6
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "Severity"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "monthlyEventTrendByNode"
		},
		{
            "value": {
               "start": 0,
               "results": 0,
               "outputTimeZone": "UTC",
               "filter": {
                  "timefilters": {
                     "granularity": "year",
                     "lastnum": 1,
                     "type": "relative"
                  }
               },
               "logsources": [
                  {
                     "type": "logSource",
                     "name": "\/mynetcoolevents"
                  }
               ],
               "query": "Severity:[0..5]",
               "facets": {
							"Node": {
								"terms": {
									"field": "Node",
									"size": 20,
									"nested_facet": {
										"Severity": {
											"terms": {
												"field": "Severity",
												"size": 6
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "Severity"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "yearlyEventTrendByNode"
        } 
      ],
      "output": {
         "type": "Data",
         "visualization": {
            "dashboard": {
               "columns": 3,
               "charts": [
                  {
                     "title": "Top 20 Nodes with Events by Severity (Hourly)",
                     "drillDownSupport": true,
                     "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "Severity"
                     },
                     "data": {
                        "$ref": "hourlyEventTrendByNode"
                     },
                     "type": "Stacked Bar Chart"
                  },
				  {
                    "type": "Stacked Bar Chart",
                    "title": "Top 20 Nodes with Events by Severity (Daily)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "dailyEventTrendByNode"
                        },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "Severity"
                     }
                 },
				 {
                    "type": "Stacked Bar Chart",
                    "title": "Top 20 Nodes with Events by Severity (Weekly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "weeklyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "Severity"
                     }
                 },
				 {
                    "type": "Stacked Bar Chart",
                    "title": "Top 20 Nodes with Events by Severity (Monthly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "monthlyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "Severity"
                     }
                 },
				 {
                    "type": "Stacked Bar Chart",
                    "title": "Top 20 Nodes with Events by Severity (Yearly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "yearlyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "Severity"
                     }
                 }
               ]
            }
         }
      }
   }
}