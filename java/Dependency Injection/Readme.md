# Dependency Injection (DI)
Dependency Injection is a design pattern Where object receive their **dependencies**  from external sources rather than creating themselves. <br>
This means  that a class doesn't have to worry about how to the objects it  needs to function, instead , those objects are **Injected** into the classe, usually through a `constructos, setter method or interface`.  <br>

* Reduces tight coupling between classes
* Improves code reusability and flexibility
* Makes unit testing easier by allowing mock dependencies
* Enhances maintainability and scalability of the system

**Example:** `Car class might depend on a Engine class to run. Without DI, the Car class would directly create or manage the Engine instance within its code, 
which makes the two classes tightly coupled. This approach can create problems, particularly when you need to test, extend, or modify the classes in the future.`

* Dependency Injection solves this problem by injecting the dependencies (like the Engine ones in the Car example) into the class from an external source, rather than having the class create them.
* In simpler terms, DI allows you to "inject" the things a class needs (its dependencies) from the outside, instead of letting the class create or manage them itself

## Types of Dependency Injection
There are mainly three types of dependency injection, that are Constructor Injection, Setter Injection and Interface Injection.<br>

### Constructor Injection

With Constructor Injection, dependencies are provided to a class through its constructor when the object is created. This is the most common form of DI because it makes dependencies clear, mandatory, and immutable after the object is constructed.

## Setter Injection
Setter Injection involves providing the dependency via a setter method after the object is created. This approach is more flexible than constructor injection because it allows dependencies to be set or changed after object creation.

## Interface Injection
Interface Injection requires the class to implement an interface that provides a method for receiving the dependency. This is less commonly used in Java, but it allows for more flexibility and decoupling.











