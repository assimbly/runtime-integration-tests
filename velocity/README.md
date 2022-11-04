# velocity

Runs a velocity template against a message.

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
    <uri>velocity:${bodyAs(String)}</uri>
</step>
```

#### JSON

```json
{"step": {
  "id": 3,
  "type": "action",
  "uri": "xmltojson",
  "options": {
    "hasTypes": false,
    "removeNamespaces": false,
    "typeValueMismatch": "ORIGINAL",
    "removeRoot": false,
    "keepStrings": false
  }
}}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "xmltojson"  
  options:
    hasTypes: false
    removeNamespaces: false
    typeValueMismatch: "ORIGINAL"
    removeRoot: false
    keepStrings: false
```

## Camel 2

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <setHeader headerName="CamelVelocityTemplate">
        <simple>Dear ${headers.lastName}, ${headers.firstName}

            Thanks for the order of ${headers.item}.

            Regards Dovetail
            ${bodyAs(String)}</simple>
    </setHeader>
    <to uri="velocity:generate"/>
    <to uri="direct:b"/>
</route>
```



