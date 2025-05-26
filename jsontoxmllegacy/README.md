# jsontoxml

Transforms JSON to XML (Legacy)

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
    <uri>jsontoxmllegacy://</uri>
    <options>
        <elementName>element</elementName>
        <arrayName>array</arrayName>
        <rootName></rootName>
        <namespaceLenient>false</namespaceLenient>
        <typeHints>false</typeHints>
    </options>
</step>
```

#### JSON

```json
{"step": {
  "id": "3",
  "type": "action",
  "uri": "jsontoxmllegacy://",
  "options": {
    "elementName": "element",
    "arrayName": "array",
    "rootName": "",
    "namespaceLenient": "false",
    "typeHints": "false"
  }
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "jsontoxmllegacy://"
  options:
    elementName: "element"
    arrayName: "array"
    rootName: ""
    namespaceLenient: false
    typeHints: false
```

## Camel 2

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="jsontoxmllegacy://??elementName=element&amp;arrayName=array&amp;rootName=&amp;namespaceLenient=false&amp;typeHints=false"/>
    <to uri="direct:b"/>
</route>
```



