<div align="center">

# asdf-php [![Build](https://github.com/IndraGunawan/asdf-php/actions/workflows/build.yml/badge.svg)](https://github.com/IndraGunawan/asdf-php/actions/workflows/build.yml) [![Lint](https://github.com/IndraGunawan/asdf-php/actions/workflows/lint.yml/badge.svg)](https://github.com/IndraGunawan/asdf-php/actions/workflows/lint.yml)

[php](https://github.com/IndraGunawan/asdf-php) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`, and [POSIX utilities](https://pubs.opengroup.org/onlinepubs/9699919799/idx/utilities.html).
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add php
# or
asdf plugin add php https://github.com/IndraGunawan/asdf-php.git
```

php:

```shell
# Show all installable versions
asdf list-all php

# Install specific version
asdf install php latest

# Set a version globally (on your ~/.tool-versions file)
asdf global php latest

# Now php commands are available
php --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/IndraGunawan/asdf-php/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Indra Gunawan](https://github.com/IndraGunawan/)
