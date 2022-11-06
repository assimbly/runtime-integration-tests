# edifacttoxml

Transform Edifact to XML.

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
    <uri>edifacttoxml</uri>
    <options>
        <edifactType>d96a</edifactType>
    </options>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "edifacttoxml",
  "options": {"edifactType": "d96a"}
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "edifacttoxml"
  options:
    edifactType: "d96a"
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="dataformat:edifact:marshal?edifactType=d96a"/>
    <to uri="direct:b"/>
</route>
```