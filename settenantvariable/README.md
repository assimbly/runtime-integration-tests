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
    <uri>tenantvariables://MyVariable</uri>
    <options>
        <operation>SET</operation>
        <expressionType>constant</expressionType>
        <value>RAW(eWVzISEh)</value>
        <encrypt>false</encrypt>
        <modifier>RAW(Groupless/SetTenantVar)</modifier>
        <tenant>default</tenant>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": "2",
    "type": "action",
    "uri": "tenantvariables://MyVariable",
    "options": {
      "operation": "SET",
      "expressionType": "constant",
      "value": "RAW(eWVzISEh)",
      "encrypt": "false",
      "modifier": "Groupless/SetTenantVar",
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
    <to uri="tenantvariables://MyVariable?operation=SET&amp;expressionType=constant&amp;value=RAW(eWVzISEh)&amp;encrypt=false&amp;modifier=RAW(Groupless/SetTenantVar)&amp;tenant=default"/>
    <to uri="activemq:ID_627a64b238c74a06a00001e4_test_33fccc80-546c-11ed-9c54-bf06f28b5fc9?timeToLive=86400000"/>
</route>
```



