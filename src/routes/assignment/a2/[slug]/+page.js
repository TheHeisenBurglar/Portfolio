export const load = async ({ fetch, params }) => {
    const {slug} = params
    const fetchPOSTS = async () => {
        const res = await fetch(`/api/posts/${slug}`)
        const data = await res.json()
        return data;
    }
    const posts = await fetchPOSTS()

    return {
        posts: posts
    }
}