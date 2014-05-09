{
   "name": "Netcool/OMNIbus Event Analysis - Node and AlertKey Hot Spots App",
   "type": "DynamicDashboard",
   "description": "Displays Netcool/OMNIbus Event Hot Spots based upon Node and AlertKey",
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
									"exactCounts": true,
									"nested_facet": {
										"AlertKey": {
											"terms": {
												"field": "AlertKey",
												"size": 2,
												"exactCounts": true,
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "AlertKey"
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
									"exactCounts": true,
									"nested_facet": {
										"AlertKey": {
											"terms": {
												"field": "AlertKey",
												"size": 2,
												"exactCounts": true,
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "AlertKey"
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
									"exactCounts": true,
									"nested_facet": {
										"AlertKey": {
											"terms": {
												"field": "AlertKey",
												"size": 2,
												"exactCounts": true,
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "AlertKey"
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
									"exactCounts": true,
									"nested_facet": {
										"AlertKey": {
											"terms": {
												"field": "AlertKey",
												"size": 2,
												"exactCounts": true,
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "AlertKey"
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
									"exactCounts": true,
									"nested_facet": {
										"AlertKey": {
											"terms": {
												"field": "AlertKey",
												"size": 2,
												"exactCounts": true,
											}
										}
									}
								}
							}
						},
               "getAttributes": [
                  "Node",
				  "AlertKey"
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
                     "title": "Top 5 Nodes with Events by AlertKey (Hourly)",
                     "drillDownSupport": true,
                     "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "AlertKey"
                     },
                     "data": {
                        "$ref": "hourlyEventTrendByNode"
                     },
                     "type": "Stacked Bar Chart"
                  },
				  {
                    "type": "Stacked Bar Chart",
                    "title": "Top 5 Nodes with Events by AlertKey (Daily)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "dailyEventTrendByNode"
                        },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "AlertKey"
                     }
                 },
				 {
                    "type": "Stacked Bar Chart",
                    "title": "Top 5 Nodes with Events by AlertKey (Weekly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "weeklyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "AlertKey"
                     }
                 },
				 {
                    "type": "Stacked Bar Chart",
                    "title": "Top 5 Nodes with Events by AlertKey (Monthly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "monthlyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "AlertKey"
                     }
                 },
				 {
                    "type": "Stacked Bar Chart",
                    "title": "Top 5 Nodes with Events by AlertKey (Yearly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "yearlyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count",
						"categories": "AlertKey"
                     }
                 }
               ]
            }
         }
      }
   }
}