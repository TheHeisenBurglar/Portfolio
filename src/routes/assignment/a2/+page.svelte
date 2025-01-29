<script>
    export let data
    let totalPosts = data.posts.length;
    $: perPage = 2;
    $: currentPage = 1;
    $: pageCount = Math.ceil(totalPosts/perPage);
     $: onPageIndex = {
        start: (perPage * (currentPage - 1)),
        end: perPage * currentPage
    };
    $: postsOnPage = data.posts.slice(onPageIndex.start, onPageIndex.end);
    const handlePageUp = (() => {
        if (currentPage < pageCount){
            currentPage++
        }
        
    })
    const handlePageDown = (() => {
        if (currentPage > 1){
            currentPage--
        }
    })
    function changePerPage(value) {
        perPage = value;
        // TODO: if page is removed, need to go to last available page (currentPage = pageCount)
    }

    $: searchVal = ""
    const handleSearch = (() => {
        console.log(searchVal)
        postsOnPage = data.posts.slice(onPageIndex.start, onPageIndex.end).filter((post) => post.title.toLowerCase().includes(searchVal.toLowerCase()))
    })
</script>
<div class="options">
    <div class="per-page">
        <h3>Items: {perPage}</h3>
        <div class="dropdown-content">
            <button on:click={() => {changePerPage(2)}} class={perPage == 2 ? 'inactive' : 'active'}>2</button>
            <button on:click={() => {changePerPage(4)}} class={perPage == 4 ? 'inactive' : 'active'}>4</button>
            <button on:click={() => {changePerPage(6)}} class={perPage == 6 ? 'inactive' : 'active'}>6</button>
        </div>
    </div>
    <input type="text" bind:value={searchVal} placeholder="search here..." on:input={handleSearch}/>
</div>

<div class="list">
        {#each postsOnPage as post}
            <a href="./a2/{post.slug}">{post.title}</a>
            <br/>
            <p>{post.excerpt}...</p>
            <br/>
        {/each}
</div>
<div class="pagination">
    <span on:click={handlePageDown} class={currentPage > 1 ? 'btn-active' : 'btn-inactive'}>&lt</span>
    <span on:click={handlePageUp} class={currentPage < pageCount ? 'btn-active' : 'btn-inactive'}>&gt</span>
</div>

<!-- <div class="card_container">
    <ul>
        {#each data.posts as post}
            <li><a href="./a2/{post.slug}">{post.title}</a></li>
        {/each}
    </ul>
</div> -->

<style lang="scss">
    @import '$lib/styles.scss';
    .options {
        display: grid;
        grid-template-columns: auto auto;
    }
    input {
        font-size: 1.5rem;
        height: fit-content;
        margin: auto;
        width: 50%;
    }
        
    .per-page {
        width: fit-content;
        padding: 1rem;
        color: $text;
        &:hover {
            cursor: pointer;
            color: $secondary;
            .dropdown-content {
                display: block;
            }
        }
    }
    .dropdown-content {
        display: none;
        position: absolute;
    }
    button { // TODO: Styling needed
        cursor: pointer;
    }
    .list {
        text-align: center;
        padding: 1rem;
    }
    .btn-inactive {
        @include a-link($text, $secondary, #3777FF);
        // color: $text;
        font-size: 1.7rem;
        color: red;
        margin: auto;
        &:hover {
            cursor: not-allowed;
        }
    }
    .btn-active {
        @include a-link($text, $secondary, #3777FF);
        // color: $text;
        font-size: 1.7rem;
        color: green;
        margin: auto;
        &:hover {
            cursor: pointer;
        }
    }
    a {
        @include a-link($text, $secondary, #3777FF);
        // color: $text;
        font-size: 1.7rem;
        margin: auto;
        // text-decoration: none;
    }
    .pagination{
        margin: auto;
        width: fit-content;
    }
</style>