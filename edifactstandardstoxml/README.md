# edifactstandardstoxml

Transform Edifact Standards to XML.

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
    <uri>edifactstandardstoxml:IFTMIN_D96A_UTF_8</uri>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "edifactstandardstoxml:IFTMIN_D96A_UTF_8"
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "edifactstandardstoxml:IFTMIN_D96A_UTF_8"    
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="edifact-standards:IFTMIN_D96A_UTF_8"/>
    <to uri="direct:b"/>
</route>
```