# Optional

Optional is a container that may or note contain a value. It forces the developer to think abou the absence of a valeu.

`OPtional.of()` -> If the value is null it throws a NullPointerException. <br>
`Optional.ofNullable()` -> if the valeu is null it returns an **Option.empry()** <br>
`Optional.empty()` -> Creates an empty Optional.

## Optional Methods

`get()` -> Returns a valeu, but returns NoSuchElementException if the Optional is empty. <br>
`isPresent()` -> Verifies if the Optional has a valeu. <br>
`ifPresent()` -> Executes an action if the Optional is noy empty. <br>
`ifPresentorElse()` ->  Executes an action if the Optional is noy empty, and another if it is. <br>
`orElse()` -> Returns a standard value if empty, it executes always.<br>
`orElseGet()` -> Standard value, via supplier, it only executes if the Optional is empty.<br>
`orElseThrow()` -> Throws a custom Exception if empty. <br>

## Transforming Values

`map()` ->Transforms the internal valeu, if present.<br>
`flatMap()` -> --- <br>
`filter()` -> It retains the value only if a conditions is met










