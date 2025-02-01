# ***Serverless Functions***
<br/>

---
### Quick Overview Serverless function providers:
---
### Netlify Functions:

Free Tier: 
- 125,000 requests per month.
- 100 hours of compute time.
  
Languages Supported: 
- JavaScript (Node.js).
- Go.
- Python.
  
Pros: 
- Simple setup with Netlify.
- Quick deployment. 
- Easy to use with static sites.
- Easily integrates with Netlify for deployment of serverless functions alongside static files.
  
Cons: 
- Limited resources
- Limited scaling & configurations compared to competitors.


### AWS Lambda:

Free Tier: 
- 1 million requests per month.
- 400,000 GB-seconds of compute time.

Languages Supported: 
- JavaScript (Node.js).
- Python. 
- Java.
- Go.
- Ruby. 
- .NET.
  
Pros: 
- Can be integrated with other AWS services
- Highly scalable. 
- Reliable and flexible with a vast ecosystem.
  
Cons: 
- Steeper learning curve.
- Complex setup.
- Cold start latency.


### Google Cloud Functions:

Free Tier: 
- 2 million invocations per month.
- 5 GB of outbound data transfer.

Languages Supported: 
- Node.js. 
- Python. 
- Go. 
- Ruby. 
- Java. 
- .NET.

Pros: 
- Scalable. 
- Supports multiple languages 
- Easily integrates with Google Cloud services
  
Cons: 
- Complex Pricing 
- Setup is tricky for beginners.
  

### Microsoft Azure Functions:

Free Tier: 
- 1 million requests per month.
- 400,000 GB-seconds of compute time.

Languages Supported: 
- C#. 
- JavaScript. 
- Python. 
- Java. 

Pros: 
- Comprehensive set of tools and services. 
- Good integration with Microsoft products.
Cons: 
- More complex to use compared to competitors.
- Especially for non-Microsoft ecosystems.
  

---
### Email services:
---
### EmailJS:

Free Tier: 
- 200 emails per month.

Features: 
- Simple API. 
- Integrates easily with client-side JavaScript, no backend needed.

Pros: 
- No server-side configuration required.
- Works well for small projects or simple email forms.
  
Cons: 
- Limited free tier.
- May not scale well for high-volume applications.


### SendGrid:

Free Tier: 
- 100 emails per day.

Features: 
- Advanced email marketing tools, templates, and tracking.
- Integrates with many platforms.

Pros: 
- Good for both transactional and marketing emails.
- Powerful analytics.

Cons: 
- Free tier is limited.
- Requires more configuration for full email workflows.


### Mailgun:

Free Tier: 
- 5,000 emails for the first 3 months.

Features: 
- Strong API, email analytics, and routing, especially for developers.

Pros: 
- Focused on developers. 
- Excellent email deliverability.

Cons: 
- Free tier limited to the first 3 months.
- Paid plans can get expensive for high-volume sending.


### MailChimp:

Free Tier: 
- 500 subscribers and 3,500 emails per month.
  
Features: 
- Email campaigns. 
- Automation. 
- Advanced analytics & marketing tools.

Pros: 
- Strong marketing-focused tools.
- Great for newsletters and customer engagement.

Cons: 
- More geared toward marketing rather than transactional emails.
- Expensive.


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