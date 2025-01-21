<script setup lang="ts">
interface Props {
    src: string
}

const { src } = defineProps<Props>();
</script>
<template>
    <div class="bg-gray-100 w-full h-60 rounded-lg p-6 overflow-hidden hover:ring-[2px] hover:ring-green-400 transition-all">
        <span class="text-2xl font-medium">
            <slot></slot>
        </span>
        <div>
            <img :src="src" loading="lazy" class="-translate-x-12">
        </div>
    </div>
</template>