# ansible-role-configure-ghes-replica

> Configure GitHub Enterprise Server replica instance.

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see [`defaults/main.yml`](defaults/main.yml)).

```yml
github_host: github.example.com
```

GitHub Enterprise Server (primary) hostname.

```yml
github_host_ip: 0.0.0.0
```

GitHub Enterprise Server (primary) IP.

```yml
verify_replication: false
```

Verify replication.

## Dependencies

None.

## Example Playbook

```yml
- hosts: replica
  roles:
    - role: configure_replica
      github_host: github.example.com
      github_host_ip: 10.0.0.1
```
