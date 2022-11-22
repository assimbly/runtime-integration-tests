# component

Connects to the Amazon Marketplace API as it takes alot of work away that is specific to Amazon

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
    <id>2</id>
    <type>action</type>
    <uri>amazon://SUBMIT_FEED</uri>
    <options>
        <accessKey>RAW(ABCDEFGHIJKLMNOPQRST)</accessKey>
        <secretKey>RAW(ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/AB)</secretKey>
        <authToken>RAW()</authToken>
        <sellerId>RAW(ABCDEFGHIJKLMN)</sellerId>
        <marketplace>RAW(OPQRSTUVWXYZ01)</marketplace>
        <parameters>RAW(xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx)</parameters>
        <settings>RAW(yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy)</settings>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 2,
    "type": "action",
    "uri": "amazon://SUBMIT_FEED",
    "options": {
      "accessKey": "RAW(ABCDEFGHIJKLMNOPQRST)",
      "secretKey": "RAW(ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/AB)",
      "authToken": "RAW()",
      "sellerId": "RAW(ABCDEFGHIJKLMN)",
      "marketplace": "RAW(OPQRSTUVWXYZ01)",
      "parameters": "RAW(xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx)",
      "settings": "RAW(yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy)"
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
  uri: "amazon://SUBMIT_FEED"
    options:
      accessKey: "RAW(ABCDEFGHIJKLMNOPQRST)"
      secretKey: "RAW(ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/AB)",
      authToken: "RAW()",
      sellerId: "RAW(ABCDEFGHIJKLMN)",
      marketplace: "RAW(OPQRSTUVWXYZ01)",
      parameters: "RAW(xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx)",
      settings: "RAW(yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy)"
```

## Camel 2

#### XML

```xml
<route id="c5926d10-d0f7-11ec-83f5-3747809ef661">
    <from uri="activemq:ID_627a6b6438c74a000e0008f1_test_f4157011-d066-11ec-83f5-3747809ef661"/>
    <to uri="amazon://SUBMIT_FEED?accessKey=RAW(ABCDEFGHIJKLMNOPQRST)&amp;secretKey=RAW(ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/AB)&amp;authToken=RAW()&amp;sellerId=RAW(ABCDEFGHIJKLMN)&amp;marketplace=RAW(OPQRSTUVWXYZ01)&amp;parameters=RAW(xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx)&amp;settings=RAW(yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy)"/>
</route>
```



