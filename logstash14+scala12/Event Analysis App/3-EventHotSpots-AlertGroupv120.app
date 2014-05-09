{
   "name": "Netcool/OMNIbus Event Analysis - AlertGroup Hot Spots App",
   "type": "DynamicDashboard",
   "description": "Displays Netcool/OMNIbus Event Hot Spots based upon AlertGroup",
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
					"AlertGroup": {
						"terms": {
						"field": "AlertGroup",
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "AlertGroup"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "top20AlertGroupsWithEventsDaily"
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
					"AlertGroup": {
						"terms": {
						"field": "AlertGroup",
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "AlertGroup"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "dailyEventTrendByAlertGroup"
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
					"AlertGroup": {
						"terms": {
						"field": "AlertGroup",
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "AlertGroup"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "weeklyEventTrendByAlertGroup"
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
					"AlertGroup": {
						"terms": {
						"field": "AlertGroup",
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "AlertGroup"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "monthlyEventTrendByAlertGroup"
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
					"AlertGroup": {
						"terms": {
						"field": "AlertGroup",
						"size": 20
						}
					}
				},
               "getAttributes": [
                  "AlertGroup"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "yearlyEventTrendByAlertGroup"
        } 
      ],
      "output": {
         "type": "Data",
         "visualization": {
            "dashboard": {
               "columns": 2,
               "charts": [
                  {
                     "title": "Event Trend by AlertGroup (Hourly)",
                     "drillDownSupport": true,
                     "parameters": {
                        "xaxis": "AlertGroup",
                        "yaxis": "count"
                     },
                     "data": {
                        "$ref": "hourlyEventTrendByAlertGroup"
                     },
                     "type": "Simple Bar Chart"
                  },
				  {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 AlertGroups with Events (Daily)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "dailyEventTrendByAlertGroup"
                        },
                    "parameters": {
                        "xaxis": "AlertGroup",
                        "yaxis": "count"
                            }
                 },
				 {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 AlertGroups with Events (Weekly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "weeklyEventTrendByAlertGroup"
                    },
                    "parameters": {
                        "xaxis": "AlertGroup",
                        "yaxis": "count"
                 }
                 },
				 {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 AlertGroups with Events (Monthly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "monthlyEventTrendByAlertGroup"
                    },
                    "parameters": {
                        "xaxis": "AlertGroup",
                        "yaxis": "count"
                    }
                 },
				 {
                    "type": "Simple Bar Chart",
                    "title": "Top 20 AlertGroups with Events (Yearly)",
					"drillDownSupport": true,
                    "data": {
                        "$ref": "yearlyEventTrendByAlertGroup"
                    },
                    "parameters": {
                        "xaxis": "AlertGroup",
                        "yaxis": "count"
                    }
                 }
               ]
            }
         }
      }
   }
}