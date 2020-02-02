# Salesforce Test Factory Unlocked Package

Create Package

```zsh
sfdx force:package:create -n TestFactory -d "SFDC Test Factory" -t Unlocked -r packages/sfdc-test-factory -e -v devops
```

Create Package Version

```zsh
sfdx force:package:version:create -p TestFactory -x -w 10 -v devops
```

sfdx-project.json for package

```json
{
  "packageDirectories": [
    {
      "path": "force-app",
      "default": true
    },
    {
      "path": "packages/sfdc-test-factory",
      "default": false,
      "package": "TestFactory",
      "versionName": "ver 1.0",
      "versionNumber": "1.2.0.NEXT"
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
    "TriggerFramework@1.0.0-1": "04t6g0000068dhSAAQ",
    "TestFactory": "0Ho6g0000004CTaCAM",
    "TestFactory@0.1.0-1": "04t6g0000068hZ1AAI",
    "TestFactory@1.2.0-1": "04t6g0000068hZ6AAI"
  }
}

```

List package versions

```zsh
sfdx force:package:version:list -v devops
```

Install Package

```zsh
sfdx force:package:install -p 04t6g0000068hZ6AAI -w 10  
```
