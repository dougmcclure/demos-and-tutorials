{
    "name": "Event Analysis Information Links",
    "description": "Links to Event Analysis Information",
    "customLogic": {
        "script": "EventAnalysisInfoLinks.py",
        "description": "Load html from a url and return",
        "parameters": [],
        "output": {
            "type": "Data",
            "visualization": {
                "dashboard": {
                    "columns": 1,
                    "charts": [
                        {
                            "type": "html",
                            "title": "Event Analysis Information Links",
                            "data": {
                                "$ref": "htmlData"
                            },
                            "parameters": {
                                "html": "text"
                            }
                        }
                    ]
                }
            }
        }
    }
}