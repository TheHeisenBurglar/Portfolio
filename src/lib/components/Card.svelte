<script>
    export let artifact;
</script>
<div class="card">
    <h1 class="card_name">{artifact.name}</h1>
    <img src={artifact.image} alt="this is placeholder"/>
    <h2 class="origin">{artifact.origin}</h2>
    <div class="desc_grid">
        <h3 class="col">Age:</h3>
        <h3 class="col">{artifact.age}</h3>
        <h3 class="col">Power Level:</h3>
        <h3 class="col">{artifact.power_lvl}</h3>
    </div>
    {#if artifact.rarity === "common"}
        <h2 class="common">{(artifact.rarity).toUpperCase()}</h2>
    {:else if artifact.rarity === "rare"}
        <h2 class="rare">{(artifact.rarity).toUpperCase()}</h2>
    {:else if artifact.rarity === "legendary"}
        <h2 class="legendary">{(artifact.rarity).toUpperCase()}</h2>
    {/if}
</div>
<style lang="scss">
    @import '$lib/styles.scss';
    .card {
        width: 20rem;
        height: 40rem;
        border: 0.3rem solid $secondary;
        font-size: small;
        padding: 1rem;
        margin: 1rem;
        background-color: $main;
        /* align-items: center; */
        text-align: center;
    }
    .card > img {
        border: 0.3rem solid $secondary;
        margin-top: 1rem;
        width: 18rem;
        height: 22rem;
        object-fit: cover;
    }
    .card_name {
        border-bottom: 0.3rem solid transparent;
        width: 100%;
        margin: auto;
        color: $text;
        height: 4rem;
        display: flex;
        align-items: center;
    }
    .card_name:hover {
        border-bottom: 0.3rem solid $secondary;
        cursor: pointer;
    }
    .origin {
        margin: 1rem;
        padding: 0;
        color: $secondary;
    }
    .desc_grid {
        display: grid;
        grid-template-columns: 50% 50%;
        text-align: center;
        padding: 0.2rem;
        color: $text;
    }
    .col {
        text-align: end;
        margin: 0;
    }
    .common {
        color: $common;
    }
    .rare {
        color: $rare;
    }
    .legendary {
        color: $legendary;
    }
</style>