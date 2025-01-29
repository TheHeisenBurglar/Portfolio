<script>
    import { page } from '$app/stores'
    import { afterUpdate } from 'svelte';
    // export let data;
    export let home = false;
    export let writeup = false;
    export let about = false
    export let assignment = false;
    afterUpdate(()=> {
        let currentPath = $page.url.pathname.split("/")[1]
        switch (currentPath) {
            case "writeup":
                home = false;
                writeup = true;
                about = false;
                assignment = false;
                break;
            case "about":
                home = false;
                writeup = false;
                about = true;
                assignment = false;
                break;
            case "assignment":
                home = false;
                writeup = false;
                about = false;
                assignment = true;
                break;
            default:
                home = true;
                writeup = false;
                about = false;
                assignment = false;
                break;
        }
    })
    
</script>
<nav>
    <a href="/ " class="{home ? "active" : ""}">Home</a>
    <div class="dropdown">
        <span class="{writeup ? "active" : ""}">Write Ups</span>
        <div class="dropdown-content">
            <a href="/writeup/lab1">Lab 1</a>
            <a href="/writeup/lab2">Lab 2</a>
            <a href="/writeup/lab3">Lab 3</a>
        </div>
    </div>
    <div class="dropdown">
        <span class="{assignment ? "active" : ""}">Assignments</span>
        <div class="dropdown-content">
            <a href="/assignment/a1">Assignment1</a>
            <a href="/assignment/a2">Assignment2</a>
            <a href="/assignment/a3">Assignment3</a>
        </div>
    </div>
    
    <a href="/about" class="{about ? "active" : ""}">About</a>
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
                display: block;
            }
        }
    }
    .dropdown-content {
        display: none;
        position: absolute;
        /* min-width: inherit; */
        width: fit-content;
        flex-wrap:wrap-reverse;
        z-index: 1;
        background-color: $main;
        padding: 1rem;
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