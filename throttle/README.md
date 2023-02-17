# throttle

Throttles a message in memory for a number of miliseconds

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
    <type>action</type>
    <uri>throttle</uri>
    <options>
        <timeperiod>10000</timeperiod>
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
    <throttle timePeriodMillis="5000">
        <constant>1</constant>
    </throttle>
    <to uri="direct:b"/>
</route>
```