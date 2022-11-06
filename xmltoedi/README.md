# xmltoedi

Transform XML to EDI.

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
    <uri>xmltoedi</uri>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "xmltoedi"
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "xmltoedi"
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="dataformat:edi:unmarshal"/>
    <to uri="direct:b"/>
</route>
```



