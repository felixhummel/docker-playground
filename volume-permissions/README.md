# Permissions in Docker Volumes
We have two basic modes of operation:

- prod
- dev

The default should always be `prod`, because that's where customer value is.

It should be possible to run containers as an unprivileged user with
arbitrary UID [^1] (security, flexibility).

[^1]: https://docs.openshift.org/latest/creating_images/guidelines.html "Support Arbitrary User IDs"

Setting an explicit user on build achieves this goal for prod.

Developers want to mount local directories into the container, to keep their
environment identical to `prod` while maintaining short feedback loops (nobody
likes waiting for docker build to test the last line changed).

More precisely: Pycharm (IntelliJ in general) has excellent integration with
*docker compose*. It mounts the project directory to `/opt/project` and runs
the command specified with some debug flags.


# Being Naive
See `fail/` for a naive approach.


# Explicit User
See its [README](hard-coded-uid/README.md)
