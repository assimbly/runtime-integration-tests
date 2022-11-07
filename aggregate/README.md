# aggregate

Aggregates messages to one message

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
    <id>4</id>
    <type>router</type>
    <uri>aggregate</uri>
    <options>
        <aggregateType>xml</aggregateType>
        <completionSize>2</completionSize>
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
    <setProperty propertyName="Aggregate-Type">
        <simple>text/xml</simple>
    </setProperty>
    <aggregate strategyRef="CurrentAggregateStrategy" completionSize="3">
        <correlationExpression>
            <constant>true</constant>
        </correlationExpression>
        <to uri="activemq:ID_627a6b7338c74a00130007f9_test_75be5f00-d0f8-11ec-83f5-3747809ef661_aggregator?timeToLive=86400000"/>
    </aggregate>
    <to uri="direct:b"/>
</route>
```



