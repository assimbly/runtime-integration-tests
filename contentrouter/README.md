# contentrouter

Routes a message by rules

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
    <uri>content</uri>
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
            <expression>/persons/person[1]/name='John Doe'</expression>
        </link>
        <link>
            <id>5</id>
            <transport>sync</transport>
            <bound>out</bound>
            <rule>simple</rule>
            <expression>${body.contains('Jane')}</expression>
        </link>
        <link>
            <id>6</id>
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
    <choice>
        <when>
            <simple>${bodyAs(String)} = '123'</simple>
            <to uri="direct:b"/>
        </when>
        <otherwise>
            <to uri="direct:c"/>
        </otherwise>
    </choice>
</route>
```



