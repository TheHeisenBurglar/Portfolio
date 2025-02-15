<script>
    import IMS_Screenshot from '$lib/assets/IMS_Dashboard_Screenshot.png'
    import PixelHeart_Screenshot from '$lib/assets/PixelHeart_Screenshot.png'
</script>

<h1>Hi! I'm Ibrahim. </h1>
<div class="typewriter">
    <h2>A Full-Stack Web Developer</h2>
</div>
<div class="demo-card">
    <h3 class="demo-h3"><a href="https://inventory-management-studio.vercel.app">Inventory Management Studio - In Progress</a></h3>
    <img src={IMS_Screenshot} class="demo-img"/>
    <div class="demo-cred-div">
        <p class="demo-p">Demo Username: </p><p class="demo-cred">DemoUser</p>
    </div>
    <div class="demo-cred-div">
        <p class="demo-p">Demo Password: </p> <p class="demo-cred">DemoPass</p>
    </div>
</div>
<div class="demo-card">
    <h3 class="demo-h3"><a href="https://pixel-heart.vercel.app">PixelHeart - In Progress</a></h3>
    <img src={PixelHeart_Screenshot} class="demo-img"/>
</div>



<style lang="scss">

    @import '$lib/styles.scss';

    h1 {
        margin: auto;
        width: fit-content;
        color: $text;
        padding: 1rem;
    }
    h2 {
        margin: 0;
        // font-size: 6vw;
        text-align: center;
        color: $text;
    }

    @media only screen and ( max-width: 800px) {
        h2 {
            font-size: 5vw
        }
        h1 {
            font-size: 11vw
        }
    }
    @media only screen and (min-width: 800px) {
        h2 {
            font-size: 5vh
        }
        h1 {
            font-size: 11vh;
        }
    }

    .typewriter h2 {
        width: fit-content;
        color: #fff;
        font-family: monospace;
        overflow: hidden; /* Ensures the content is not revealed until the animation */
        border-right: .15em solid orange; /* The typwriter cursor */
        white-space: nowrap; /* Keeps the content on a single line */
        margin: 0 auto; /* Gives that scrolling effect as the typing happens */
        letter-spacing: .15em; /* Adjust as needed */
        animation: 
            typing 2s steps(30, end),
            blink-caret .5s step-end infinite;
    }

    /* The typing effect */
    @keyframes typing {
        from { width: 0 }
        to { width: 90vw }
    }

    /* The typewriter cursor effect */
    @keyframes blink-caret {
        from, to { border-color: transparent }
        50% { border-color: $secondary }
    }

    // DEMOCARDS
    .demo-card {
        background-color: $main;
        width: 70%;
        position: relative;
        padding: 10px;
        margin: auto;
        margin-top: 10px;
        margin-bottom: 10px;
        border-radius: 10px;
        box-shadow: 5px 5px 2px $secondary;
        align-items: start;
        text-align: start;
    }
    a, span {
        font-size: 1.4rem;
        text-decoration: none;
        color: $text;
        transition: 200ms;
        /* padding: 1rem; */
        // border-bottom: 0.3rem solid transparent;
        @include a-link($text, $secondary, #3777FF)
    }
    .demo-h3, .demo-p {
        margin: 0;
        padding: 2px;
        color: $text;
    }
    .demo-img {
        object-fit: cover;
        overflow: hidden;
        // position: absolute;
        width: 80%;
        box-shadow: 5px 5px 2px black;
    }
    .demo-cred-div {
        display: grid;
        grid-template-columns: auto auto;
        width: fit-content;
        align-items: center;
        gap: 0;
    }
    .demo-cred {
        color: $secondary;
        padding: 2px;
        margin: 0;
    }
</style>