# telegram

Receives and sends message to Telegram

### Component Type

Standard (Camel)

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
    <uri>telegram:type</uri>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "telegram:type"
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "telegram:type"
```

## Camel

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <to uri="telegram:type"/>
    <to uri="direct:b"/>
</route>
```


    


