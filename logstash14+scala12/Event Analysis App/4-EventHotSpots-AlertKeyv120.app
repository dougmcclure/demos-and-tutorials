{
   "name": "Netcool/OMNIbus Event Analysis - AlertKey Hot Spots App",
   "type": "DynamicDashboard",
   "description": "Displays Netcool/OMNIbus Event Hot Spots based upon AlertKey",
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
					"AlertKey": {
						"terms": {
						"field": "AlertKey",
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "AlertKey"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "top20AlertKeysWithEventsDaily"
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
					"AlertKey": {
						"terms": {
						"field": "AlertKey",
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "AlertKey"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "dailyEventTrendByAlertKey"
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
					"AlertKey": {
						"terms": {
						"field": "AlertKey",
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "AlertKey"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "weeklyEventTrendByAlertKey"
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
					"AlertKey": {
						"terms": {
						"field": "AlertKey",
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "AlertKey"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "monthlyEventTrendByAlertKey"
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
					"AlertKey": {
						"terms": {
						"field": "AlertKey",
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "AlertKey"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "yearlyEventTrendByAlertKey"
        } 
      ],
      "output": {
         "type": "Data",
         "visualization": {
            "dashboard": {
               "columns": 2,
               "charts": [
                  {
                     "title": "Event Trend by AlertKey (Hourly)",
                     "drillDownSupport": true,
                     "parameters": {
                        "xaxis": "AlertKey",
                        "yaxis": "count"
                     },
                     "data": {
                        "$ref": "hourlyEventTrendByAlertKey"
                     },
                     "type": "Simple Bar Chart"
                  },
				  {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 AlertKeys with Events (Daily)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "dailyEventTrendByAlertKey"
                        },
                    "parameters": {
                        "xaxis": "AlertKey",
                        "yaxis": "count"
                            }
                 },
				 {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 AlertKeys with Events (Weekly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "weeklyEventTrendByAlertKey"
                    },
                    "parameters": {
                        "xaxis": "AlertKey",
                        "yaxis": "count"
                 }
                 },
				 {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 AlertKeys with Events (Monthly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "monthlyEventTrendByAlertKey"
                    },
                    "parameters": {
                        "xaxis": "AlertKey",
                        "yaxis": "count"
                    }
                 },
				 {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 AlertKeys with Events (Yearly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "yearlyEventTrendByAlertKey"
                    },
                    "parameters": {
                        "xaxis": "AlertKey",
                        "yaxis": "count"
                    }
                 }
               ]
            }
         }
      }
   }
}