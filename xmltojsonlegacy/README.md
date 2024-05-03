# xmltojson

Test to convert XML to a JSON file (Legacy)

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
    <uri>xmltojsonlegacy</uri>
    <options>
        <forceTopLevelObject>false</forceTopLevelObject>
        <skipWhitespace>false</skipWhitespace>
        <trimSpaces>false</trimSpaces>
        <skipNamespaces>false</skipNamespaces>
        <removeNamespacePrefixes>false</removeNamespacePrefixes>
        <typeHints>false</typeHints>
    </options>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "xmltojsonlegacy",
  "options": {
    "forceTopLevelObject": false,
    "skipWhitespace": false,
    "trimSpaces": false,
    "skipNamespaces": false,
    "removeNamespacePrefixes": false,
    "typeHints": false
  }
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "xmltojsonlegacy"  
  options:
    forceTopLevelObject: false
    skipWhitespace: false
    trimSpaces: false"
    skipNamespaces: false
    removeNamespacePrefixes: false
    typeHints: false
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="xmltojsonlegacy://??forceTopLevelObject=false&amp;skipWhitespace=false&amp;trimSpaces=false&amp;skipNamespaces=false&amp;removeNamespacePrefixes=false&amp;typeHints=false"/>
    <to uri="direct:b"/>
</route>
```



