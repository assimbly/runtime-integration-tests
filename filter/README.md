# filter

Filters messages by an expression.

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
    <uri>filter</uri>
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
            <rule>xpath</rule>
            <expression>/names/name/firstName = 'John'</expression>
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
    <filter>
        <xpath saxon="true">/names/name/firstName = 'John'</xpath>
        <to uri="activemq:ID_627a650838c74a03740004ef_test_4f9f3660-d0f2-11ec-83f5-3747809ef661_filter?timeToLive=86400000"/>
    </filter>
    <to uri="direct:b"/>
</route>
```



