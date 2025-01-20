<script setup lang="ts">
interface Props {
    iconTitle: string
}

const { iconTitle="menu" } = defineProps<Props>();
</script>
<template>
    <button class="flex flex-col gap-1 items-center">
        <span class="material-symbols-outlined animate-icon text-green-500 text-3xl">
            {{ iconTitle}}
        </span>
        <span>
            <slot></slot>
        </span>
    </button>
</template>
<style>
.animate-icon {
    font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 48;
    scale: 1;
    transition: all;
    transition-duration: 100ms;
}
.animate-icon:hover {
    scale: 1.2;
    font-variation-settings: 'FILL' 1, 'wght' 400, 'GRAD' 0, 'opsz' 48;
}
</style>