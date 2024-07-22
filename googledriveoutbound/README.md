# component

Send files to Google Drive

### Component Type

Custom (Dovetail)

### Prerequisites

No

## Tests

- camel2: happy flow
- dil: happy flow

# Config Examples

## DIL

#### XML

```xml
<step>
    <id>4</id>
    <type>action</type>
    <uri>googledrive://</uri>
    <options>
        <accessToken>RAW(@{OAuthGoogleDrive})</accessToken>
        <tenant>dovetail</tenant>
        <directoryId>1QjgwMQB395fa0iuI_zHEew5_RYxiwJFV</directoryId>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": "4",
    "type": "action",
    "uri": "googledrive://",
    "options": {
      "accessToken": "RAW(@{OAuthGoogleDrive})",
      "tenant": "dovetail",
      "directoryId": "1QjgwMQB395fa0iuI_zHEew5_RYxiwJFV"
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 4
  type: "action"
  uri: "googledrive://"
  options:
    accessToken: "RAW(@{OAuthGoogleDrive})"
    tenant: "dovetail"
    directoryId: "1QjgwMQB395fa0iuI_zHEew5_RYxiwJFV"
```

## Camel 2

#### XML

```xml
<route id="eb69c4c5-99d5-4e8e-8730-ca11c97cbcf8">
    <from uri="direct:ID_6646047e582722013f000091_test_cfdefd10-3d0e-4bdb-bd4f-774feb7917ec"/>
    <to uri="google-drive://?accessToken=@{OAuthGoogleDrive}&amp;tenant=dovetail&amp;directoryId=1QjgwMQB395fa0iuI_zHEew5_RYxiwJFV"/>
    <to uri="log:nl.kabisa.flux//?skipBodyLineSeparator=false&amp;multiline=true&amp;showHeaders=false&amp;showBody=true&amp;showBodyType=true&amp;showFiles=true&amp;showException=false&amp;showStackTrace=false&amp;showCaughtException=false"/>
</route>
```



