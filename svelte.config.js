import { mdsvex } from 'mdsvex';
import adapter from '@sveltejs/adapter-node';

/** @type {import('@sveltejs/kit').Config} */
const config = {
kit: {
// adapter-node creates a server-side application for Node.js environments
adapter: adapter({
// Default options are fine for Dokploy
// The adapter will create a build folder with a server entry point
}),
},
preprocess: [mdsvex()],
extensions: ['.svelte', '.svx']
};

export default config;
