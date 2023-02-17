# component

Send HL7 payload via MLLP protocol

### Component Type

Custom (Dovetail)

### Prerequisites

No

## Tests

- camel2: happy flow
- dil: happy flow

# XML formatted HL7

## DIL

#### XML

```xml
<step>
    <id>2</id>
    <type>action</type>
    <uri>hl7xml:0.0.0.0:10000</uri>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 2,
    "type": "action",
    "uri": "hl7xml:0.0.0.0:10000"
  }
}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "hl7xml:0.0.0.0:10000"
```

## Camel 2

#### XML

```xml
<route id="f773da10-74b9-11ed-812e-43e1c41b9b4e">
    <from uri="activemq:ID_627a629238c74a037400043f_test_2eb26b60-d062-11ec-83f5-3747809ef661"/>
    <bean ref="XmlToHl7Converter"/>
    <to uri="mllp:localhost:10000"/>
    <to uri="activemq:ID_627a629238c74a037400043f_test_f773da10-74b9-11ed-812e-43e1c41b9b4e?timeToLive=86400000"/>
</route>
```
