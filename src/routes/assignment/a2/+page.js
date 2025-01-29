export const load = async ({ fetch }) => {
    const fetchPOSTS = async () => {
        const res = await fetch('/api/posts/index')
        const data = await res.json()
        return data;
    }
    const posts = await fetchPOSTS()

    return {
        posts: posts
    }
}