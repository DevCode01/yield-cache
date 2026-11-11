# Yield Cache

**Ruby** · **v0.1.0**

_Word frequency analyzer with top word ranking_

---

## Features

- Reads a file or stdin
- Counts lines, words, characters
- Ranks top 10 words by frequency

## Installation

```bash
git clone https://github.com/DevCode01/yield-cache.git
cd yield-cache
```

## Usage

```bash
cat file.txt | ruby yield-cache.rb
```

## How it works

Word frequency analyzer: reads a file (or stdin), counts lines, words and characters, then ranks the top 10 words by frequency. Words are lowercased and stripped of non-alphanumeric characters.

## Options

- `file` - path to text file (reads stdin if omitted)

## Example

```bash
$ printf 'hello world
foo bar
' | ruby yield-cache.rb
Lines:      2
Words:      4
Characters: 20
Unique:     4

Top 10 words:
  hello           1
  world           1
  foo             1
  bar             1
```

## Testing

```bash
bash tests/run.sh
```

Includes a functional check against real captured output, plus the build/syntax check.

## License

MIT
