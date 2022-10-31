# xmltoexcel

Test to convert XML to a Excel file.

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
    <uri>xmltoexcel</uri>
    <options>
        <includeHeader>true</includeHeader>
        <includeIndexColumn>false</includeIndexColumn>
        <indexColumnName>line</indexColumnName>
        <orderHeaders>UNORDERED</orderHeaders>
        <excelFormat>XLSX</excelFormat>
    </options>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "xmltoexcel",
  "options": {
    "indexColumnName": "line",
    "includeIndexColumn": false,
    "excelFormat": "XLSX",
    "orderHeaders": "UNORDERED",
    "includeHeader": true
  }
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "xmltoexcel"  
  options:
    indexColumnName: "line"
    includeIndexColumn: false
    excelFormat: "XLSX"
    orderHeaders: "UNORDERED"
    includeHeader: true
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="xml2excel://?includeHeader=true&amp;includeIndexColumn=false&amp;indexColumnName=line&amp;orderHeaders=UNORDERED&amp;excelFormat=XLSX"/>
    <to uri="direct:b"/>
</route>
```