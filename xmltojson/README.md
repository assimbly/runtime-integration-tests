# xmltojson

Test to convert XML to a JSON file.

### Component Type

Custom (Dovetail)

### Prerequisites

No

## Tests

- camel2: happy flow
- dil: happy flow

## Config Examples


# Config Examples

## DIL

#### XML

```xml
<step>
    <id>3</id>
    <type>action</type>
    <uri>xmltojson</uri>
    <options>
        <keepStrings>false</keepStrings>
        <removeNamespaces>false</removeNamespaces>
        <removeRoot>false</removeRoot>
        <hasTypes>false</hasTypes>
        <typeValueMismatch>ORIGINAL</typeValueMismatch>
    </options>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "xmltojson",
  "options": {
    "hasTypes": false,
    "removeNamespaces": false,
    "typeValueMismatch": "ORIGINAL",
    "removeRoot": false,
    "keepStrings": false
  }
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "xmltojson"  
  options:
    hasTypes: false
    removeNamespaces: false
    typeValueMismatch: "ORIGINAL"
    removeRoot: false
    keepStrings: false
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="dataformat:custom-xmljson:marshal?keepStrings=false&amp;removeNamespaces=false&amp;removeRoot=false&amp;hasTypes=false&amp;typeValueMismatch=ORIGINAL"/>
    <to uri="direct:b"/>
</route>
```



