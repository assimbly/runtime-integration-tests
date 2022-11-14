# exceltoxml

Transform from Excel to XML

### Component Type

Custom (Dovetail)

### Prerequisites

It expected that the Excel simpelsheet.xlsx in the home directory.

## Tests

- camel2: happy flow
- dil: happy flow


# Config Examples

## DIL

#### XML

```xml
<step>
    <id>5</id>
    <type>action</type>
    <uri>exceltoxml</uri>
    <options>
        <rules>RAW(WyJ7XCJjZWxsUmFuZ2VcIjpcIkExOkE0XCIsXCJkaXNjYXJkRW1wdHlcIjpmYWxzZSxcImhlYWRlclJvd1wiOmZhbHNlLFwibmFtZVwiOlwibmFtZXNcIixcInRyYW5zcG9zZVwiOmZhbHNlLFwid29ya3NoZWV0XCI6XCJTaGVldDFcIn0iXQ==)</rules>
    </options>
</step>
```

#### JSON

```json

```

#### YAML

```yaml

```

## Camel 2

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="excel2xml://?rules=RAW(WyJ7XCJjZWxsUmFuZ2VcIjpcIkExOkE0XCIsXCJkaXNjYXJkRW1wdHlcIjpmYWxzZSxcImhlYWRlclJvd1wiOmZhbHNlLFwibmFtZVwiOlwibmFtZXNcIixcInRyYW5zcG9zZVwiOmZhbHNlLFwid29ya3NoZWV0XCI6XCJTaGVldDFcIn0iXQ==)"/>
    <to uri="direct:b"/>
</route>
```



