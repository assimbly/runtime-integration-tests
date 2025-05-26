# component

Get file from Google Drive

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
    <id>1</id>
    <type>source</type>
    <uri>googledrive://</uri>
    <options>
        <accessToken>RAW(@{OAuthGoogleDrive})</accessToken>
        <tenant>dovetail</tenant>
        <directoryId>1QjgwMQB395fa0iuI_zHEew5_RYxiwJFV</directoryId>
        <delay>1000</delay>
        <initialDelay>1000</initialDelay>
        <moveTo>.dovetail</moveTo>
        <gSuiteFiles>Ignore</gSuiteFiles>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": "1",
    "type": "source",
    "uri": "googledrive://",
    "options": {
      "accessToken": "RAW(@{OAuthGoogleDrive})",
      "tenant": "dovetail",
      "directoryId": "1QjgwMQB395fa0iuI_zHEew5_RYxiwJFV",
      "delay": "1000",
      "initialDelay": "1000",
      "moveTo": ".dovetail",
      "gSuiteFiles": "Ignore"
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 1
  type: "source"
  uri: "googledrive://"
  options:
    accessToken: "RAW(@{OAuthGoogleDrive})"
    refreshToken: "dovetail"
    directoryId: "1QjgwMQB395fa0iuI_zHEew5_RYxiwJFV"
    delay: "1000"
    initialDelay: "1000"
    moveTo: ".dovetail"
    gSuiteFiles: "Ignore"
```

## Camel 2

#### XML

```xml
<route id="4079252f-3d85-4896-bc7a-d5343792039a">
    <from uri="googledrive://?accessToken=@{OAuthGoogleDrive}&amp;tenant=dovetail&amp;directoryId=1QjgwMQB395fa0iuI_zHEew5_RYxiwJFV&amp;delay=1000&amp;initialDelay=1000&amp;moveTo=.dovetail&amp;gSuiteFiles=Ignore"/>
    <convertBodyTo type="java.lang.String"/>
    <to uri="direct:ID_627a631138c74a000e000764_test_9850b6d1-d08f-11ec-83f5-3747809ef661?exchangePattern=InOut"/>
</route>
```



