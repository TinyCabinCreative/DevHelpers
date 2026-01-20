🟢 BEGINNER (1–35)
Language Basics, Control Flow, Core Methods
1. Variables & Constants
int age = 30;
const int MaxUsers = 100;

2. Data Types
bool isActive = true;
string name = "Alex";

3. Type Conversion
int x = int.Parse("42");
bool ok = int.TryParse("42", out int y);

4. Operators
int sum = 5 + 3;
bool isEqual = (sum == 8);

5. Logical Operators
if (isActive && age > 18) { }

6. Nullable Types
int? score = null;

7. Strings
string msg = $"Hello {name}";

8. Enums
enum Role { Admin, User }
Role r = Role.Admin;

9. Readonly vs Const
readonly int id;

10. Type Inference
var total = 99.9;

11. if / else
if (age >= 18) Console.WriteLine("Adult");

12. switch
switch (r) {
  case Role.Admin: break;
}

13. Ternary
string label = age > 18 ? "Adult" : "Minor";

14. for Loop
for (int i = 0; i < 3; i++) { }

15. foreach
foreach (var n in numbers) { }

16. while
while (running) { }

17. do-while
do { } while (false);

18. break / continue
if (i == 2) continue;

19. return
return result;

20. Pattern Matching
if (obj is string s) { }

21. Method Declaration
int Add(int a, int b) => a + b;

22. ref / out
void Get(out int x) { x = 5; }

23. Optional Parameters
void Log(string msg = "Default") { }

24. Named Parameters
Add(b: 2, a: 1);

25. Method Overloading
int Add(int a, int b);
double Add(double a, double b);

26. Recursion
int Fact(int n) => n <= 1 ? 1 : n * Fact(n - 1);

27. Local Functions
void Outer() {
  int Inner() => 5;
}

28. Anonymous Functions
Func<int, int> f = delegate(int x) { return x * 2; };

29. Lambdas
x => x * 2

30. Delegates
delegate int MathOp(int x);

31. Classes
class User { public string Name; }

32. Constructors
User(string name) { Name = name; }

33. Properties
public int Age { get; set; }

34. Access Modifiers
private int secret;

35. Static Members
static int Count;

🟡 INTERMEDIATE (36–75)
OOP, Collections, LINQ, Exceptions
36. Inheritance
class Admin : User { }

37. virtual / override
public virtual void Run() { }

38. abstract
abstract class Shape { abstract double Area(); }

39. Interfaces
interface ILogger { void Log(); }

40. Polymorphism
Shape s = new Circle();

41. Encapsulation
private int _age;

42. this
this.Name = name;

43. base
base.Run();

44. object Methods
obj.ToString();

45. Partial Classes
partial class User { }

46. Arrays
int[] nums = {1,2,3};

47. List
var list = new List<int>();

48. Dictionary
var map = new Dictionary<string,int>();

49. HashSet
var set = new HashSet<int>();

50. Stack / Queue
var stack = new Stack<int>();

51. Generics
class Box<T> { T Value; }

52. IEnumerable
IEnumerable<int> data;

53. Tuple
var t = (1, "a");

54. KeyValuePair
KeyValuePair<string,int>

55. LINQ Select
nums.Select(x => x * 2);

56. Where
nums.Where(x => x > 5);

57. OrderBy
nums.OrderBy(x => x);

58. GroupBy
items.GroupBy(x => x.Type);

59. Join
a.Join(b, x=>x.Id, y=>y.Id, (x,y)=>x);

60. Aggregates
nums.Sum();

61. FirstOrDefault
nums.FirstOrDefault();

62. Any / All
nums.Any(x => x > 0);

63. Distinct
nums.Distinct();

64. Take / Skip
nums.Skip(1).Take(2);

65. Set Operations
a.Intersect(b);

66. try/catch
try { } catch (Exception ex) { }

67. finally
finally { Cleanup(); }

68. throw
throw new Exception("Error");

69. Custom Exception
class AppEx : Exception { }

70. using
using var file = File.OpenRead(path);

71. File Read
File.ReadAllText("a.txt");

72. File Write
File.WriteAllText("a.txt", "hi");

73. Path
Path.Combine("a","b");

74. Serialization
JsonSerializer.Serialize(obj);

75. FileSystemWatcher
new FileSystemWatcher(".");

🔴 ADVANCED (76–100)
Async, Parallelism, Tooling
76. async / await
await Task.Delay(1000);

77. Task<T>
Task<int> GetAsync();

78. Parallel.For
Parallel.For(0,10,i=>{});

79. PLINQ
nums.AsParallel().Select(x=>x*x);

80. CancellationToken
cts.Cancel();

81. Dependency Injection
services.AddScoped<IService, Service>();

82. Records
record User(string Name);

83. Immutability
init { get; }

84. Span
Span<int> s = stackalloc int[3];

85. Memory Management
GC.Collect();

86. Value vs Reference
struct Point { }

87. Threading
new Thread(() => {}).Start();

88. Locks
lock(obj) { }

89. Concurrent Collections
ConcurrentDictionary<int,int>

90. Reflection
typeof(User).GetProperties();

91. Attributes
[Obsolete]

92. Logging
ILogger.Log("msg");

93. Unit Testing
Assert.Equal(5, result);

94. Benchmarking
[Benchmark]

95. .NET CLI
dotnet build

96. NuGet
dotnet add package

97. Configuration
IConfiguration config;

98. ASP.NET Middleware
app.Use(async (ctx,next)=>{});

99. EF Core
db.Users.Add(user);

100. Production Readiness
try { } catch { Log(); throw; }