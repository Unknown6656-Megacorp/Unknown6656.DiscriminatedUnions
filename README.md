[![NuGet version (Unknown6656.DiscriminatedUnions)](https://img.shields.io/nuget/v/Unknown6656.DiscriminatedUnions.svg?style=flat-square)](https://www.nuget.org/packages/Unknown6656.DiscriminatedUnions/)

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
    Console.WriteLine($"the union stores the integer value {i}.");
else if (union1.Is(out bool b))
    Console.WriteLine($"the union stores the boolean value {b}.");
```

### Installation
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
