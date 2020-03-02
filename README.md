# shellcheck-action

This action runs [shellcheck][1] on every file containing shell code in the
repository. To determine if a file is a shell script, the output of `file` is
checked for the string `shell script`, which covers POSIX sh, Bash, Korn shell
and more.

[1]: https://github.com/koalaman/shellcheck

## Example usage

```yml
uses: 'bewuethr/shellcheck-action@v1'
```

## Versions

To get the latest version of a major release, the major release without minor
and patch release can be used.

For example: if the latest release is v1.1.2, both

```yml
uses: 'bewuethr/shellcheck-action@v1'
```

and

```yml
uses: 'bewuethr/shellcheck-action@v1.1.2'
```

will fetch v1.1.2. The advantage of using just `@v1` is that minor releases and
patches are included without requiring a change; the advantage of using
`@v1.1.2` is knowing that the action does 100% the same thing every time.
