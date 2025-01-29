<script setup lang="ts">
interface Props {
    src: string
}

const { src } = defineProps<Props>();
</script>
<template>
    <div class="flex items-center justify-center">
        <div
            class="group bg-gray-100 w-full h-max rounded-lg p-6 overflow-hidden transition-all">
            <div class="flex w-full h-full justify-center items-center flex-col gap-3">
                <img :src="src" loading="lazy"
                    class="object-contain transition-all duration-300 w-full h-full max-h-44">
                <div class="w-full">
                    <p class="text-left">Sharmax 1100 Rx Jump 2 Seat</p>
                </div>
                <div class="flex justify-between w-full items-center">
                    <span class="text-xl">RUB 120 000</span>
                    <button class="rounded-lg border-[1.5px] border-dark-800 px-2 py-1 hover:bg-dark-800 hover:text-white hover:scale-110 transition-all"> Buy now</button>
                </div>
            </div>
        </div>
    </div>
</template>