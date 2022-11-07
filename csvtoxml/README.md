# csvtoxml

Transforms CSV to XML

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
    <uri>csvtoxml</uri>
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
    <unmarshal>
        <csv delimiter="," useMaps="true"/>
    </unmarshal>
    <to uri="csv2xml://?encoding=UTF-8"/>
    <to uri="direct:b"/>
</route>
```



