{
   "name": "Netcool/OMNIbus Event Analysis - Event Trend by Severity App",
   "type": "DynamicDashboard",
   "description": "Displays Netcool/OMNIbus Event Hot Spots based upon Severity over Time",
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
                  "timestamp": {
                     "date_histogram": {
                        "field": "timestamp",
                        "interval": "minute",
                        "outputDateFormat": "yyyy-MM-dd'T'HH:mm:ssZ",
                        "outputTimeZone": "UTC",
                        "nested_facet": {
                           "Severity": {
                              "terms": {
                                 "field": "Severity",
                                 "size": -1
                              }
                           }
                        }
                     }
                  }
               },
               "getAttributes": [
                  "Severity",
                  "timestamp"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "hourlyEventTrendBySeverity"
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
                  "timestamp": {
                     "date_histogram": {
                        "field": "timestamp",
                        "interval": "hour",
                        "outputDateFormat": "yyyy-MM-dd'T'HH:mm:ssZ",
                        "outputTimeZone": "UTC",
                        "nested_facet": {
                           "Severity": {
                              "terms": {
                                 "field": "Severity",
                                 "size": -1
                              }
                           }
                        }
                     }
                  }
               },
               "getAttributes": [
                  "Severity",
                  "timestamp"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "dailyEventTrendBySeverity"
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
                  "timestamp": {
                     "date_histogram": {
                        "field": "timestamp",
                        "interval": "day",
                        "outputDateFormat": "yyyy-MM-dd'T'HH:mm:ssZ",
                        "outputTimeZone": "UTC",
                        "nested_facet": {
                           "Severity": {
                              "terms": {
                                 "field": "Severity",
                                 "size": -1
                              }
                           }
                        }
                     }
                  }
               },
               "getAttributes": [
                  "Severity",
                  "timestamp"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "weeklyEventTrendBySeverity"
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
                  "timestamp": {
                     "date_histogram": {
                        "field": "timestamp",
                        "interval": "week",
                        "outputDateFormat": "yyyy-MM-dd'T'HH:mm:ssZ",
                        "outputTimeZone": "UTC",
                        "nested_facet": {
                           "Severity": {
                              "terms": {
                                 "field": "Severity",
                                 "size": -1
                              }
                           }
                        }
                     }
                  }
               },
               "getAttributes": [
                  "Severity",
                  "timestamp"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "monthlyEventTrendBySeverity"
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
                  "timestamp": {
                     "date_histogram": {
                        "field": "timestamp",
                        "interval": "month",
                        "outputDateFormat": "yyyy-MM-dd'T'HH:mm:ssZ",
                        "outputTimeZone": "UTC",
                        "nested_facet": {
                           "Severity": {
                              "terms": {
                                 "field": "Severity",
                                 "size": -1
                              }
                           }
                        }
                     }
                  }
               },
               "getAttributes": [
                  "Severity",
                  "timestamp"
               ]
            },
            "type": "FacetedSearchQuery",
            "name": "yearlyEventTrendBySeverity"
         }
      ],
      "output": {
         "type": "Data",
         "visualization": {
            "dashboard": {
               "columns": 3,
               "charts": [
                  {
                     "title": "Event Trend by Severity (Hourly)",
                     "drillDownSupport": true,
                     "parameters": {
                        "xaxis": "timestamp",
                        "yaxis": "count",
                        "categories": "Severity"
                     },
                     "data": {
                        "$ref": "hourlyEventTrendBySeverity"
                     },
                     "type": "Stacked Line Chart"
                  },
				  {
                            "type": "Stacked Line Chart",
                            "title": "Event Trend by Severity (Daily)",
							"drillDownSupport": true,
                            "data": {
                                "$ref": "dailyEventTrendBySeverity"
                            },
                            "parameters": {
                                "xaxis": "timestamp",
                                "yaxis": "count",
								"categories": "Severity"
                            }
                 },
				 {
                            "type": "Stacked Line Chart",
                            "title": "Event Trend by Severity (Weekly)",
							"drillDownSupport": true,
                            "data": {
                                "$ref": "weeklyEventTrendBySeverity"
                            },
                            "parameters": {
                                "xaxis": "timestamp",
                                "yaxis": "count",
								"categories": "Severity"
                            }
                 },
				 {
                            "type": "Stacked Line Chart",
                            "title": "Event Trend by Severity (Monthly)",
							"drillDownSupport": true,
                            "data": {
                                "$ref": "monthlyEventTrendBySeverity"
                            },
                            "parameters": {
                                "xaxis": "timestamp",
                                "yaxis": "count",
								"categories": "Severity"
                            }
                 },
				 {
                            "type": "Stacked Line Chart",
                            "title": "Event Trend by Severity (Yearly)",
							"drillDownSupport": true,
                            "data": {
                                "$ref": "yearlyEventTrendBySeverity"
                            },
                            "parameters": {
                                "xaxis": "timestamp",
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