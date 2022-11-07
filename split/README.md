# component

Splits a message

### Component Type

Default (Camel)

### Prerequisites

No

## Tests

- camel2: happy flow
- dil: happy flow

## Config Examples


# Config Examples

## DIL

#### XML

```xml
<step>
    <id>3</id>
    <type>router</type>
    <uri>split</uri>
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
            <rule>xpath</rule>
            <expression>/persons/person</expression>
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
    <split streaming="false" parallelProcessing="false">
        <xpath saxon="true" threadSafety="true">/persons/person</xpath>
        <setHeader headerName="CamelSplitIndex">
            <simple>${exchangeProperty.CamelSplitIndex}</simple>
        </setHeader>
        <setHeader headerName="CamelSplitSize">
            <simple>${exchangeProperty.CamelSplitSize}</simple>
        </setHeader>
        <setHeader headerName="CamelSplitComplete">
            <simple>${exchangeProperty.CamelSplitComplete.toString().trim()}</simple>
        </setHeader>
        <to uri="activemq:ID_627a596f38c74a0374000321_test_915da660-d069-11ec-83f5-3747809ef661_BottomCenter_split?timeToLive=86400000&amp;exchangePattern=InOut"/>
    </split>
    <to uri="direct:b"/>
</route>
```



