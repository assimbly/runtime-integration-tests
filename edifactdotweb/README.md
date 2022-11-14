# component

Custom version of handling EDIFACT made for VISMA (.net services)

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
    <uri>edifact-dotweb:VRZUIM_1941</uri>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 3,
    "type": "action",
    "uri": "edifact-dotweb:VRZUIM_1941"
  }
}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "edifact-dotweb:VRZUIM_1941"
```

## Camel 2

#### XML

```xml
<route id="1eca4f30-d0f6-11ec-83f5-3747809ef661">
    <from uri="activemq:ID_627a684e38c74a0013000783_test_57a6c390-514a-11ed-8c19-595d2b7eda88"/>
    <to uri="edifact-dotweb://VRZUIM_1941"/>
    <to uri="activemq:ID_627a684e38c74a0013000783_test_1eca4f30-d0f6-11ec-83f5-3747809ef661?timeToLive=86400000"/>
</route>
```



