# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2023-10-30

### Added
- Initial release with basic username generation.
- The script generates a username consisting of two random lowercase letters followed by four random numbers.
- Addressed "Illegal byte sequence" issue on Mac by adjusting the `tr` command with `LC_ALL=C`.

## [1.1.0] - 2024-12-23

### Added
- Set to control the amount generated.