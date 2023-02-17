# recipients

Multiple recipients get a copy of the message

### Component Type

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
    <id>3</id>
    <type>router</type>                          
    <links>
        <link>
            <id>3</id>
            <transport>sync</transport>
            <bound>in</bound>
        </link>
        <link>
            <id>4</id>
            <transport>sync</transport>
            <bound>out</bound>
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
    <multicast>
        <to uri="direct:b"/>
        <to uri="direct:c"/>
    </multicast>
</route>
```



