<script setup lang="ts">
interface Props {
    src: string
}

const { src } = defineProps<Props>();
</script>
<template>
    <div class="flex items-center justify-center">
        <div
            class="group bg-gray-100 w-full h-60 rounded-lg p-6 max-w-[250px] overflow-hidden hover:ring-[2px] hover:ring-green-400 transition-all">
            <span class="text-2xl font-medium">
                <slot></slot>
            </span>
            <div class="flex w-full h-full">
                <img :src="src" loading="lazy"
                    class="object-contain -translate-x-12 group-hover:translate-x-0 transition-all duration-300 min-size-36">
            </div>
        </div>
    </div>
</template>