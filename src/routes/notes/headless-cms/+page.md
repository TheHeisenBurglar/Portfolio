# ***Headless CMS***
---
### My Choice
---
For an assignment, I chose Ghost as the headless CMS because it is easier to work with compared to some alternatives I’ve tried, like Strapi. Its Markdown editor and user-friendly API make content creation and integration a straightforward process, especially when using SvelteKit, which I found surprisingly easy to work with. While Ghost is primarily designed for blogs, this specialization actually simplifies my work, as it comes with native support for tagging and content categorization, both of which are ideal for organizing blog posts. The learning curve is manageable, and I don’t have to navigate SQL database issues like I did with Strapi, allowing me to focus on improving styling and functionality rather than troubleshooting database management. Overall, Ghost meets the projects needs well.

---
### Research
---
#### What is Headless CMS?
A Content Management System (CMS) is a backend repository for managing data. A headless CMS does not include a built-in front end, making the data accessible through an API.

#### Pros
1. **Flexibility**: Use any front-end technology or framework you want. It's like having a universal adapter for your content.
2. **Omnichannel content delivery**: Easily deliver content to multiple platforms and devices. Your content becomes a shapeshifter, adapting to any form it needs to take.
3. **Improved developer experience**: Developers can use modern tools and frameworks. It's like giving your dev team a shiny new toolbox filled with their favorite tools.
4. **Better performance**: Decoupling can lead to faster load times, especially with static site generators. Your content can now move at the speed of light.
5. **Future-proofing**: It's easier to adopt new front-end technologies as they emerge. Your content is ready for whatever the future holds.
#### Cons
1. **Increased complexity**: Requires more technical expertise to set up and manage. Much like upgrading from a bicycle to a motorcycle — more power, but also more components to maintain.
2. **No built-in presentation layer**: The front-end has to be built from scratch. You're trading the convenience of pre-built templates for the freedom of a blank canvas.
3. **Potential for higher initial costs**: More upfront development work may be needed. It's an investment in flexibility and future capabilities.
4. **Less user-friendly for non-technical users**: Content preview can be more difficult. It's similar to asking someone to visualize a finished meal from a list of ingredients.
### Strapi
Created in 2015 by Pierre, Aurélien and Jim for personal use and later published as an open-source headless CMS. The name "***Strapi***" came from "Boo**strap** your **API**". Currently used by Bash, Tesco and Sonos.
#### Pros
- "***Content Type Builder***" provides an UI for easy API creation.
- Integration with both relational and non-relational databases.
- Content API available in REST or GraphQL.
- Support for internationalization and localization .
- Third-party integration for Algolia, Ruby on Rails, Cloudinary, etc.
- Content type documentation can be automatically generated.
- Self-hosting and cloud service available.
- Built-in email service with every project using SMTP server.
- Provides custom role privileges and user permissions
#### Cons
- Steep learning curve for non-developers.
- Content management interface is not designed for mobile screen views.
- Heavy resource use.
#### Pricing
- Self-hosted
    - Free plan        
    - Flexible plan: (Custom pricing)
- Strapi Cloud
    - Pro plan: **$99**/month
    - Team plan: **$499**/month
    - Custom plan (Custom pricing)
### Contentful
Created in 2013 by Sascha Konietzke and Paolo Negri and currently used by BMW, DocuSign and Atlassian. Contentful is a cloud-based CMS that prioritizes abstraction to create simplification for developers, content editors and administrators.
#### Pros
- User-friendly
- Specializes in handling of omnichannel content distribution.
- Content models offer simple editing and creation.
- Third-party support for analytics, marketing and automation tools.
- Real time collaboration among content teams.
- Supports images, videos and documents as content formats.
- Custom content formats.
#### Cons
- Importing large amounts of data requires custom scripts through an API.
- Structure and component flexibility can be detrimental to larger projects if managed correctly.
- Content models provide a learning curve for new users.
#### Pricing
- Free plan (for developers and marketers building individual projects)
- Basic plan: **$300**/month
- Premium plan: (Custom pricing)
### Sanity
Founded in 2016 by Even Westvang, Magnus Kongsli Hilestad, Obyind Rostad and Simen Svale Skogstrud. Sanity prides itself on the ability to connect its users to any third-party data source and is used by Figma, LogRocket and Puma
#### Pros
- Content is structured data.
- Offers users vis SSO project access and roles.
- Programmable webhooks connected to content changes (Post, Put or Delete).
- Provides "***Sanity Studio***" site, offering users to manage and customize content.
#### Cons
- Not designed for non-developers.
- User management is separated from content management interface.
- Query language "***GROQ***" offers a learning curve for most developers.
- No support for third-party API importing.
- Lacking in user permissions flexibility.
#### Pricing
- Free plan
- Team plan: **$99**/month
- Business plan: **$949**/month
- Enterprise plan: (Custom pricing)

---
### Experience
---
After using Ghost, I assumed implementing another CMS would be as simple as calling a different endpoint of an API. However, I quickly discovered while working with Strapi that its default database solution was a form of SQL—specifically SQLite, I believe. This posed a challenge for me, as I had only used SQL briefly in a database course about a year ago; my main experience was with REST APIs and MongoDB-style databases. Retrieving data was one hurdle, but getting it to render on my front end was a whole other challenge. The data was deeply nested, which made it a real programming effort to extract into readable text. Overall, this CMS was a headache. My research led me to believe it would be easier for developers, but I guess many developers have more experience with SQL. Honestly, working with this CMS has motivated me to learn more about SQL and recognize the necessity of understanding it as a database solution.
### Strapi Api
# Dashboard
![image](/sanity/sanityapi.png)
# Get All
![image](/sanity/getall1.png)
![image](/sanity/getall2.png)
![image](/sanity/getall3.png)
# Get by Id / Slug
![image](/sanity/getbyid1.png)
![image](/sanity/getbyid2.png)
![image](/sanity/getbyid3.png)

### Prismic
Created in 2013, the Prismic.io headless CMS is used by Google, Dribbble and Rakuten. Prismic's design philosophy is based around performance of developers, content writers and marketing specialists. 
#### Pros
- Access is controlled by access tokens.
- Fetch fields from linked documents and selective fetch for specific fields.
- Supports localization of content versions.
- "***Slice Zones***" offers greater customizability to authors to create dynamic layouts for any page.
- Native image optimization using "***Imgix***"
- Bring in data via content catalogs or APIs using "***Integration Fields***".
- Analytics for users interactions.
#### Cons
- Customization options and additional features require developer expertise.
- Custom query language "***GraphQuery***" extends the learning curve for new users.
- Strict content models.
#### Pricing
- Free plan
- Starter plan:  **$7**/month
- Small plan:  **$15**/month
- Medium plan: **$100**/month
- Platinum plan: **$500**/month
### Ghost
Created in 2013 by John O'Nolan and Hannah Wolfe, Ghost is a blog centered headless CMS used by Clubhouse, DuckDuckGo and Square Inc
#### Pros
- Built in SEO optimization tools.
- Integration library to connect with third-party apps.
- Markdown editor instead of the standard HTML.
- Support for membership and subscription based content.
- Analytics for website performance, audience interaction and content data.
- User roles for easy permission security.
- Supports tagging and categorization of content.
- Customizable theming.
#### Cons
- Learning curve for non-developers.
- Designed as a blog engine.
- Not as versatile for themes and customization options compared to competitors.
- Third-party support is lacking.
#### Pricing
- Starter plan: **$9**/month
- Creator plan:  **$25**/month
- Team plan: **$50**/month
- Business plan: **$199**/month
#### Experience
At first, using a CMS API in SvelteKit felt daunting, but after learning more about it, implementing my ideas became straightforward. I would have liked to spend more time enhancing the styling and functionality of Ghost to create a complete site and to clean up my codebase. As a first-time user of a headless CMS, I found Ghost to be a solid choice. However, I noticed that the API response didn’t include information about the blog post's author, which I hadn't initially looked into but would have been useful. Overall, this headless CMS was easy to integrate and made creating blog posts simple.
# Ghost Dashboard
![image](/ghost/ghostapi.png)

# Get all
![image](/ghost/getall1.png)
![image](/ghost/getall2.png)
![image](/ghost/getall3.png)

# Get by slug
![image](/ghost/getbyslug1.png)
![image](/ghost/getbyslug2.png)
![image](/ghost/getbyslug3.png)

---
Source: https://dev.to/builderio/the-ultimate-guide-to-headless-cms-4o6h

Source: https://buttercms.com/blog/best-headless-cms/

Source: https://docs.strapi.io/dev-docs/quick-start

Source: https://ghost.org/resources/

<style lang="scss"> 
    @import '$lib/styles.scss';
    * {
        color: $text;
        width: 90%;
        margin: auto;
    }
    ul, li {
        width: 90%;
        margin: auto;
    }
    h1 {
        text-align: center;
        font-size: xx-large;
    }
    h3 {
        color: $secondary;
        font-size: xx-large;
    }
    h4 {
        color: $secondary;
        font-size: larger;
    }
    li, p {
        font-size: large;
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