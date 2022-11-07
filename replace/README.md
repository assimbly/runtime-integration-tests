# replace

Replace text in body

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
    <uri>replace</uri>
    <options>
        <regex>RAW(Sm9obg==)</regex>
        <replaceWith>RAW(Tm9ybWFu)</replaceWith>
        <group>0</group>
        <flags>m,i</flags>
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
    <to uri="replace://?regex=RAW(Sm9obg==)&amp;replaceWith=RAW(Tm9ybWFu)&amp;group=0&amp;flags=m,i"/>
    <to uri="direct:b"/>
</route>
```



