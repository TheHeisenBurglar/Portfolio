import { GET } from "./api/a2/+server";

export async function load() {
    const date = new Date()
    const year = date.getFullYear()
    const res = await GET()
    const artifacts = await res.json();
    return {
        year, artifacts
    }
}

export const prerender = true;