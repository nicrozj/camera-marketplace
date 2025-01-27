<script setup lang="ts">
interface Props {
    src: string
}

const { src } = defineProps<Props>();
</script>
<template>
    <div class="flex items-center justify-center">
        <div
            class="group bg-gray-100 w-full h-52 rounded-lg p-6 max-w-[250px] overflow-hidden hover:ring-[2px] hover:ring-green-400 transition-all">
            <span class="text-2xl font-medium">
                <slot></slot>
            </span>
            <div class="flex w-full h-full justify-center items-center flex-col max-w-28">
                <img :src="src" loading="lazy"
                    class="object-contain transition-all duration-300 w-full h-full">
                <p>Sharmax 1100 Rx Jump 2 Seat</p>
            </div>
        </div>
    </div>
</template>