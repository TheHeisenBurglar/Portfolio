<footer>
    <!-- <a href="/terms">terms and conditions</a> -->
    <a href="https://www.linkedin.com/in/ibrahim-khalil-shehadeh/">LinkedIN</a>
</footer>

<style lang="scss">
    @import '$lib/styles.scss';
    // @media only screen and ( max-width: 800px) {
    //     a {
    //         font-size: 2.5vh
    //     }
    // }
    // @media only screen and (min-width: 800px) {
    //     a {
    //         font-size: 2.5vh
    //     }
    // }
    footer {
        background-color: $main;
        // padding: 1.5rem;
        /* border-top: 0.5rem solid #B96E3C; */
        /* margin: 0; */
        color: $text;
        position: fixed;
        bottom: 0;
        left: 0;
        height: 4rem;
        width: 100%;
        max-width: inherit;
        display: flex;
        font-size: 2.5vh;
        justify-content: space-evenly;
        align-items: center;
        border-top: 0.3rem solid $secondary;
        z-index: 3;
    }
    a{
        @include a-link($text, $secondary, #3777FF)
    }
</style>