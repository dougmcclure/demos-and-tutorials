{
   "name": "Netcool/OMNIbus Event Analysis - Node and AlertGroup Hot Spots App",
   "type": "DynamicDashboard",
   "description": "Displays Netcool/OMNIbus Event Hot Spots based upon Node and AlertGroup",
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
               "query": "*",
               "facets": {
							"Node": {
								"terms": {
									"field": "Node",
									"size": 5,
									"nested_facet": {
										"AlertGroup": {
											"terms": {
												"field": "AlertGroup",
												"size": 2
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "AlertGroup"
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
               "query": "*",
               "facets": {
							"Node": {
								"terms": {
									"field": "Node",
									"size": 5,
									"nested_facet": {
										"AlertGroup": {
											"terms": {
												"field": "AlertGroup",
												"size": 2
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "AlertGroup"
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
               "query": "*",
               "facets": {
							"Node": {
								"terms": {
									"field": "Node",
									"size": 5,
									"nested_facet": {
										"AlertGroup": {
											"terms": {
												"field": "AlertGroup",
												"size": 2
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "AlertGroup"
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
               "query": "*",
               "facets": {
							"Node": {
								"terms": {
									"field": "Node",
									"size": 5,
									"nested_facet": {
										"AlertGroup": {
											"terms": {
												"field": "AlertGroup",
												"size": 2
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "AlertGroup"
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
               "query": "*",
               "facets": {
							"Node": {
								"terms": {
									"field": "Node",
									"size": 5,
									"nested_facet": {
										"AlertGroup": {
											"terms": {
												"field": "AlertGroup",
												"size": 2
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "AlertGroup"
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
                     "title": "Top 5 Nodes with Events by AlertGroup (Hourly)",
                     "drillDownSupport": true,
                     "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "AlertGroup"
                     },
                     "data": {
                        "$ref": "hourlyEventTrendByNode"
                     },
                     "type": "Stacked Bar Chart"
                  },
				  {
                    "type": "Stacked Bar Chart",
                    "title": "Top 5 Nodes with Events by AlertGroup (Daily)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "dailyEventTrendByNode"
                        },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "AlertGroup"
                     }
                 },
				 {
                    "type": "Stacked Bar Chart",
                    "title": "Top 5 Nodes with Events by AlertGroup (Weekly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "weeklyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "AlertGroup"
                     }
                 },
				 {
                    "type": "Stacked Bar Chart",
                    "title": "Top 5 Nodes with Events by AlertGroup (Monthly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "monthlyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "AlertGroup"
                     }
                 },
				 {
                    "type": "Stacked Bar Chart",
                    "title": "Top 5 Nodes with Events by AlertGroup (Yearly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "yearlyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "AlertGroup"
                     }
                 }
               ]
            }
         }
      }
   }
}