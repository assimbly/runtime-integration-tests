# suspendflow

Suspends (pauses) a flow

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
    <id>5</id>
    <type>action</type>
    <uri>suspendflow:suspendflow_test1</uri>
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
    <to uri="controlbus:route?routeId=9be15fd0-d05c-11ec-83f5-3747809ef661&amp;action=suspend&amp;async=true"/>
    <to uri="direct:b"/>
</route>
```



