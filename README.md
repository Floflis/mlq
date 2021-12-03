# mlq

jq, but HTML instead of JSON 🧚

----

## Reading the content inside a given tag by id

`mlq -r '#imAnID' file.html`

More usage, in the next lines; so please continue reading.
Let's focus first in the first:

# Installing

## Easy (option 1)

Open the Withcraft/Terminal/Prompt and type + press `[ENTER]`:

```sh
curl --proto '=https' --tlsv1.3 -sSf https://raw.githubusercontent.com/Floflis/mlq/main/install.sh | sh
```

## Locally (option 2)

If you don't trust downloading+executing a script, you can do it locally.

Open terminal and type following by pressing `[ENTER]`:

### Floflis, Floflis-based distros such as UniOS and any other that uses [nu shell](https://github.com/nushell/nushell):
```nu
git clone https://github.com/Floflis/mlq.git ; cd mlq
```

After reviewing the code of install.sh:
```nu
chmod +x install.sh ; sh ./install.sh
```


### Any other *nix distro (Ubuntu/Arch/MacOS/etc):
```sh
git clone https://github.com/Floflis/mlq.git && cd mlq
```

After reviewing the code of install.sh:
```sh
chmod +x install.sh && sh ./install.sh
```

----

## Writing any desired content inside a given tag by id on-the-fly:

`mlq '#imAnID = "<desired>CONTENT</desired>"' file.html`

You can write out the output to any file/place; its up to your creativity.

## Writing any desired content inside a given tag by id, writing directly to the file (be cautious):

```sh
contents="$(mlq '#imAnID = "<desired>CONTENT</desired>"' file.html)" && \
echo "${contents}" > file.html
```

Note: this tool isn't professional nor native.
You are free to make a program with the same name (mlq) in Rust, then ask us to replace this by yours; but a better idea would be to contribute to/complete something existing: [htmlq](https://github.com/mgdm/htmlq)

The positive points about mlq:

- short name/command
- lower entry barrier, as there are more Bash than C/Rust/Perl developers (so it can have more features than others and developed in a faster pace)

----

## mlq is used by:

- [Floflis Status server](http://status.floflis.com/)
- [Firedoge browser](https://github.com/zilldao/firedoge)
