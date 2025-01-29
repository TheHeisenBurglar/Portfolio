<h1>Hi! I'm Ibrahim. </h1>
<div class="typewriter">
    <h2>A Full-Stack Web Developer</h2>
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
</style>