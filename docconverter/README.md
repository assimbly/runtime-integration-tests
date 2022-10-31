# docconverter

Converts between XML, JSON, YAML and CSV data formats.

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
    <uri>docconverter:xmltojson</uri>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "docconverter:xmltojson"
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "docconverter:xmltojson"
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="docconverter:xml2json"/>
    <to uri="direct:b"/>
</route>
```


    


