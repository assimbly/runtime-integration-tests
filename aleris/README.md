# aleris

Converts plain text certificates for rolls of aluminium as produced by Aleris into XML certificates

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
    <uri>aleris</uri>
    <options>
        <id>46689a90-d0f8-11ec-83f5-3747809ef661</id>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 3,
    "type": "action",
    "uri": "aleris",
    "options": {
      "id": "46689a90-d0f8-11ec-83f5-3747809ef661"
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
  uri: "aleris"
    options:
      id: "46689a90-d0f8-11ec-83f5-3747809ef661"
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="aleris:46689a90-d0f8-11ec-83f5-3747809ef661"/>
    <to uri="direct:b"/>
</route>
```


    


