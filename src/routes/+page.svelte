<script lang="ts">
import { onMount } from 'svelte';
import { fade, fly } from 'svelte/transition';

let visible = $state(false);

onMount(() => {
visible = true;
});
</script>

<!-- Hero Section -->
<section class="min-h-screen flex items-center justify-center relative overflow-hidden">
<div class="absolute inset-0 bg-gradient-to-br from-primary-500/10 to-secondary-500/10"></div>

<div class="container mx-auto px-6 py-20 relative z-10 text-center">
<div in:fly={{ y: -50, duration: 1000 }} class="mb-6">
<span class="inline-block px-4 py-2 rounded-full bg-primary-500/20 text-primary-400 text-sm font-semibold">
AI-Powered Assistant
</span>
</div>

<h1
in:fly={{ y: -30, duration: 1200, delay: 200 }}
class="text-6xl md:text-7xl font-bold mb-6 bg-gradient-to-r from-primary-400 to-secondary-400 bg-clip-text text-transparent"
>
Agent Zero
</h1>

<p
in:fade={{ duration: 1200, delay: 400 }}
class="text-xl md:text-2xl text-text-300 mb-8 max-w-3xl mx-auto"
>
L'assistant IA intelligent pour automatiser vos tâches, améliorer votre productivité et transformer votre workflow.
</p>

<div in:fly={{ y: 50, duration: 800, delay: 600 }} class="flex flex-col sm:flex-row gap-4 justify-center">
<button class="px-8 py-4 bg-primary-500 hover:bg-primary-600 text-white rounded-lg font-semibold transition-all duration-300 shadow-lg shadow-primary-500/50">
Commencer Maintenant
</button>
<button class="px-8 py-4 border-2 border-secondary-500 text-secondary-400 hover:bg-secondary-500/10 rounded-lg font-semibold transition-all duration-300">
En Savoir Plus
</button>
</div>
</div>
</section>

<!-- Features Section -->
<section class="py-20 bg-surface-900/50">
<div class="container mx-auto px-6">
<div in:fade={{ duration: 800 }} class="text-center mb-16">
<h2 class="text-4xl md:text-5xl font-bold mb-4">Fonctionnalités</h2>
<p class="text-text-300 text-lg">Découvrez ce qu'Agent Zero peut faire pour vous</p>
</div>

<div class="grid md:grid-cols-3 gap-8">
<!-- Feature 1 -->
<div in:fly={{ y: 50, duration: 800, delay: 200 }} class="h-full">
<div class="h-full bg-surface-800 border border-primary-500/20 hover:border-primary-500/50 rounded-lg p-6 transition-all duration-300 hover:shadow-lg hover:shadow-primary-500/10">
<div class="w-16 h-16 bg-primary-500/20 rounded-2xl flex items-center justify-center mb-6">
<span class="text-3xl">🚀</span>
</div>
<h3 class="text-2xl font-bold mb-4 text-primary-400">Automatisation</h3>
<p class="text-text-300">
Automatisez vos tâches répétitives et laissez Agent Zero gérer les processus complexes pour vous.
</p>
</div>
</div>

<!-- Feature 2 -->
<div in:fly={{ y: 50, duration: 800, delay: 400 }} class="h-full">
<div class="h-full bg-surface-800 border border-secondary-500/20 hover:border-secondary-500/50 rounded-lg p-6 transition-all duration-300 hover:shadow-lg hover:shadow-secondary-500/10">
<div class="w-16 h-16 bg-secondary-500/20 rounded-2xl flex items-center justify-center mb-6">
<span class="text-3xl">🧠</span>
</div>
<h3 class="text-2xl font-bold mb-4 text-secondary-400">Intelligence</h3>
<p class="text-text-300">
Une IA avancée qui comprend le contexte et prend des décisions intelligentes.
</p>
</div>
</div>

<!-- Feature 3 -->
<div in:fly={{ y: 50, duration: 800, delay: 600 }} class="h-full">
<div class="h-full bg-surface-800 border border-primary-500/20 hover:border-primary-500/50 rounded-lg p-6 transition-all duration-300 hover:shadow-lg hover:shadow-primary-500/10">
<div class="w-16 h-16 bg-primary-500/20 rounded-2xl flex items-center justify-center mb-6">
<span class="text-3xl">⚡</span>
</div>
<h3 class="text-2xl font-bold mb-4 text-primary-400">Performance</h3>
<p class="text-text-300">
Rapide, efficace et optimisé pour maximiser votre productivité au quotidien.
</p>
</div>
</div>
</div>
</div>
</section>

<!-- CTA Section -->
<section class="py-20 relative overflow-hidden">
<div class="absolute inset-0 bg-gradient-to-r from-primary-500/10 to-secondary-500/10"></div>
<div class="container mx-auto px-6 relative z-10 text-center">
<div in:fade={{ duration: 800 }}>
<h2 class="text-4xl md:text-5xl font-bold mb-6">Prêt à transformer votre workflow ?</h2>
<p class="text-xl text-text-300 mb-8 max-w-2xl mx-auto">
Rejoignez des milliers d'utilisateurs qui utilisent Agent Zero pour automatiser leur quotidien.
</p>
<button class="px-8 py-4 bg-primary-500 hover:bg-primary-600 text-white rounded-lg font-semibold text-lg transition-all duration-300 shadow-lg shadow-primary-500/50">
Commencer Gratuitement
</button>
</div>
</div>
</section>

<!-- Footer -->
<footer class="bg-surface-900 py-12 border-t border-surface-700">
<div class="container mx-auto px-6">
<div class="flex flex-col md:flex-row justify-between items-center">
<div class="mb-6 md:mb-0">
<h3 class="text-2xl font-bold bg-gradient-to-r from-primary-400 to-secondary-400 bg-clip-text text-transparent">
Agent Zero
</h3>
<p class="text-text-400 mt-2">AI-Powered Assistant</p>
</div>
<div class="flex gap-6">
<a href="/docs" class="text-text-400 hover:text-primary-400 transition-colors">
Documentation
</a>
<a href="https://github.com/A0-42" class="text-text-400 hover:text-primary-400 transition-colors">
GitHub
</a>
<a href="/contact" class="text-text-400 hover:text-primary-400 transition-colors">
Contact
</a>
</div>
</div>
<div class="mt-8 pt-8 border-t border-surface-700 text-center">
<p class="text-text-500">© 2025 Agent Zero. Built with SvelteKit & SkeletonUI</p>
</div>
</div>
</footer>
