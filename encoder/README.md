# component

Transform the encoding of messages

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
    <uri>encoder://UTF-8?targetCharset=ISO-8859-1</uri>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 3,
    "type": "action",
    "uri": "encoder://UTF-8?targetCharset=ISO-8859-1"
  }
}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "encoder://UTF-8?targetCharset=ISO-8859-1"
```

## Camel 2

#### XML

```xml
<route id="79786120-d0f5-11ec-83f5-3747809ef661">
    <from uri="activemq:ID_627a680e38c74a000e000862_test_27975431-544c-11ed-bc33-3b0a13123346"/>
    <to uri="encoder://UTF-8?targetCharset=ISO-8859-1"/>
    <to uri="activemq:ID_627a680e38c74a000e000862_test_79786120-d0f5-11ec-83f5-3747809ef661?timeToLive=86400000"/>
</route>
```



