<script setup lang="ts">
interface Props {
    src: string
}

const { src } = defineProps<Props>();
</script>
<template>
    <div class="bg-gray-100 w-full h-60 rounded-lg p-6 overflow-hidden">
        <span class="text-2xl font-medium">
            <slot></slot>
        </span>
        <div>
            <img :src="src" class=" -translate-x-12">
        </div>
    </div>
</template>