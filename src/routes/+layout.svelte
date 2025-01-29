<script>
    export let data;
  import Footer from '../lib/components/Footer.svelte';
    import Header from '../lib/components/Header.svelte';
</script>
<Header {data} />
<div class="slot-div">
    <slot />
</div>
<Footer {data} />



<style lang="scss">
    @import '$lib/styles.scss';
</style>