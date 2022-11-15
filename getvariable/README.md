# component

Read variables in a Mongo Database

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
    <id>3</id>
    <type>action</type>
    <uri>globalvariables://MyVariable</uri>
    <options>
        <operation>GET</operation>
        <header>MyVariable</header>
        <environment>test</environment>
        <tenant>default</tenant>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 3,
    "type": "action",
    "uri": "globalvariables://MyVariable",
    "options": {
      "operation": "GET",
      "header": "MyVariable",
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
  id: 3
  type: "action"
  uri: "globalvariables://MyVariable"
  options:
    operation: "GET"
    header: "MyVariable"
    environment: "test"
    tenant: "default"
```

## Camel 2

#### XML

```xml
<route id="de3f3db1-d08f-11ec-83f5-3747809ef661">
    <from uri="activemq:ID_627a64b238c74a06a00001e4_test_33fccc80-546c-11ed-9c54-bf06f28b5fc9"/>
    <to uri="globalvariables://MyVariable?operation=GET&amp;header=MyVariable&amp;environment=test&amp;tenant=default"/>
    <to uri="activemq:ID_627a64b238c74a06a00001e4_test_2d084691-5474-11ed-8791-23ef0698f627?timeToLive=86400000"/>
</route>
```



