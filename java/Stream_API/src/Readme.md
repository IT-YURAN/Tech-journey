# Stream_API

The Stream API is used to process collections of objects. It is a sequence of objects that supports various methods that
can be pipelined to produce the desired result.

## Use case of Stream
1. Stream API is a way to express and process collections of objects.
2. Enable us to perform operations like filtering, mapping, reducing and sorting.

## Stream Features

A Stream is not a data structure. It just takes inputs from collections, Arrays or I/O channels. <br>
Streams don't modify the original data, they just produce results using their methods. <br>
Intermediate operations (like filter, map, etc.) are lazy and return another Stream, so you can chain them together.<br>
A terminal operation (like collect, forEach, count) ends the stream and gives the final result.

## Operations On Streams
1. Intermediate
2. Terminal

## Intermediate Operations
Intermediate Operations are the types of operations in which multiple methods are chained in a row.<br>
`INPUT → OPERATION 1 → OPERATION2 → OPERATION3 → TERMINAL OPERATION → OUTPUT`

### Importante Intermediate Operations
`map()` -> The method is used to return a steam consisting of the result of applying the given function of the elements of the stream. <br>
`filter()` -> The filter method is used to select elements as per the predicate passed as an argument. <br>
`sorted()` -> The sorted method is used to sort the stream. <br>
`flatmap()` ->The flatMap operation is used to flatten a stream of collections into a single stream of elements. <br>
`disctinct`-> Removes duplicate elements. It returns a stream consisting of the distinct elements (according to Object.equals(Object)). <br>
`peek` -> performs an action on each element without modifying the stream. It returns a stream consisting of the elements of this stream, additionally performing the provided action on each element as elements are consumed from the resulting stream.


## Terminal Operations
Terminal Operations are the type of Operations that return the result. These Operations are not processed further just return a final result value.

### Importante Terminal Operations
`collect` -> The collect method is used to return the result of the intermediate operations performed on the stream. <br>
`forEach()` -> The forEach method is used to iterate through every element of the stream. <br>
`reduce()` -> The reduce method is used to reduce the elements of a stream to a single value. The reduce method takes a BinaryOperator as a parameter.<br>
`count()` ->  Returns the count of elements in the stream. <br>
`findFirst()` Returns the first element of the stream, if present. <br>
`allMatch()` Checks if all elements of the stream match a given predicate. <br>
`anyMatch() `Checks if any element of the stream matches a given predicate.
.






