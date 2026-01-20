This is the best way to learn! Think of this as the "Code Cookbook." Instead of just reading the ingredients, we’re going to see exactly how to cook them.

Here is Part 1: The Foundations (1–35) with bite-sized code recipes.
🏗️ 1. Core Fundamentals: The Building Blocks

1. let vs const vs var
JavaScript

const birthYear = 1990; // Cannot change (like a tattoo)
let age = 34;           // Can change (like a haircut)
var oldWay = "Avoid me"; // The 1995 version of variables

2. Primitive Types
JavaScript

let name = "JS";        // String
let score = 100;        // Number
let isFun = true;       // Boolean
let nothing = null;     // Explicitly empty

3. Template Literals
JavaScript

const pet = "dog";
console.log(`I have a ${pet}.`); // "I have a dog." (Use backticks!)

4. Type Coercion
JavaScript

console.log(5 + "5"); // "55" (JS turns the number into a string)
console.log("10" - 2); // 8 (JS turns the string into a number)

5. Equality (=== vs ==)
JavaScript

"5" == 5;  // true (The Lazy Cop: "Close enough")
"5" === 5; // false (The Detective: "The types don't match!")

6. Ternary Operator
JavaScript

let status = (age >= 18) ? "Adult" : "Minor"; 
// (Condition) ? IfTrue : IfFalse

7. Short-circuiting (&&, ||)
JavaScript

const name = user.name || "Guest"; // If no name, use "Guest"
isLoggedIn && showDashboard();     // If logged in, run the function

8. Nullish Coalescing (??)
JavaScript

let speed = 0;
let finalSpeed = speed ?? 10; // Result is 0 (?? only triggers for null/undefined)

9. Optional Chaining (?.)
JavaScript

console.log(user?.address?.city); // If user or address is missing, returns 'undefined' instead of crashing

10. Loops
JavaScript

for (let i = 0; i < 3; i++) { console.log(i); } // Standard counting
for (let item of [10, 20]) { console.log(item); } // Good for lists

11. Truthiness/Falsiness
JavaScript

if ("") { } // Falsy (empty string)
if ("Hello") { } // Truthy (contains text)

12. The delete operator
JavaScript

const car = { brand: "Ford", year: 2020 };
delete car.year; // The 'year' drawer is now gone from the object

13. Type Checking
JavaScript

typeof "Hello"; // "string"
[] instanceof Array; // true

14. Error Handling (try...catch)
JavaScript

try {
  riskyFunction();
} catch (error) {
  console.log("Something went wrong!");
}

15. Custom Errors
JavaScript

if (age < 0) throw new Error("Age cannot be negative!");

16–20. Advanced Basics
JavaScript

"use strict"; // 16. Strict Mode: Forces cleaner code
// 17. Comments: // Single line or /* Multi-line */
let x = 5 & 1; // 18. Bitwise: Operations on 1s and 0s
outer: for(;;) { break outer; } // 19. Labels: Naming a loop
let total = 2 + 2; // 20. Expression (2+2) vs Statement (the whole line)

🧠 2. Functions & Scope: The "Recipe Book"

21. Declaration vs Expression
JavaScript

function greet() { return "Hi!"; } // Declaration (Hoisted)
const shout = function() { return "HEY!"; }; // Expression (Not hoisted)

22. Arrow Functions
JavaScript

const add = (a, b) => a + b; // Short, sweet, and no 'this' context of its own

23. Parameters vs Arguments
JavaScript

function cook(food) { } // 'food' is the Parameter (Placeholder)
cook("Pizza");          // 'Pizza' is the Argument (Actual value)

24. Default Parameters
JavaScript

function greet(name = "Friend") { return `Hello ${name}`; }

25. Rest Parameters (...)
JavaScript

function sumAll(...numbers) { 
  return numbers.reduce((acc, n) => acc + n); 
} // Collects all arguments into one array

26. IIFE (Immediately Invoked Function Expression)
JavaScript

(function() { console.log("Run immediately!"); })();

27. Closures
JavaScript

function outer() {
  let count = 0;
  return function() { count++; return count; }; 
}
const counter = outer(); // The inner function "remembers" count!

28. Hoisting
JavaScript

console.log(name); // undefined (declaration is lifted, but not value)
var name = "Bob";

29. Global vs Local Scope
JavaScript

let globalVar = "Earth"; 
function myHome() {
  let localVar = "Living Room"; // Only accessible inside here
}

30. Higher-Order Functions
JavaScript

function repeat(fn, times) {
  for(let i=0; i<times; i++) fn();
} // It takes a function as an argument

31. The this Keyword
JavaScript

const person = {
  name: "Alice",
  sayHi() { console.log(this.name); } // 'this' refers to 'person'
};

32. call, apply, bind
JavaScript

function intro() { console.log(this.name); }
const dev = { name: "Rick" };
intro.call(dev); // Manually forces 'this' to be 'dev'

33. Recursion
JavaScript

function countdown(n) {
  if (n === 0) return;
  console.log(n);
  countdown(n - 1); // Function calls itself
}

34. Pure Functions
JavaScript

const add = (a, b) => a + b; // Always returns same result for same input

35. Currying
JavaScript

const multiply = a => b => a * b;
const double = multiply(2);
console.log(double(5)); // 10
