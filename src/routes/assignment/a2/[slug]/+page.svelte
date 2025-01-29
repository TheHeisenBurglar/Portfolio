<script>
    export let data
    console.log(data.posts)
</script>
<div>
    <a href="/assignment/a2">&lt go back</a>
    <h1>{data.posts.title}</h1>
    <div>
        {@html data.posts.html}
    </div>
    
</div>


<style lang="scss">
    @import '$lib/styles.scss';
    a {
        @include a-link($text, $secondary, #3777FF);
        // color: $text;
        font-size: 1.7rem;
        // padding: 1rem;
        // text-decoration: none;
    }
    h1 {
        color: $secondary;
        font-size: 3rem;
        text-align: center;
    }
    // :global(p, li){
    //     color: $text;
    //     font-size: 1.5rem;
    //     padding-left: 2rem;
    //     padding-right: 2rem;
    // }
    div {
        padding: 1rem;
    }
    :global(a) {
        color: $secondText;
    }
    :global(ul, li) {
        width: 80%;
        margin: auto;
    }
    :global(h1) {
        text-align: center;
        font-size: 4rem;
    }
    :global(h3) {
        color: $secondary;
        font-size: 3rem;
    }
    :global(h4) {
        color: $secondary;
        font-size: 1.5rem;
    }
    :global(li, p) {
        font-size: 1.2rem;
        color: $text;
    }
    :global(li) {
        color: $secondText;
    }
    :global(hr) {
        height: 0.2rem;
        border: none;
        background-color: $secondary;
    }
</style>