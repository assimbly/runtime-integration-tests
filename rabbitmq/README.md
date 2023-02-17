# rabbitmq

Sends messages to or receives messages from RabbitMQ 

### Component Type

Default (Camel)

### Prerequisites

- RabbitMQ needs to be installed
- A queue "testQ3" is available (amq.direct).
- To do a manual check it's good to install the Rabbit Management Console (https://www.rabbitmq.com/management.html)

## Tests

- camel2: happy flow
- dil: happy flow

# Config Examples

## DIL

#### XML

```xml
<step>
    <id>5</id>
    <type>sink</type>
    <uri>rabbitmq:amq.direct</uri>
    <options>
        <hostname>localhost</hostname>
        <vhost>RAW(/)</vhost>
        <portNumber>5672</portNumber>
        <username>RAW(guest)</username>
        <password>RAW(guest)</password>								
        <exchangeType>direct</exchangeType>
        <queue>RAW(testQ3)</queue>
        <autoDelete>false</autoDelete>
        <exchangePattern>InOnly</exchangePattern>
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
    <setProperty propertyName="excludedHeader_breadcrumbId">
        <simple>${header.breadcrumbId}</simple>
    </setProperty>
    <removeHeader headerName="breadcrumbId"/>
    <setHeader headerName="CamelRabbitmqDeliveryMode">
        <simple>2</simple>
    </setHeader>
    <toD uri="rabbitmq:amq.direct?hostname=localhost&amp;vhost=RAW(/)&amp;portNumber=5672&amp;username=RAW(guest)&amp;password=RAW(guest)&amp;exchangeType=direct&amp;queue=RAW(testQ3)&amp;durable=true&amp;autoDelete=false&amp;exchangePattern=InOnly"/>
    <to uri="direct:b"/>
</route>
```