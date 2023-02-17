# formtoxml

Converts a Form url encoded format to XML

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
    <uri>formtoxml</uri>
    <options>
        <encoding>utf-8</encoding>
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
    <to uri="form2xml://?encoding=utf-8"/>
    <to uri="direct:b"/>
</route>
```



