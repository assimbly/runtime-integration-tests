# component

Receive HL7 payload via MLLP protocol

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
    <id>1</id>
    <type>source</type>
    <uri>hl7xml:0.0.0.0:10000</uri>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 2,
    "type": "source",
    "uri": "hl7xml:0.0.0.0:10000"
  }
}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "source"
  uri: "hl7xml:0.0.0.0:10000"
```

## Camel 2

#### XML

```xml
<route id="615f0281-d08f-11ec-83f5-3747809ef661">
    <from uri="mllp:0.0.0.0:10000"/>
    <unmarshal>
        <hl7 validate="true"/>
    </unmarshal>
    <bean ref="Hl7ToXmlConverter"/>
    <to uri="activemq:ID_627a62f138c74a000e000753_test_615f0281-d08f-11ec-83f5-3747809ef661?timeToLive=86400000"/>
</route>
```
