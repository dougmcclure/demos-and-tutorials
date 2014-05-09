{
    "name": "Event Analysis and Reduction App Intro",
    "description": "Event Analysis and Reduction App Intro",
    "customLogic": {
        "script": "EventAnalysisAppIntro.py",
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
                            "title": "Event Analysis and Reduction App Intro",
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