# runtime-integration-tests

Integration tests to run on Assimbly runtime.

These tests test a specific component. For each component (step) a separated test
is created.

Note that the test assumes that the integration endpoints are available. For example to run the
RabbitMQ test, it assumes that RabbitMQ is configured and running. In the
README of the specific test you can find more details.


## Prerequisites

- Bash (or Git Bash) is installed
- Assimbly Gateway is running
- Integration endpoints (specified in README per test)


## Test directory structure

- Main test directory: ./component/test
- Config file(s): ./component/test/config
- actual output: ./component/test/actual
- expected output: ./component/test/expected
- data: ./component/test/data

Example test directory:

```xmltojson/dil``` 


## How to run tests?

Tests can be run with the test script. You can find the script:

./bin/mac

Note for Windows Git Bash needs to be installed.

### Examples to run a test

```test docconverter/camel2```

or

```sh ./test.sh docconverter/camel2```


More info on running tests in the readme in the bin folder.
