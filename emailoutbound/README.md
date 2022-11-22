# component

Custom component to send Email messages.

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
    <id>4</id>
    <type>action</type>
    <uri>smtp://smtp-relay.cartoon.com:587</uri>
    <options>
        <from>RAW(noreply@cartoon.com)</from>
        <headerFilterStrategy>#ExtendedHeaderFilterStrategy</headerFilterStrategy>
        <mail.smtp.starttls.enable>true</mail.smtp.starttls.enable>
        <password>RAW(Hoo-ha-hooah!)</password>
        <subject>RAW(testing email component)</subject>
        <to>RAW(johnny.bravo@cartoon.com)</to>
        <username>RAW(noreply@cartoon.com)</username>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 4,
    "type": "action",
    "uri": "smtp://smtp-relay.cartoon.com:587",
    "options" : {
      "from" : "RAW(noreply@cartoon.com)",
      "headerFilterStrategy" : "#ExtendedHeaderFilterStrategy",
      "mail.smtp.starttls.enable" : "true",
      "password" : "RAW(Hoo-ha-hooah!)",
      "subject" : "RAW(testing email component)",
      "to" : "RAW(johnny.bravo@cartoon.com)",
      "username" : "RAW(noreply@cartoon.com)"
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 4
  type: "action"
  uri: "smtp://smtp-relay.cartoon.com:587"
    options:
      from: "RAW(noreply@cartoon.com)"
      headerFilterStrategy: "#ExtendedHeaderFilterStrategy"
      mail.smtp.starttls.enable: "true"
      password: "RAW(Hoo-ha-hooah!)"
      subject: "RAW(testing email component)"
      to: "RAW(johnny.bravo@cartoon.com)"
      username: "RAW(noreply@cartoon.com)"
```

## Camel 2

#### XML

```xml
<route id="a16b9530-d0f5-11ec-83f5-3747809ef661">
    <from uri="activemq:ID_627a681138c74a000e000873_test_5fa536a0-d065-11ec-83f5-3747809ef661"/>
    <to uri="smtp://smtp-relay.cartoon.com:587?from=RAW(noreply@cartoon.com)&amp;headerFilterStrategy=#ExtendedHeaderFilterStrategy&amp;mail.smtp.starttls.enable=true&amp;password=RAW(Hoo-ha-hooah!)&amp;subject=RAW(testing email component)&amp;to=RAW(johnny.bravo@cartoon.com)&amp;username=RAW(noreply@cartoon.com)"/>
</route>
```



