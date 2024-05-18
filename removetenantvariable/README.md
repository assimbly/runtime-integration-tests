# component

Remove variables in a Mongo Database

### Component Type

Custom (Dovetail)

### Prerequisites

MongoDB/Frontend must be running

## Tests

- camel2: happy flow
- dil: happy flow

# Config Examples

## DIL

#### XML

```xml
<step>
    <id>5</id>
    <type>action</type>
    <uri>globalvariables://MyVariable</uri>
    <options>
        <operation>DELETE</operation>
        <environment>test</environment>
        <tenant>default</tenant>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 5,
    "type": "action",
    "uri": "globalvariables://MyVariable",
    "options": {
      "operation": "DELETE",
      "environment": "test",
      "tenant": "default"
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 5
  type: "action"
  uri: "globalvariables://MyVariable"
  options:
    operation: "DELETE"
    environment: "test"
    tenant: "default"
```

## Camel 2

#### XML

```xml
<route id="2d084691-5474-11ed-8791-23ef0698f627">
    <from uri="activemq:ID_627a64b238c74a06a00001e4_test_de3f3db1-d08f-11ec-83f5-3747809ef661"/>
    <to uri="globalvariables://MyVariable?operation=DELETE&amp;environment=test&amp;tenant=default"/>
    <to uri="activemq:ID_627a64b238c74a06a00001e4_test_2d084691-5474-11ed-8791-23ef0698f627?timeToLive=86400000"/>
</route>
```



