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

## MacOS

```shell
brew install autoconf re2c bison pkg-config libiconv gd gmp libsodium libpq readline gettext bzip2 curl libffi libxml2 libxslt zlib icu4c oniguruma libzip
```

# Install

Plugin:

```shell
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
