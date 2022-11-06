# xmltoedifactstandards

Transform XML to edifact standards.

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
    <id>3</id>
    <type>action</type>
    <uri>xmltoedifactstandards:XML_TO_IFTFCC_D00B</uri>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "xmltoedifactstandards:XML_TO_IFTFCC_D00B"
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "xmltoedifactstandards:XML_TO_IFTFCC_D00B"
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="edifact-standards:XML_TO_IFTFCC_D00B"/>
    <to uri="direct:b"/>
</route>
```
