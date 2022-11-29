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
    <uri>googledrive</uri>
    <options>
        <accessToken>AAABBBCCCDDDEEEFFFGGGHHH</accessToken>
        <refreshToken>AAABBBCCCDDDEEEFFFGGGHHH</refreshToken>
        <directoryId>AAABBBCCCDDDEEEFFFGGGHHH</directoryId>
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
    "id": 4,
    "type": "action",
    "uri": "googledrive",
    "options": {
      "accessToken": "AAABBBCCCDDDEEEFFFGGGHHH",
      "refreshToken": "AAABBBCCCDDDEEEFFFGGGHHH",
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
  id: 4
  type: "action"
  uri: "googledrive"
  options:
    accessToken: "AAABBBCCCDDDEEEFFFGGGHHH"
    refreshToken: "AAABBBCCCDDDEEEFFFGGGHHH"
    directoryId: "AAABBBCCCDDDEEEFFFGGGHHH"
    delay: "1000"
    initialDelay: "1000"
    moveTo: ".dovetail"
    gSuiteFiles: "Ignore"
```

## Camel 2

#### XML

```xml
  <route id="76a0e781-d08f-11ec-83f5-3747809ef661">
    <from uri="googledrive://?accessToken=AAABBBCCCDDDEEEFFFGGGHHH&amp;refreshToken=AAABBBCCCDDDEEEFFFGGGHHH&amp;directoryId=AAABBBCCCDDDEEEFFFGGGHHH&amp;delay=1000&amp;initialDelay=1000&amp;moveTo=.dovetail&amp;gSuiteFiles=Ignore"/>
    <to uri="activemq:ID_627a62f838c74a06a0000184_test_76a0e781-d08f-11ec-83f5-3747809ef661"/>
</route>
```



