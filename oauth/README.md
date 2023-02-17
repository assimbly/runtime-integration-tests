# component

Retrieve and refresh Access and Refresh tokens as specified in the OAuth2 protocol

### Component Type

Custom (Dovetail)

### Prerequisites

MongoDB/Frontend must be running.

## Tests

- camel2: happy flow
- dil: happy flow

# Config Examples

## DIL

#### XML

```xml
<step>
    <id>10</id>
    <type>action</type>
    <uri>oauth2token</uri>
    <options>
        <id>20f44cb0-3d76-11ed-b962-0978946afb23</id>
        <tokenName>OAuth2Token</tokenName>
        <tenant>default</tenant>
        <expiryDelay>30</expiryDelay>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 10,
    "type": "action",
    "uri": "oauth2token",
    "options": {
      "id": "20f44cb0-3d76-11ed-b962-0978946afb23",
      "tokenName": "OAuth2Token",
      "tenant": "default",
      "expiryDelay": "30"
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 10
  type: "action"
  uri: "oauth2token"
  options:
    id: "20f44cb0-3d76-11ed-b962-0978946afb23"
    tokenName: "OAuth2Token"
    tenant: "default"
    expiryDelay: "30"
```

## Camel 2

#### XML

```xml
<route id="20f44cb0-3d76-11ed-b962-0978946afb23">
    <from uri="direct:ID_6331642fd7e3b7000f0000cf_test_abec7f50-6660-11ed-a11f-298af0b10fe9"/>
    <to uri="oauth2token://?id=20f44cb0-3d76-11ed-b962-0978946afb23&amp;tokenName=OAuth2Token&amp;tenant=default&amp;expiryDelay=30"/>
    <to uri="direct:ID_627a6b7338c74a00130007f9_test_75be5f00-d0f8-11ec-83f5-3747809ef661"/>
</route>
```



