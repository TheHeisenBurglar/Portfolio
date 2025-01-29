<script>
    import { page } from '$app/stores';
    $: currentPath = $page.url.pathname;
</script>
<nav>
    <a href="/ " class="{currentPath === "/" ? "active" : ""}">Work</a>
    <a href="/about" class="{currentPath === "/about" ? "active" : ""}">About</a>
    <div class="dropdown">
        <span class="{currentPath.includes("/notes") ? "active" : ""}">Notes</span>
        <div class="dropdown-content">
            <ul>
                <li><a href="/notes/experience-with-ssgs">Experience with SSGS</a></li>
                <li><a href="/notes/headless-cms">Headless CMS</a></li>
                <li><a href="/notes/serverless-functions">Servless Functions</a></li>
            </ul>
            <!-- <a href="/notes/experience-with-ssgs">Experience with SSGS</a>
            <a href="/notes/headless-cms">Headless CMS</a>
            <a href="/notes/serverless-functions">Servless Functions</a> -->
        </div>
    </div>
    <a href="/contact" class="{currentPath === "/contact" ? "active" : ""}">Contact</a>
    
</nav>
<style lang="scss">
    @import '$lib/styles.scss';
    nav {
        // @include a-link($secondy)
        background-color: $main;
        padding: 0.7rem;
        border-bottom: 0.5rem solid $secondary;
        margin: 0;
        display: flex;
        justify-content: space-evenly;
        z-index: 3;
        position: relative;
    }
    .active{
        border-bottom: 0.3rem solid $secondary;
        color: $secondary;
    }
    .dropdown {
        position: relative;
        display: inline-block;
        &:hover {
            .dropdown-content{
                opacity: 100;
                pointer-events: all;
            }
        }
    }
    .dropdown-content {
        opacity: 0;
        pointer-events: none;
        position: absolute;
        /* min-width: inherit; */
        width: fit-content;
        flex-wrap:wrap-reverse;
        z-index: 1;
        background-color: $main;
        // padding: 1rem;
        padding-right: 20px;
    }
    // .dropdown:hover .dropdown-content {
    //     display: block;
    // }
    a, span {
        font-size: 1.4rem;
        text-decoration: none;
        color: $text;
        transition: 200ms;
        /* padding: 1rem; */
        // border-bottom: 0.3rem solid transparent;
        @include a-link($text, $secondary, #3777FF)
    }

    // a:hover, span:hover{
    //     color: #3777FF;
    //     border-bottom: 0.3rem solid $secondary;
    //     cursor: pointer;
    // }

    .slot-div {
        padding: 1rem;
        font-size: larger;
    }
</style>