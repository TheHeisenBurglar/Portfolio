import GhostContentAPI from "@tryghost/content-api";
import { apiURL, KEY } from '$env/static/private'
export async function GET(){
    const api = new GhostContentAPI({
        url: apiURL,
        key: KEY,
        version: 'v5.99.0'
    })
    try {   
        const res = await api.posts.browse({include: 'authors, tags' });
        return new Response(JSON.stringify(res), {status: 200})
    } catch (err) {
        console.error(`Error: ${err}`)
    }
}

export const prerender = true;