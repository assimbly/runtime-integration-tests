# component

Custom component to retrieve e-mail messages or attachments from an inbox.

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
    <id>1</id>
    <type>source</type>
    <uri>imaps://imap.cartoon.com:993</uri>
    <options>
        <authenticationType>RAW(basic)</authenticationType>
        <username>RAW(noreply@cartoon.com)</username>
        <password>RAW(Hoo-ha-hooah!)</password>
        <tenant>RAW(dovetail)</tenant>
        <delay>10000</delay>
        <bridgeErrorHandler>true</bridgeErrorHandler>
        <sslContextParameters>#sslContext</sslContextParameters>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 1,
    "type": "source",
    "uri": "imaps://imap.cartoon.com:993",
    "options" : {
      "authenticationType" : "basic",
      "username" : "RAW(noreply@cartoon.com)",
      "password" : "RAW(Hoo-ha-hooah!)",
      "tenant" : "RAW(dovetail)",
      "delay" : "10000",
      "bridgeErrorHandler" : "true",
      "sslContextParameters" : "#sslContext"
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 1
  type: "source"
  uri: "imaps://imap.cartoon.com:993"
    options:
      authenticationType: "basic"
      username: "RAW(noreply@cartoon.com)"
      password: "RAW(Hoo-ha-hooah!)"
      tenant: "RAW(dovetail)"
      delay: "10000"
      bridgeErrorHandler : "true"
      sslContextParameters : "#sslContext"
```

## Camel 2

#### XML

```xml
<route id="9850b6d1-d08f-11ec-83f5-3747809ef661">
    <from uri="imaps://imap.cartoon.com:993?authenticationType=RAW(basic)&amp;username=RAW(noreply@cartoon.com)&amp;password=RAW(Hoo-ha-hooah!)&amp;tenant=RAW(dovetail)&amp;delay=10000&amp;bridgeErrorHandler=true&amp;sslContextParameters=#sslContext"/>
    <convertBodyTo type="java.lang.String"/>
    <to uri="activemq:ID_627a631138c74a000e000764_test_9850b6d1-d08f-11ec-83f5-3747809ef661?timeToLive=86400000"/>
</route>
```



