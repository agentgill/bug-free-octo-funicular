# Trigger Framework Unlocked Package

Create package

```zsh
sfdx force:package:create -n TriggerFramework -d "SFDC Trigger Framework" -t Unlocked -r packages/sfdc-trigger-framework -e -v devops
```

Create package version

```zsh
sfdx force:package:version:create -p TriggerFramework -x -w 10 -v devops 
```

sfdx-project.json for package

```json
{
    "packageDirectories": [
        {
            "path": "packages/sfdc-trigger-framework",
            "default": true
        },
        {
            "path": "packages/sfdc-trigger-framework",
            "package": "TriggerFramework",
            "versionName": "ver 1.0",
            "versionNumber": "1.0.0.NEXT",
            "default": false
        }
    ],
    "namespace": "",
    "sfdcLoginUrl": "https://login.salesforce.com",
    "sourceApiVersion": "47.0",
    "packageAliases": {
        "TriggerFramework": "0Ho6g0000004CTVCA2",
        "TriggerFramework@0.1.0-1": "04t6g0000068dQrAAI",
        "TriggerFramework@1.0.0-1": "04t6g0000068dhSAAQ"
    }
}
```

List package versions

```zsh
sfdx force:package:version:list -v devops
```

Install Package

```zsh
sfdx force:package:install -p 04t6g0000068dhSAAQ -w 10  
```