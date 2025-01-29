# ***Experience with Static Site Generators (SSG)***
# Template Engines
---
### Svelte
#### Pros
- Reactivity
    - Built-in, Ui is updated automatically with data changes
- Performance
    - Compiled into 'highly efficient' vanilla JavaScript at build
- Scoped Styling / Layouts
    - Layouts provide easy ways to build navbars, cause holy they can be a hassle
    - Scoped styling means naming all your button classes 'button' doesn't overwrite other buttons on other pages
- Built-in Routing
    - easy to understand and follow as it uses the file structure on the server to provide the routes
#### Cons
- No SSR
    - I am using svelte kit to achieve this
    - Without svelte kit, svelte does not offer it directly
- New
    - Not a lot of real-world examples running on svelte
- Build process
    - Requires Vite to compile components

> Source: https://svelte.dev

> Source: https://kit.svelte.dev

### Handlebars
#### Pros
- Familiar Syntax
    - Unlike Pug, Handlebars uses a syntax most web developers are used to.
    - Using HTML's syntax allows for Handlebars to be easily integrated with an existing codebase
- Flexible
    - Offers custom helpers and partials for reusable code
#### Cons
- No logic
    - Pre-processing must be done before template generation
- Complexity
    - Can be hard to maintain for large applications

> Source: https://ejs.co

> Source: https://dev.to/m__mdy__m/javascript-templating-engines-pug-handlebars-hbs-and-ejs-jcd

### EJS
#### Pros
- Familiar Syntax
    - Using plain JavaScript allows developers to easily adapt to using EJS
    - Easy to embed directly into existing codebases
    - We've already used it for our CSS course
- Performance
    - end-result is compiled into 'highly efficient' JavaScript Functions
#### Cons
- Mixing of code
    - A mix of javascript and HTML in a single file can become tough to comprehend

> https://handlebarsjs.com

> Source: https://dev.to/m__mdy__m/javascript-templating-engines-pug-handlebars-hbs-and-ejs-jcd

## Why I choose svelte
- All the points on the pro list.
    - Scoped styling helps me overcome my issue of class congestion
    - Layouts make it easier to build default components
    - Routing has never been easier
# Other Popular SSG applications
---
### Next Js
#### Pros
- Used by openAi, Spotify, Claude and other big companies
- Backed by Vercel, we love Vercel under this roof
#### Cons
- React is like asking for more salt on your popcorn and getting sand
- Opinionated
    - As all things should be (in my opinion)
- Overkill for static sites
- New and Updating
    - Version upgrades can cause code bases to break
> Source: https://nextjs.org/showcase

> Source: https://themobilereality.com/blog/next-js-vs-gatsby

### Gatsby
#### Pros
- This one seems interesting and I've seen a few cool projects
- used by known companies (upkeep, linktree and national geographic)
#### Cons
- React makes my bones hurt

> Source: https://www.gatsbyjs.com/showcase/

> Source: https://themobilereality.com/blog/next-js-vs-gatsby

# Configuration Settings
---
- mdsvex
    - allows .md files to be parsed into HTML to allow you to read this here

- Env
    - This would be interesting to use
    - Perhaps for API key or API URL

> Source: https://kit.svelte.dev/docs/configuration

# Front Matter
---
#### What is it?
Front matter is a word originating from its use in books. The book's front matter is the first few pages before the book starts introducing the author, publisher, special thanks, dedications and a table of contents. Ironically the context of front matter in web design is context. 
#### In the context of the web
It comes before the content portion of markdown, written in a very similar fashion to JSON, and allows the writer to provide necessary information in the context of this file.

> Source: https://dpericich.medium.com/what-is-front-matter-and-how-is-it-used-to-create-dynamic-webpages-9d8dc053b457

<style lang="scss"> 
    @import '$lib/styles.scss';
    * {
        color: $text;
        width: 70%;
        margin: auto;
    }
    ul, li {
        width: 80%;
        margin: auto;
    }
    h1 {
        text-align: center;
        font-size: 4rem;
    }
    h3 {
        color: $secondary;
        font-size: 3rem;
    }
    h4 {
        color: $secondary;
        font-size: 1.5rem;
    }
    li, p {
        font-size: 1.2rem;
    }
    li {
        color: $secondText;
    }
    hr {
        height: 0.2rem;
        border: none;
        background-color: $secondary;
    }
</style>