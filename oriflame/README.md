# oriflame

Transforms a standardized csv into a soap message for Oriflame.

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
    <type>sink</type>
    <uri>oriflame:${bodyAs(String)}</uri>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "oriflame",
  "options": {
    "ediType": "PIT"
  }
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "oriflame"  
  options:
    ediType: "PIT"
```

## Camel 2

#### XML

```xml
<route id="46689a90-d0f8-11ec-83f5-3747809ef661">
    <from uri="direct:a"/>
    <to uri="oriflame:b?ediType=PIT"/>
    <to uri="direct:b"/>
</route>
```



