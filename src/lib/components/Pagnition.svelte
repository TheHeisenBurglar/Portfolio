<script>
    export let pageRules;
    $: totalPages = pageRules.pages
    function prevPage() {
        if (pageRules.currentPage > 1) {
            pageRules.currentPage -= 1;
            console.log(`Moved to Previous Page: ${pageRules.currentPage}`);
        }
    }

    function nextPage() {
        if (pageRules.currentPage < pageRules.pages) {
            pageRules.currentPage += 1;
            console.log(`Moved to Previous Page: ${pageRules.currentPage}`);
        }
        // console.log(pageRules.currentPage)
    }
</script>
<div class="pagnition">
    <button class={pageRules.currentPage === 1 ? "off" : ""} on:click={pageRules.currentPage != 1 ? prevPage : ''}>&lt</button>
    {#each Array(totalPages) as _, idx}
        <button class={pageRules.currentPage === (idx + 1) ? "current" : ""} on:click={() => {pageRules.currentPage = (idx+1)}}>{idx + 1}</button>
        <!-- {#if (idx+1) <= 3}
            <button class={pageRules.currentPage === (idx + 1) ? "current" : ""} on:click={() => {pageRules.currentPage = (idx+1)}}>{idx + 1}</button>
        {:else if (idx+1) === totalPages}
            <button>...</button>
            <button class={pageRules.currentPage === (idx + 1) ? "current" : ""} on:click={() => {pageRules.currentPage = (idx+1)}}>{idx + 1}</button>
        {/if} -->
    {/each}
    <button class={pageRules.currentPage === pageRules.pages ? "off" : ""} on:click={pageRules.currentPage != pageRules.pages ? nextPage : ''}>&gt</button>
</div>
<style lang="scss">
    @import '$lib/styles.scss';
     
    .pagnition{
        border: 0.3rem solid $secondary;
        display: flex;
        justify-content: center;
        background-color: $main;
        width: fit-content;
        padding: 1rem;
        margin: auto;
    }
     
    button {
        color:$text;
        background-color: $main;
        border: 0.3rem solid transparent;
        // border-bottom: 0.3rem solid $secondary;
        margin: 0.2rem;
        cursor: pointer;
        transition: 300ms;
    }
    button:hover {
        border: 0.3rem solid $secondary;
    }
    .current {
        border-bottom: 0.3rem solid $secondary;
    }
    .off {
        cursor:not-allowed;
        background-color: #620101;
        border-bottom: 0.3rem solid red;
    }
    .off:hover{
        border: 0.3rem solid red;
    }
</style>