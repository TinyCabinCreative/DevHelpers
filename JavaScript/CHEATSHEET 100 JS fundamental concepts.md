Since I cannot generate a downloadable .pdf file directly, I have prepared a high-density, perfectly formatted "Master Cheat Sheet" below.

You can easily turn this into a PDF by:

    Copying and pasting this into a Google Doc or Word and hitting "Export to PDF."

    Printing this page from your browser and selecting "Save as PDF" as the printer.

🚀 The Ultimate JavaScript 100 Cheat Sheet
📦 1. Core Fundamentals (The Basics)

    let / const / var: const is for values that stay; let is for values that change; var is the old way (best avoided).

    Primitive Types: The basic types: String (text), Number, Boolean (true/false), Null, Undefined, Symbol, and BigInt.

    Template Literals: Using backticks ` ` to put variables inside text easily with ${}.

    Type Coercion: JS trying to be "helpful" by changing types automatically (like 5 + '5' becoming '55').

    Strict Equality (===): Checks if value and type match exactly. No guessing.

    Ternary Operator: A one-line if/else. condition ? ifTrue : ifFalse.

    Short-circuiting (&& / ||): Using logic to set defaults or run code only if a condition is met.

    Nullish Coalescing (??): A safety net that provides a fallback only if a value is null or undefined.

    Optional Chaining (?.): Reading deep properties of an object without crashing if a middle part is missing.

    Loops: for, while, for...of (for arrays), and for...in (for objects).

    Truthiness: Everything in JS has an inherent "true" or "false" feel (e.g., 0 is false, 1 is true).

    delete: A command to remove a property from an object.

    typeof / instanceof: Tools to check what a variable is.

    Error Handling: Using try {} catch {} to stop your app from crashing when something goes wrong.

    Throwing Errors: Manually creating an error to stop execution: throw new Error('Stop!').

    Strict Mode: Writing "use strict"; to make JS catch more "silent" mistakes.

    Comments: Using // or /* */ to leave notes for humans.

    Bitwise Operators: Operating on the 1s and 0s of a number (advanced performance).

    Labels: Naming a loop so you can break or continue a specific one from deep inside.

    Expression vs Statement: An expression produces a value; a statement is a complete instruction.

⚙️ 2. Functions & Scope (The Logic)

    Function Declaration: The standard function name() {} that is "hoisted."

    Arrow Functions: Shorter () => {} syntax; they don't have their own this.

    Parameters vs Arguments: Parameters are the "labels" in the recipe; Arguments are the "actual ingredients" you pass in.

    Default Parameters: Setting a backup value if an argument is missing: function(a = 5).

    Rest Parameters (...): Gathering many arguments into a single array.

    IIFE: A function that runs immediately as soon as it is defined.

    Closures: A function "remembering" variables from the place it was created.

    Hoisting: JS moving declarations to the top of the file before running.

    Global vs Local Scope: Variables available everywhere vs variables trapped in a function/block.

    Higher-Order Functions: Functions that take other functions as "input" or give them as "output."

    The this Keyword: A reference to the current "owner" or context of the code.

    call, apply, bind: Ways to manually tell a function what this should be.

    Recursion: A function calling itself (like a hall of mirrors).

    Pure Functions: A function that always gives the same output for the same input and changes nothing else.

    Currying: Breaking a function that takes 3 arguments into 3 functions that take 1 argument each.

🍎 3. Objects & Arrays (Data Storage)

    Object Literals: Creating data packages with { key: value }.

    Computed Properties: Using a variable to name an object key: {[varName]: value}.

    Object Destructuring: Pulling values out of an object quickly: const { name } = user.

    Array Destructuring: Pulling values out of a list: const [first] = myArr.

    Spread Operator: "Spilling" the contents of an array or object into a new one.

    map(): Making a new array by transforming every item in an old one.

    filter(): Making a new array by picking only certain items.

    reduce(): Squashing an entire array into one single value (like a sum).

    forEach(): Running a bit of code for every item in a list.

    find() / findIndex(): Searching for the first item that matches a rule.

    some() / every(): Checking if any or all items pass a test.

    includes(): A simple check to see if an item exists in an array.

    flat(): Turning a nested array [[1], [2]] into a simple one [1, 2].

    Object.keys/values/entries: Converting objects into lists for easier looping.

    Object.assign(): Merging objects together (the old way).

    Object.freeze(): Making an object completely unchangeable.

    Map & Set: Modern collections; Map is for key-value pairs, Set is for unique lists.

    WeakMap: A Map that lets the computer delete items automatically if they aren't used elsewhere.

    JSON: The universal "language" for sending data between computers.

    Shallow vs Deep Copy: Copying only the top layer vs copying every hidden folder inside.

⏳ 4. Asynchronous JS (The Waiting Room)

    The Call Stack: The "Now Processing" list for the computer.

    The Event Loop: The "Traffic Cop" that manages background tasks.

    Task Queue: The waiting room for regular background tasks (like setTimeout).

    Callbacks: The "Call me back when you're done" pattern.

    Promises: An object representing a value that will exist in the future.

    async / await: Modern syntax that makes "waiting" for data look like normal code.

    Promise.all(): Waiting for a whole group of tasks to finish at once.

    Promise.race(): Getting the result of the task that finishes fastest.

    Promise.allSettled(): Waiting for all tasks to finish, even if some fail.

    Promise.any(): Getting the result of the first task that succeeds.

    setTimeout: Run code after a specific delay.

    setInterval: Run code repeatedly on a timer.

🌐 5. The DOM & Browser APIs (The Screen)

    DOM Selectors: querySelector and getElementById to "grab" parts of the page.

    DOM Manipulation: Changing text, colors, or structure using JS.

    Event Listeners: Telling JS to "listen" for clicks, typing, or scrolling.

    Bubbling & Capturing: How clicks travel through parent and child elements.

    Event Delegation: Putting one listener on a parent to manage many children.

    preventDefault(): Stopping the browser's default action (like a link opening).

    Storage: localStorage (permanent) and sessionStorage (temporary).

    Cookies: Small data bits stored by the browser for the server.

    fetch(): Making network requests to get data from an API.

    Intersection Observer: Detecting when an element is visible on the screen.

    Resize Observer: Detecting when an element changes its dimensions.

    History API: Changing the URL without a page refresh.

    URLSearchParams: Easily reading variables from a URL (like ?id=123).

    FormData: Grabbing all the input from a website form at once.

    Canvas API: A tool for drawing 2D/3D graphics in the browser.

    Web Workers: Running heavy code in the background so the UI doesn't freeze.

🏗️ 6. Advanced Concepts & Classes

    Prototypes: The "parent" objects that all JS objects inherit from.

    Classes: Blueprints for creating objects.

    Private Fields (#): Variables inside a class that cannot be seen from outside.

    Static Methods: Functions that belong to the Class itself, not the objects it makes.

    Getters/Setters: Functions that act like properties to control data access.

    ES Modules: Using import and export to share code between files.

    CommonJS: The older require() system used in Node.js.

    Generators: Functions that can pause and resume their execution.

    Proxies: Intercepting and redefining how people interact with an object.

    Garbage Collection: The automatic memory cleanup process.

    Debounce/Throttle: Limiting how often a function can run (for performance).

🛠️ 7. Tooling & Ecosystem

    NPM / Yarn: Package managers used to download other people's code.

    package.json: The settings file for your entire project.

    Babel: Converts new JS to old JS for older browsers.

    Vite / Webpack: Tools that bundle all your files together for the web.

    ESLint / Prettier: Tools that find bugs and fix your code formatting.

    Testing (Jest): Writing code to check if your other code actually works.