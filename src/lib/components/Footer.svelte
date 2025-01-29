<footer>
    <!-- <a href="/terms">terms and conditions</a> -->
    <a href="https://www.linkedin.com/in/ibrahim-khalil-shehadeh/">LinkedIN</a>
</footer>

<style lang="scss">
    @import '$lib/styles.scss';
    
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
        font-size: xx-large;
        display: flex;
        justify-content: space-evenly;
        align-items: center;
        border-top: 0.3rem solid $secondary;
        z-index: 3;
    }
    a{
        @include a-link($text, $secondary, #3777FF)
    }
</style>