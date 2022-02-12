[![](https://img.shields.io/github/downloads/Unknown6656-Megacorp/Unknown6656.DiscriminatedUnions/total)](https://github.com/Unknown6656-Megacorp/Unknown6656.DiscriminatedUnions/releases)
[![](https://img.shields.io/nuget/vpre/Unknown6656.DiscriminatedUnions)](https://www.nuget.org/packages/Unknown6656.DiscriminatedUnions/)
[![](https://img.shields.io/nuget/dt/Unknown6656.DiscriminatedUnions)](https://www.nuget.org/packages/Unknown6656.DiscriminatedUnions/)


# Discriminated Unions

This library aims to bring discriminated unions to C#.<br/>
Discriminated unions (aka. "tagged unions", "disjoint unions", or "coproducts") are data structures which can hold a set of several different types.
However, unions are designed to only hold one of the specified data types at any one time.
_(Read more: https://en.wikipedia.org/wiki/Tagged_union)_

F#'s discriminated union:

```fsharp
type IntOrBool = Case0 of int
               | Case1 of bool
```

Discriminated unions such as the one above do not (yet) exist in C#.
This project therefore aims to fill this gap by providing a set of generic union data types:

```csharp
Union<int, bool> union1 = 315;
Union<int, bool> union2 = false;

if (union1.Is(out int i))
    Console.WriteLine("the union stores the integer value " + i);
else if (union1.Is(out bool b))
    Console.WriteLine("the union stores the boolean value " + b);
```

## Installation

Use one of the follwing methods to install and use this library:

- **Package Manager:**

    ```batch
    PM> Install-Package Unknown6656.DiscriminatedUnions
    ```

- **.NET CLI:**

    ```batch
    > dotnet add package Unknown6656.DiscriminatedUnions
    ```

- **Package reference** (e.g. in a `.csproj`/`.vbproj`/`.fsproj` project file):

    ```xml
    <PackageReference Include="Unknown6656.DiscriminatedUnions" Version="*" />
    ```

- **Paket CLI:**

    ```batch
    > paket add Unknown6656.DiscriminatedUnions
    ```

- **F# Interactive:**

    ```fsharp
    #r "nuget: Unknown6656.DiscriminatedUnions, *"
    ```

## Documentation and Usage

To use the discriminated unions, simply include the namespace `Unknown6656`:

```csharp
using Unknown6656;
```

Each union type `Union<...>` is an abstract record with a private constructor.
The union cases are implemented using the sealed records `Union<...>.Case*`, which inherit from the class in which they are contained. Each `Union<...>`-type defines the following public symbols:

| Symbol name and signature                                | Symbol description                        |
| -------------------------------------------------------- | ----------------------------------------- |
| `UnsafeItem : object`                                    | [ TODO : Add description for the symbol ] |
| `IsCase* : bool`                                         | [ TODO : Add description for the symbol ] |
| `AsCase* : T*`                                           | [ TODO : Add description for the symbol ] |
| `Equals : Union<...> -> bool`                            | [ TODO : Add description for the symbol ] |
| `As<T> : () -> T`                                        | [ TODO : Add description for the symbol ] |
| `AsOrDefault<T> : () -> T`                               | [ TODO : Add description for the symbol ] |
| `AsValueType<T> : () -> T`                               | [ TODO : Add description for the symbol ] |
| `AsReferenceType<T> : () -> T?`                          | [ TODO : Add description for the symbol ] |
| `Is<T> : () -> bool`                                     | [ TODO : Add description for the symbol ] |
| `Is<T> : () -> [out] T * bool`                           | [ TODO : Add description for the symbol ] |
| `Match : (T0 -> T) * (T1 -> T) * ... -> T`               | [ TODO : Add description for the symbol ] |
| `Match : (T0 -> ()) * (T1 -> ()) * ... -> ()`            | [ TODO : Add description for the symbol ] |
| `ToString : () -> string`                                | [ TODO : Add description for the symbol ] |
| `[static] FromObject : object -> Union<...>`             | [ TODO : Add description for the symbol ] |
| `[static] operator == : Union<...> * Union<...> -> bool` | [ TODO : Add description for the symbol ] |
| `[static] operator != : Union<...> * Union<...> -> bool` | [ TODO : Add description for the symbol ] |
| `[static, implicit] operator : T* -> Union<...>`         | [ TODO : Add description for the symbol ] |
| `[static, implicit] operator : Union<...> -> T*`         | [ TODO : Add description for the symbol ] |

Each union case overrides the majority of the mentioned symbols and [TODO]. Each case further defines the following symbols:

| Symbol name and signature | Symbol description                      |
| ------------------------- | --------------------------------------- |
| `Item : T*`               | [TODO : Add description for the symbol] |

[TODO]



### Code samples
