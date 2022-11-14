# wiretaps

Taps (copies) messages to a wiretap endpoint

### Component Type

Default (Camel)

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
    <uri>wiretap:activemq:ID_1234</uri>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "xmltojson",
  "options": {
    "hasTypes": false,
    "removeNamespaces": false,
    "typeValueMismatch": "ORIGINAL",
    "removeRoot": false,
    "keepStrings": false
  }
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "xmltojson"  
  options:
    hasTypes: false
    removeNamespaces: false
    typeValueMismatch: "ORIGINAL"
    removeRoot: false
    keepStrings: false
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <wireTap uri="activemq:ID_627a592538c74a000e000623_test_ab71f070-d068-11ec-83f5-3747809ef661_BottomCenter" executorServiceRef="wiretapProfile"/>
    <to uri="direct:b"/>
</route>
```