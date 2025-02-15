<script>
    import Footer from '$lib/components/Footer.svelte';
    import Header from '$lib/components/Header.svelte';   
    import bgVideo from '$lib/assets/background.mp4'
    import { injectAnalytics } from '@vercel/analytics/sveltekit'
    import { dev } from '$app/environment';

    injectAnalytics({ mode: dev ? 'development' : 'production'})
</script>
<Header />
<div class="slot-div">
    <slot />
</div>
<Footer />
<video autoplay loop muted class="vid">
    <source src={bgVideo} type="video/mp4">
</video>



<style lang="scss">
    @import '$lib/styles.scss';
    .slot-div {
        z-index: 1;
        position: relative;
    }
    .vid {
        filter: brightness(0.3);
        // filter: brightness(1.5);
        position: fixed;
        top: 0;
        z-index: 0;
        width: 100%;
        height: 100vh;
        overflow-x: hidden;
        object-fit: cover;
    }
</style>