# component

Create/Update variables in a Mongo Database

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
    <id>2</id>
    <type>action</type>
    <uri>globalvariables://MyVariable</uri>
    <options>
        <operation>SET</operation>
        <value>RAW(dGVzdA==)</value>
        <encrypt>false</encrypt>
        <modifier>ComponentsTests/GetVariable</modifier>
        <environment>test</environment>
        <tenant>default</tenant>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 2,
    "type": "action",
    "uri": "globalvariables://MyVariable",
    "options": {
      "operation": "SET",
      "value": "RAW(dGVzdA==)",
      "encrypt": "false",
      "modifier": "ComponentsTests/GetVariable",
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
  id: 2
  type: "action"
  uri: "globalvariables://MyVariable"
  options:
    operation: "SET"
    value: "RAW(dGVzdA==)"
    encrypt: "false"
    modifier: "ComponentsTests/GetVariable"
    environment: "test"
    tenant: "default"
```

## Camel 2

#### XML

```xml
<route id="33fccc80-546c-11ed-9c54-bf06f28b5fc9">
    <from uri="activemq:ID_627a64b238c74a06a00001e4_test_2faf4c80-d063-11ec-83f5-3747809ef661"/>
    <to uri="globalvariables://MyVariable?operation=SET&amp;value=RAW(dGVzdA==)&amp;encrypt=false&amp;modifier=ComponentsTests/GetVariable&amp;environment=test&amp;tenant=default"/>
    <to uri="activemq:ID_627a64b238c74a06a00001e4_test_33fccc80-546c-11ed-9c54-bf06f28b5fc9?timeToLive=86400000"/>
</route>
```



