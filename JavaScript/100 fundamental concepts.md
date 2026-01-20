1. Core Fundamentals (Basics to Intermediate)

These are the building blocks. You can't skip these if you want to understand how JS actually works.

    let vs const vs var (Block scope vs Function scope)

    Primitive Types (String, Number, Boolean, BigInt, Symbol, null, undefined)

    Template Literals (Backticks and ${variable})

    Type Coercion (The "magic" of 5 + '5')

    Strict Equality (===) vs Equality (==)

    Ternary Operator (condition ? true : false)

    Short-circuit Evaluation (&&, ||)

    Nullish Coalescing (??)

    Optional Chaining (?.)

    Loops (for, while, for...of, for...in)

    Truthiness and Falsiness

    The delete operator

    Type Checking (typeof, instanceof)

    Error Handling (try...catch...finally)

    Custom Errors (throw new Error())

    Strict Mode ("use strict")

    Comments (Documentation patterns like JSDoc)

    Bitwise Operators (Less common, but useful for performance)

    Labels (Breaking out of nested loops)

    Expression vs Statement

2. Functions & Scope

Functions are "first-class citizens" in JavaScript. Understanding them is 50% of the battle.

    Function Declarations vs Expressions

    Arrow Functions (and how they handle this)

    Parameters vs Arguments

    Default Parameters

    Rest Parameters (...args)

    Immediately Invoked Function Expressions (IIFE)

    Closures (Functions remembering their outer scope)

    Hoisting (Variable and function movement)

    Scope (Global, Local, Block, and Module)

    Higher-Order Functions (Functions that take/return functions)

    The this Keyword (Context)

    Explicit Binding (call, apply, bind)

    Recursion

    Pure Functions (No side effects)

    Currying

3. Objects & Arrays

Where the data lives. Most of your daily work involves manipulating these two.

    Object Literals

    Computed Property Names ({[key]: value})

    Object Destructuring

    Array Destructuring

    Spread Operator ({...obj}, [...arr])

    Array.map() (Transformation)

    Array.filter() (Selection)

    Array.reduce() (Accumulation)

    Array.forEach() (Iteration)

    Array.find() & findIndex()

    Array.some() & every()

    Array.includes()

    Array.flat() & flatMap()

    Object.keys(), values(), entries()

    Object.assign() vs Spread

    Object.freeze() vs Object.seal()

    Map and Set Data Structures

    WeakMap and WeakSet (Memory management)

    JSON Methods (stringify, parse)

    Shallow vs Deep Copying

4. Asynchronous JavaScript

This is what makes JS powerful for the web.

    The Call Stack

    The Event Loop

    Task Queue vs Microtask Queue

    Callbacks (The old way)

    Promises (Pending, Fulfilled, Rejected)

    async / await (Syntactic sugar for Promises)

    Promise.all() (Parallel execution)

    Promise.race()

    Promise.allSettled()

    Promise.any()

    setTimeout & setInterval

    requestAnimationFrame (For smooth UI/animations)

5. The DOM & Browser APIs

How JS interacts with the website and the user.

    DOM Selectors (querySelector, getElementById)

    DOM Manipulation (createElement, appendChild, remove)

    Event Listeners (addEventListener)

    Event Bubbling & Capturing

    Event Delegation (Efficiency)

    preventDefault() & stopPropagation()

    localStorage & sessionStorage

    Cookies

    The Fetch API (Network requests)

    Intersection Observer (Detecting when elements are on screen)

    Resize Observer

    History API (Navigation)

    URLSearchParams

    Forms and FormData

    Canvas API (Drawing)

    Web Workers (Multi-threading)

6. Advanced Concepts & Classes

For building complex systems and libraries.

    Prototypes and Prototype Chain

    Classes (Constructor, super, extends)

    Private Class Fields (#variable)

    Static Methods & Properties

    Getters and Setters

    Modules (ESM) (import, export)

    CommonJS (require, module.exports)

    Generator Functions (function*)

    Proxies and Reflect (Metaprogramming)

    Memory Management & Garbage Collection

    Debouncing & Throttling (Performance optimization)

7. Tooling & Ecosystem

You can't build modern JS without these tools.

    NPM / Yarn / PNPM (Package Managers)

    package.json (Dependency management)

    Babel (Transpilation)

    Webpack / Vite / Esbuild (Bundlers)

    ESLint & Prettier (Code quality and formatting)

    Testing Frameworks (Jest, Vitest, Cypress)

    ~~~ 100 Fundamental Concepts Explained Further ~~~

    Explaining 100 concepts at once is a bit like eating a 100-layer cake—delicious, but you’ll get a stomachache. Let’s break these down into "bite-sized" explanations using simple analogies.

Here is Part 1: The Essentials (Items 1–35) explained for humans.
1. Core Fundamentals: The "Building Materials"

    let vs const vs var: Think of variables as boxes. const is a box you tape shut once it's full (can't change it). let is a box with a lid you can swap items in. var is an old, leaky box from the 90s that sometimes lets things escape where they don't belong.

    Primitive Types: These are the "raw ingredients" like numbers, text (Strings), and "Yes/No" (Booleans).

    Template Literals: Instead of "Hello " + name, you use `Hello ${name}`. It's like a "Fill-in-the-blanks" greeting card.

    Type Coercion: JS is "helpful" to a fault. If you add a number to a word (5 + '5'), JS turns the number into a word too, giving you '55'.

    Equality (=== vs ==): === is the "Strict Detective" (checks if the value AND type match). == is the "Lazy Cop" (thinks "5" and 5 are the same thing).

    Ternary Operator: A one-line if-else. Is it raining? Yes: Take umbrella, No: Wear sunglasses.

    Short-circuit (&&, ||): && says "I only continue if the first thing is true." || says "If the first thing is true, I’m done already."

    Nullish Coalescing (??): A way to say, "Give me this value, but if it’s literally empty (null), use this backup instead."

    Optional Chaining (?.): Prevents your code from crashing if you try to look inside a folder that doesn't exist.

    Loops: Doing the same chore 100 times without writing 100 lines of code.

2. Functions & Scope: The "Instruction Manuals"

    Functions: A saved recipe. You write it once and "cook" it whenever you need.

    Arrow Functions: A modern, shorter way to write recipes. () => { ... }.

    Hoisting: JS reads your code twice. The first time, it "lifts" all your variable names to the top, which is why you can sometimes use things before you define them (but it’s a bad habit!).

    Scope: This defines who can see your variables. "Global" is the town square (everyone sees); "Local" is inside your house (only you see).

    Closures: Imagine a function that "remembers" the room it was born in, even after it leaves. It keeps a secret "backpack" of variables from its birthplace.

    The this Keyword: The most confusing word in JS. It basically means "Who is calling me right now?" (The context).

    Pure Functions: Like a calculator. If you put in 2 + 2, you get 4 every single time, and the calculator doesn't accidentally change the weather outside.

    IIFE: A function that runs the very second it is born and then immediately disappears.

    Rest Parameters (...args): A "Catch-all" bag. If you don't know how many items are coming, this grabs them all and puts them in a list.

    Spread Operator: The opposite of Rest. It takes a list and "spills" the contents out individually.

3. Objects & Arrays: The "Storage Units"

    Objects: A labeled cabinet. You don't look for "Item #1," you look for the drawer labeled "Socks."

    Arrays: A numbered list. Great for things that have a specific order, like a "To-Do" list.

    Destructuring: A fast way to "unpack" your boxes. Instead of saying box.apple, you just grab the apple out of the box directly.

    map(): Takes a list, does something to every item, and gives you a new list. (e.g., Turning a list of raw eggs into a list of fried eggs).

    filter(): A bouncer at a club. It looks at your list and only lets the items that meet a certain rule stay.

    reduce(): Turning a whole list into one single thing (like adding up a receipt to get a total).

    find(): Looking through a crowd until you find the first person wearing a red hat, then stopping.

    includes(): A quick "Yes/No" check to see if something is in your list.

    forEach(): Just doing a chore for every item on the list without making a new list.

    Object.keys(): Getting a list of all the "drawer labels" in your cabinet.

    Map (Data Structure): Like an Object, but it’s better at remembering the order of things and can use almost anything as a label.

    Set: A list that refuses to have duplicates. If you try to add "Apple" twice, it just ignores the second one.

    JSON: A specific way of writing data so that different computers (like a Mac and a Server) can talk to each other.

    Shallow vs Deep Copy: A "Shallow" copy is like sharing a Google Doc (change one, both change). A "Deep" copy is like printing it out (change yours, mine stays the same).

    Reference vs Value: Simple things (numbers) are passed around like cash. Objects are passed around like a GPS location to a house; if you change the house at that location, everyone sees it.

    Let’s keep the momentum going! We’ve built the foundation; now we’re getting into how JavaScript manipulates data and handles "waiting" (which it does a lot).

Here is Part 2: Data Mastery & The "Waiting" Game (Items 36–70).
3. Data Mastery (Advanced Objects & Arrays)

Think of these as the "Pro Moves" for handling your information.

    Object Literals: The standard way to write { key: value }. It’s like a digital ID card for an item.

    Computed Property Names: Using a variable to name a property. {[someVar]: 10}. It's like having a label-maker that changes labels automatically.

    Object Destructuring: Quickly pulling values out of an object. Instead of user.name, you just grab name.

    Array Destructuring: Pulling values out of a list by their position.

    Spread Operator (...): Spilling the contents of one box into another. Great for merging lists or objects.

    Array.map(): Taking a list of items and transforming every single one into something else.

    Array.filter(): Looking at a list and only keeping the items that pass a specific test.

    Array.reduce(): The "Snowball" method. You start with a list and roll it into one single value (like a total price).

    Array.forEach(): Just saying "do this for every item," like a drill sergeant.

    Array.find() & findIndex(): Looking for the first specific item in a list and either grabbing it or its position.

    Array.some() & every(): Questions for your list. "Is any item a 10?" or "Are all items 10s?"

    Array.includes(): A simple "Is this item here?" (Returns True/False).

    Array.flat(): Taking a list of lists and flattening it into one long list.

    Object.keys/values/entries: Converting an object into a list so you can loop through it easily.

    Object.assign(): An older way to merge objects (now mostly replaced by the spread operator).

    Object.freeze(): Locking a box so nobody can change what's inside.

    Map & Set: Map is like an object but faster for searching; Set is a list that forbids duplicates.

    WeakMap & WeakSet: Like their siblings, but they let the computer "garbage collect" (delete) items if they aren't being used elsewhere.

    JSON Methods: stringify turns code into a string (to send to a server); parse turns that string back into code.

    Shallow vs Deep Copying: A "Shallow" copy only copies the top layer. A "Deep" copy copies every single hidden folder inside.

4. Asynchronous JS: The "Waiting Room"

JavaScript can only do one thing at a time. These concepts explain how it manages to do "heavy lifting" without freezing your screen.

    The Call Stack: The "To-Do" list for the computer. It handles one task at a time from top to bottom.

    The Event Loop: The "Traffic Cop." It decides when it’s safe to move a finished background task back onto the main "To-Do" list.

    Task vs Microtask Queue: Two different waiting rooms. Microtasks (like Promises) always get to go first.

    Callbacks: Giving a function to another function and saying, "Call me when you're done."

    Promises: A "Pager" at a restaurant. It’s not the food yet, but it’s a guarantee that the food (data) is coming.

    async / await: A cleaner way to write Promises. It makes "waiting" code look like "normal" code.

    Promise.all(): Running 5 tasks at once and waiting for all of them to finish.

    Promise.race(): Running 5 tasks and only caring about whoever finishes first.

    Promise.allSettled(): Waiting for all tasks to finish, regardless of whether they succeeded or failed.

    Promise.any(): Waiting for the first task that succeeds (ignores failures).

    setTimeout: An alarm clock. "Do this in 5 seconds."

    setInterval: A repeating alarm. "Do this every 5 seconds."

5. The DOM: The "Remote Control"

This is how JavaScript "talks" to the HTML/CSS on your screen.

    DOM Selectors: querySelector is like a laser pointer. You use it to point at the part of the website you want to change.

    DOM Manipulation: This is where JS physically changes the page—adding a "Dark Mode" class or changing the text on a button.

    Event Listeners: Telling an element, "Listen for a click, and when you hear it, run this code."

    5. More Browser Magic (The Rest of the DOM)

    Event Bubbling & Capturing: If you click a button inside a box, you’re technically clicking the box, too. "Bubbling" is the click moving from the button up to the box. "Capturing" is the click moving from the box down to the button.

    Event Delegation: Instead of putting a "listener" on 100 different buttons, you put one on their parent and let it figure out which button was clicked. It’s like having one receptionist for a whole building instead of one for every desk.

    preventDefault() & stopPropagation(): preventDefault() tells a link "Don't actually go to that URL." stopPropagation() tells an event "Stop bubbling up; don't tell my parents I was clicked!"

    localStorage & sessionStorage: A tiny "Save Game" slot in your browser. localStorage stays forever; sessionStorage vanishes when you close the tab.

    Cookies: Tiny notes the server leaves in your browser so it remembers who you are (like a "Hello, my name is..." sticker).

    The Fetch API: The modern way to ask a server for data without refreshing the page.

    Intersection Observer: A "Lookout" that tells you when an element (like an image) finally scrolls into view. Perfect for "Infinite Scroll" feeds.

    Resize Observer: A "Lookout" that tells you when an element changes size (not just the whole window).

    History API: Lets JS change the URL in the address bar without actually loading a new page. This is how "Single Page Apps" (like Gmail) work.

    URLSearchParams: A tool to easily read the "stuff" at the end of a URL (like ?search=shoes&size=10).

    Forms and FormData: A way to grab every answer in a 50-question form all at once and prep it for the server.

    Canvas API: A digital "Etch-A-Sketch" that lets you draw shapes and animations using only code.

    Web Workers: Letting a second person (background thread) do the heavy math so the main person (UI thread) can keep the website running smoothly.

6. Advanced Concepts & Classes (The "Blueprints")

    Prototypes: The "DNA" of JavaScript. Every object has a "parent" it inherits traits from. If an object doesn't know how to do something, it asks its parent.

    Classes: A "Cookie Cutter." You define what a "User" looks like once, and then you can stamp out 1,000 individual User objects easily.

    Private Class Fields (#): Putting a "Keep Out" sign on certain data inside your class so other parts of the code can't accidentally mess with it.

    Static Methods: Functions that belong to the "Cookie Cutter" itself, not the individual cookies.

    Getters and Setters: "Gatekeeper" functions. Instead of letting people change a variable directly, they have to go through a function that checks if the new value is valid.

    Modules (ESM): Splitting your code into different files. You export a function from File A and import it into File B. It keeps things tidy!

    CommonJS: The "Old Way" of doing modules (using require), mostly used in older Node.js projects.

    Generator Functions (function*): A function that can "Pause" in the middle of running and "Resume" later.

    Proxies: A "Stunt Double" for an object. You can tell the Proxy to "Watch" whenever someone tries to read or change the object and do something special (like logging it).

    Garbage Collection: A "Janitor" that automatically deletes variables from the computer's memory once it realizes you aren't using them anymore.

    Debouncing & Throttling:

        Debouncing: "Wait until I'm finished typing before you search."

        Throttling: "Only let me click 'Submit' once every 2 seconds, no matter how fast I mash the button."

7. Tooling & Ecosystem (The "Workshop")

    NPM / Yarn / PNPM: The "App Store" for code. Need a chart? Need a date calculator? Just download a "package" someone else already built.

    package.json: The "Manifest" or "Shopping List" for your project. It lists every tool your project needs to run.

    Babel: A "Translator." It takes modern JS that old browsers (like Internet Explorer) don't understand and turns it into old-fashioned JS they do understand.

    Webpack / Vite: The "Packers." They take your 100 different CSS, Image, and JS files and bundle them into a few small, fast files for the browser.

    ESLint & Prettier: The "Grammar Police." ESLint finds bugs; Prettier makes sure your code is pretty and consistent.

    Testing Frameworks (Jest/Cypress): Robots that run your code and tell you if it actually works before you ship it to real customers.