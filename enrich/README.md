# enrich

Applies the enrich action.

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
    <type>router</type>
    <uri>enrich</uri>
    <options>
        <enrichType>text/xml</enrichType>
    </options>
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
            <rule>sync</rule>
            <expression>5</expression>
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
    <setProperty propertyName="Enrich-Type">
        <simple>text/xml</simple>
    </setProperty>
    <setProperty propertyName="Error-Route">
        <simple>true</simple>
    </setProperty>
    <enrich strategyRef="CurrentEnrichStrategy">
        <simple>activemq:ID_627a67ff38c74a06a000023c_test_18d54e00-d0f5-11ec-83f5-3747809ef661_BottomCenter</simple>
    </enrich>
    <to uri="direct:b"/>
</route>
```



