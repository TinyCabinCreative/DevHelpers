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

This is the "engine room" of JavaScript. If Part 1 was about the materials, Part 2 is about the assembly line. Here is how we process data and handle tasks that take time.
🍎 3. Objects & Arrays: The Data Assembly Line

36. Object Literals
JavaScript

const user = { name: "Leo", age: 25 }; // Standard key-value pairing

37. Computed Property Names
JavaScript

const key = "dynamicKey";
const obj = { [key]: "Surprise!" }; // Uses the value of 'key' as the property name

38 & 39. Destructuring (Objects & Arrays)
JavaScript

const person = { first: "Jane", last: "Doe" };
const { first } = person; // Grabs 'first' without writing person.first

const [a, b] = [1, 2]; // a = 1, b = 2

40. Spread Operator (...)
JavaScript

const list = [1, 2];
const newList = [...list, 3, 4]; // [1, 2, 3, 4] — "Spills" the old list into the new one

41–44. The Big Four Array Methods
JavaScript

const nums = [1, 2, 3, 4];

// 41. map: Transforms every item
const doubled = nums.map(n => n * 2); // [2, 4, 6, 8]

// 42. filter: Keeps only what passes a test
const evens = nums.filter(n => n % 2 === 0); // [2, 4]

// 43. reduce: Squashes into one value
const sum = nums.reduce((total, n) => total + n, 0); // 10

// 44. forEach: Just loops through
nums.forEach(n => console.log(n));

45–48. Search & Sort
JavaScript

const fruits = ["apple", "banana", "cherry"];

// 45. find: First match
const found = fruits.find(f => f.startsWith("b")); // "banana"

// 46. some/every: Returns true or false
const hasApple = fruits.some(f => f === "apple"); // true

// 47. includes: Simple check
const exists = fruits.includes("kiwi"); // false

// 48. flat: Removes nesting
const nested = [1, [2, 3]];
console.log(nested.flat()); // [1, 2, 3]

49–51. Object Utilities
JavaScript

const entry = { id: 1, type: "admin" };
Object.keys(entry);   // ["id", "type"] (49)
Object.assign(entry, { status: "active" }); // Merges objects (50)
Object.freeze(entry); // Cannot add or change anything now (51)

52 & 53. Maps & Sets
JavaScript

const unique = new Set([1, 1, 2]); // [1, 2] (52: Sets remove duplicates)
const dictionary = new Map(); // 53: Better for frequent data lookup than Objects

54. JSON (The Universal Translator)
JavaScript

const jsonString = JSON.stringify({ a: 1 }); // Object to String
const backToObject = JSON.parse(jsonString); // String to Object

55. Shallow vs Deep Copy
JavaScript

const original = { a: { b: 1 } };
const shallow = { ...original }; // Change original.a.b, and shallow.a.b changes too!
const deep = JSON.parse(JSON.stringify(original)); // A total, separate clone

⏳ 4. Asynchronous JS: The Waiting Room

56 & 57. The Stack & Event Loop

    Stack: JS doing tasks 1, 2, 3 in order.

    Event Loop: If task 2 takes 5 seconds, JS sends it to the "Waiting Room" and moves to task 3 so the screen doesn't freeze.

58. Microtask Queue

    Promises get a "VIP pass" and always run before other timers like setTimeout.

59 & 60. Callbacks vs Promises
JavaScript

// 59. Callback (Old)
getData((data) => console.log(data));

// 60. Promise (Modern)
const myPromise = new Promise((resolve) => resolve("Done!"));
myPromise.then(res => console.log(res));

61. Async / Await (The Gold Standard)
JavaScript

async function fetchData() {
  const result = await somePromise; // Waits for the promise to finish before moving on
  console.log(result);
}

62–65. Promise Helpers
JavaScript

// 62. Promise.all: Wait for ALL to finish
Promise.all([p1, p2]).then(results => console.log(results));

// 63. Promise.race: Whoever is fastest wins
// 64. Promise.allSettled: Wait for all, even the failures
// 65. Promise.any: Wait for the first SUCCESS only

66 & 67. Timers
JavaScript

setTimeout(() => console.log("Hi"), 1000); // 66. Once after 1s
setInterval(() => console.log("Tick"), 1000); // 67. Every 1s

🌐 5. The DOM: Controlling the Screen

68. DOM Selectors
JavaScript

const btn = document.querySelector(".my-button"); // Finding the element
const header = document.getElementById("main-header");

69. Manipulation
JavaScript

btn.textContent = "Click Me!"; // Change text
btn.style.backgroundColor = "blue"; // Change CSS
btn.classList.add("active"); // Change classes

70. Event Listeners
JavaScript

btn.addEventListener("click", () => {
  alert("Button was clicked!");
});

We've reached 70!

You’ve mastered how to shuffle data and how to handle background tasks without breaking the user experience. The final 30 items will cover Advanced Architecture (Classes), Professional Tooling, and Expert Browser APIs.

🌐 5. Advanced Browser APIs (The "Superpowers")

71. Event Bubbling & Capturing When you click a button inside a <div>, the click "bubbles" up to the div too.
JavaScript

// Clicking the button triggers both!
div.addEventListener("click", () => console.log("Div clicked"));
btn.addEventListener("click", () => console.log("Button clicked"));

72. Event Delegation Instead of 100 listeners for 100 buttons, put one on the parent.
JavaScript

document.querySelector("#parent").addEventListener("click", (e) => {
  if (e.target.tagName === "BUTTON") console.log("Any button clicked!");
});

73. preventDefault() & stopPropagation()
JavaScript

link.onclick = (e) => e.preventDefault(); // Don't open the URL
btn.onclick = (e) => e.stopPropagation(); // Don't tell the Parent I was clicked

74. localStorage & sessionStorage
JavaScript

localStorage.setItem("theme", "dark"); // Stays even if you close the browser
const theme = localStorage.getItem("theme");

75. Cookies Small data sent to the server. Usually handled via document.cookie.

76. The Fetch API
JavaScript

const response = await fetch("https://api.example.com/data");
const data = await response.json(); // Gets data from the internet

77. Intersection Observer Trigger code when an element appears on screen (great for lazy-loading images).
JavaScript

const obs = new IntersectionObserver((entries) => {
  if(entries[0].isIntersecting) console.log("I am visible!");
});
obs.observe(document.querySelector("#footer"));

78. Resize Observer Watch an element's size changes (useful for responsive charts).

79. History API
JavaScript

history.pushState({page: 2}, "title", "/page2"); // Changes URL without refresh

80. URLSearchParams
JavaScript

const params = new URLSearchParams(window.location.search);
console.log(params.get("id")); // Reads ?id=123 from URL

81. Forms and FormData
JavaScript

const data = new FormData(myForm); // Grabs all inputs in one go

82. Canvas API Drawing via code. ctx.fillRect(0, 0, 50, 50);

83. Web Workers Run a separate script in the background so the UI never lags.
🏗️ 6. Advanced Concepts & Classes (The "Blueprints")

84. Prototypes The hidden link where objects inherit methods from.

85. Classes
JavaScript

class Animal {
  constructor(name) { this.name = name; }
  speak() { console.log(`${this.name} makes a noise.`); }
}
const dog = new Animal("Rex");

86. Private Class Fields (#)
JavaScript

class BankAccount {
  #balance = 0; // Nobody can see or change this from outside the class!
}

87. Static Methods
JavaScript

class Helper {
  static log(msg) { console.log(msg); }
}
Helper.log("Hi"); // Call it without using 'new'

88. Getters and Setters
JavaScript

get area() { return this.width * this.height; }

89 & 90. Modules (ESM vs CommonJS)
JavaScript

// 89. ESM (Modern)
import { data } from "./file.js";
export const x = 10;

// 90. CommonJS (Node.js old way)
const data = require("./file.js");
module.exports = { x: 10 };

91. Generator Functions (function*) Functions that "yield" (pause) and return multiple values over time.

92. Proxies "Wrappers" that let you intercept behavior.
JavaScript

const p = new Proxy(target, {
  get: (obj, prop) => console.log(`Reading ${prop}`)
});

93. Garbage Collection The automatic process where JS deletes objects you no longer "point to" in code.

94. Debouncing & Throttling

    Debounce: Wait 500ms after the last keystroke to search.

    Throttle: Only allow one click every 2 seconds.

🛠️ 7. Tooling & Ecosystem (The "Workshop")

95. NPM / Yarn / PNPM The command-line tools to download libraries (like npm install react).

96. package.json The "Identity Card" for your project. Lists name, version, and dependencies.

97. Babel A compiler. It translates () => {} (new JS) into function(){} (old JS) for old browsers.

98. Bundlers (Vite / Webpack) Tools that take 50 JS files and "smush" them into one fast file for the user.

99. ESLint & Prettier ESLint catches logic errors; Prettier makes sure all your indentation is perfect.

100. Testing (Jest / Vitest)
JavaScript

test('adds 1 + 2 to equal 3', () => {
  expect(add(1, 2)).toBe(3);
}); // Proof that your cod