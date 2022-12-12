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
    <uri>googledrive</uri>
    <options>
        <accessToken>AAABBBCCCDDDEEEFFFGGGHHH</accessToken>
        <refreshToken>AAABBBCCCDDDEEEFFFGGGHHH</refreshToken>
        <directoryId>AAABBBCCCDDDEEEFFFGGGHHH</directoryId>
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
      "directoryId": "AAABBBCCCDDDEEEFFFGGGHHH"
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
```

## Camel 2

#### XML

```xml
  <route id="66d6ab71-6f43-11ed-98ef-1921d2513c6b">
    <from uri="activemq:ID_627a629b38c74a06a0000140_test_c2601910-6fcd-11ed-845b-fbaa1700ffee"/>
    <to uri="googledrive://?accessToken=AAABBBCCCDDDEEEFFFGGGHHH&amp;refreshToken=AAABBBCCCDDDEEEFFFGGGHHH&amp;directoryId=AAABBBCCCDDDEEEFFFGGGHHH"/>
    <to uri="activemq:ID_627a629b38c74a06a0000140_test_66d6ab71-6f43-11ed-98ef-1921d2513c6b?timeToLive=86400000"/>
</route>
```



