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
    <id>2</id>
    <type>action</type>
    <uri>oauth2token://</uri>
    <options>
        <id>cf400d62-25b5-486f-a948-573300365314</id>
        <tokenName>OAuthGoogleDrive</tokenName>
        <tenant>dovetail</tenant>
        <expiryDelay></expiryDelay>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": "2",
    "type": "action",
    "uri": "oauth2token://",
    "options": {
      "id": "cf400d62-25b5-486f-a948-573300365314",
      "tokenName": "OAuthGoogleDrive",
      "tenant": "dovetail",
      "expiryDelay": ""
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 2
  type: "action"
  uri: "oauth2token://"
  options:
    id: "cf400d62-25b5-486f-a948-573300365314"
    tokenName: "OAuthGoogleDrive"
    tenant: "dovetail"
    expiryDelay: ""
```

## Camel 2

#### XML

```xml
  <route id="dd30e724-718c-4aeb-a1b1-dd364acd321a">
    <from uri="direct:ID_6645ff25582722013d000043_test_37a3c0de-81af-4f0d-a775-932cb5bb0077"/>
    <to uri="oauth2token://?id=cf400d62-25b5-486f-a948-573300365314&amp;tokenName=OAuthGoogleDrive&amp;tenant=dovetail&amp;expiryDelay="/>
    <to uri="direct:ID_6645ff25582722013d000043_test_dd30e724-718c-4aeb-a1b1-dd364acd321a"/>
</route>
```



