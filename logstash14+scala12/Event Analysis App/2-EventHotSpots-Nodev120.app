{
   "name": "Netcool/OMNIbus Event Analysis - Node Hot Spots App",
   "type": "DynamicDashboard",
   "description": "Displays Netcool/OMNIbus Event Hot Spots based upon Node",
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
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "Node"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "top20NodesWithEventsDaily"
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
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "Node"
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
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "Node"
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
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "Node"
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
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "Node"
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
               "columns": 2,
               "charts": [
                  {
                     "title": "Event Trend by Node (Hourly)",
                     "drillDownSupport": true,
                     "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count"
                     },
                     "data": {
                        "$ref": "hourlyEventTrendByNode"
                     },
                     "type": "Simple Bar Chart"
                  },
				  {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 Nodes with Events (Daily)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "dailyEventTrendByNode"
                        },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count"
                            }
                 },
				 {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 Nodes with Events (Weekly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "weeklyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count"
                 }
                 },
				 {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 Nodes with Events (Monthly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "monthlyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count"
                    }
                 },
				 {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 Nodes with Events (Yearly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "yearlyEventTrendByNode"
                    },
                    "parameters": {
                        "xaxis": "Node",
                        "yaxis": "count"
                    }
                 }
               ]
            }
         }
      }
   }
}