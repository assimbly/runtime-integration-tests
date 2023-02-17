# simple replace

Replaces simple expression in body by headers.

### Component Type

Custom (Dovetail)
Default (Camel)

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
    <id>4</id>
    <type>action</type>
    <uri>simplereplace</uri>
    <links>
        <link>
            <id>4</id>
            <transport>sync</transport>
            <bound>in</bound>
        </link>
        <link>
            <id>5</id>
            <transport>sync</transport>
            <bound>out</bound>
        </link>
    </links>
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
    <to uri="dataformat:simple-replace:unmarshal"/>
    <to uri="direct:b"/>
</route>
```



