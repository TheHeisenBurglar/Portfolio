<script>
    export let data
    import Card from '$lib/components/Card.svelte';
    import Pagnition from '$lib/components/Pagnition.svelte';
    export let pageRules = {
        'perPage':2,
        'currentPage': 1,
        'pages': Math.ceil(data.artifacts.length / 2)
    }
    $: start = (pageRules.currentPage - 1) * pageRules.perPage;
    $: end = start + pageRules.perPage;
    $: pageRules.pages = Math.ceil(data.artifacts.length / pageRules.perPage);
    $: console.log(`Current Page: ${pageRules.currentPage}`);
</script>

<div class="card_container">
    {#each data.artifacts.slice(start, end) as artifact}
        <Card {artifact} />
    {/each}
</div>
<Pagnition bind:pageRules={pageRules} />

<style lang="scss">
    @import '$lib/styles.scss';
    .card_container {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: wrap;
    }
</style>