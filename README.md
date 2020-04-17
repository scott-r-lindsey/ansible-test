# ansible-test

This is a demonstration of a trivial ansible playbook that installs Apache on both CentOS and Debian.
The servers for this playbook are provided via docker-compose.

## How to use:

Clone this repository.  Then, execute:

```./scripts/start.sh```

This will run docker-compose in a terminal.

Next, in a separate terminal execute the following:

```./scripts/run-ansible-playbook.sh```

## validation

When ansible has finished, you should be able to visit these URLs:

- Centos: http://localhost:8081/index.php
- Debian: http://localhost:8082/index.php
