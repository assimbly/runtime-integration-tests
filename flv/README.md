# component

Parse a file containing fixed-length values into XML

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
    <uri>flv:2b611b10-d0f2-11ec-83f5-3747809ef661</uri>
    <options>
        <YAY>header[3]body[5]</YAY>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 3,
    "type": "action",
    "uri": "flv:2b611b10-d0f2-11ec-83f5-3747809ef661",
    "options": {
      "YAY": "header[3]body[5]"
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "flv:2b611b10-d0f2-11ec-83f5-3747809ef661"
  options:
    YAY: "header[3]body[5]"
```

## Camel 2

#### XML

```xml
<route id="2b611b10-d0f2-11ec-83f5-3747809ef661">
    <from uri="activemq:ID_627a64e638c74a06a00001f5_test_912129e1-5450-11ed-bc33-3b0a13123346"/>
    <to uri="flv:2b611b10-d0f2-11ec-83f5-3747809ef661?YAY=header[3]body[5]"/>
    <to uri="activemq:ID_627a64e638c74a06a00001f5_test_2b611b10-d0f2-11ec-83f5-3747809ef661?timeToLive=86400000"/>
</route>
```



