# xmltojson

Test to convert XML to a JSON file.

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
    <uri>xmltocsv</uri>
    <options>
        <includeHeader>true</includeHeader>
        <includeIndexColumn>false</includeIndexColumn>
        <indexColumnName>line</indexColumnName>
        <orderHeaders>UNORDERED</orderHeaders>
        <quoteFields>ALL_FIELDS</quoteFields>
        <delimiter>LA==</delimiter>
        <lineSeparator>XG4=</lineSeparator>
    </options>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "xmltocsv",
  "options": {
    "indexColumnName": "line",
    "quoteFields": "ALL_FIELDS",
    "includeIndexColumn": false,
    "delimiter": "LA==",
    "orderHeaders": "UNORDERED",
    "lineSeparator": "XG4=",
    "includeHeader": true
  }
}}
```

#### YAML

```yaml
---
step:
  options:
    indexColumnName: "line"
    quoteFields: "ALL_FIELDS"
    includeIndexColumn: false
    delimiter: "LA=="
    orderHeaders: "UNORDERED"
    lineSeparator: "XG4="
    includeHeader: true
  id: 3
  type: "action"
  uri: "xmltocsv"
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="xmltocsv://?includeHeader=true&amp;includeIndexColumn=false&amp;indexColumnName=line&amp;delimiter=RAW(LA==)&amp;lineSeparator=RAW(XG4=)&amp;orderHeaders=UNORDERED&amp;quoteFields=ALL_FIELDS&amp;xPathExpression="/>
    <to uri="direct:b"/>
</route>
```

