import { data } from "./data";
import { json } from '@sveltejs/kit'
function getRandomPage(){
    return Math.floor(Math.random() * (100 - 1 + 1) + 1)
}
async function loadImage() {
    const apiRoute = `https://picsum.photos/v2/list?limit=${data.length}&page=${getRandomPage()}`;
    try {
        const response = await fetch(apiRoute)
        if (!response.ok) {
            throw new Error('Api failure :(')
        }

        const images = await response.json();
        data.forEach((item, index) => {
            item.image = images[index].download_url;
        })
        // console.log(images)
        // console.log(data)
    } catch(err) {
        console.error('load image function error: ', err)
    }
    
}


export async function GET(){
    await loadImage();
    return json(data)
}

export const prerender = true;