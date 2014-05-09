{
    "name": "10 Steps for Event Analysis and Reduction",
    "description": "10 Steps for Event Analysis and Reduction",
    "customLogic": {
        "script": "10StepsEventAnalysisReduction.py",
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
                            "title": "10 Steps for Event Analysis and Reduction",
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