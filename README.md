# shellcheck-action

![Linting](https://github.com/bewuethr/shellcheck-action/workflows/Linting/badge.svg)
![Move release tags](https://github.com/bewuethr/shellcheck-action/workflows/Move%20release%20tags/badge.svg)

This action runs [ShellCheck] on every file containing shell code in the
repository.

To determine if a file is a shell script, the output of `file` is matched
against the extended regular expression

```txt
((POSIX|Korn|Bourne-Again) shell|/usr/bin/env k?sh) script
```

Additionally, files with the extensions `.sh`, `.bash` and `.ksh` are checked.

[ShellCheck]: https://github.com/koalaman/shellcheck

## Example usage

```yml
uses: bewuethr/shellcheck-action@v2
```

## Versions

To get the latest version of a major release, the major release without minor
and patch release can be used.

To get the latest version of a minor release, the minor release without the
patch release can be used.

For example: if the latest release is `v2.1.2`,

```yml
uses: bewuethr/shellcheck-action@v2
```

and

```yml
uses: bewuethr/shellcheck-action@v2.1
```

and

```yml
uses: bewuethr/shellcheck-action@v2.1.2
```

will fetch `v2.1.2`. The advantage of using just `@v2` is that minor releases
and patches are included without requiring a change; the advantage of using
`@v2.1.2` is knowing that the action does 100% the same thing every time.

This is done via the [release-tag-tracker] action.

[release-tag-tracker]: https://github.com/marketplace/actions/release-tag-tracker
