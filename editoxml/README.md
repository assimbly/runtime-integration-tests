# editoxml

Transform EDI to XML.

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
    <uri>editoxml</uri>
    <options>
        <segment>LB</segment>
        <field>~</field>
        <component>^</component>
        <subComponent>!</subComponent>
    </options>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "editoxml",
  "options": {
    "component": "^",
    "field": "~",
    "segment": "LB",
    "subComponent": "!"
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
    <to uri="dataformat:edi:marshal?segment=LB&amp;field=~&amp;component=^&amp;subComponent=!"/>
    <to uri="direct:b"/>
</route>
```
