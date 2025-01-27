<script setup lang="ts">
import UH3 from '@/components/global/UH3.vue';
import { computed, onMounted, ref } from 'vue';

const count = ref(1);

function lerp(start: number, end: number, amt: number) {
    return (1 - amt) * start + amt * end
};

const incrementCount = () => {
    count.value++;
}
const decrementCount = () => {
    count.value = Math.max(count.value - 1, 1)
}
const price = 123000;
const cost = computed(() => count.value * price);

</script>

<template>
    <div class="flex gap-4">
        <div class="size-36 bg-gray-100 rounded-lg p-4 shrink-0">
            <img class="object-contain w-full h-full" src="/cameras/Nikon/Z6 III Body/image-1.png">
        </div>
        <div class="flex flex-col gap-3 justify-between">
            <div>
                <UH3>Фотоаппарат Nikon</UH3>
                <p class="text-dark-200">
                    Компактная цифровая кинокамера Canon EOS C80 объединяет Full Frame сенсор от Canon C400 с легким
                    корпусом

                </p>
            </div>
            <div class="flex justify-between">
                <div class="flex gap-3">
                    <button 
                        @click="decrementCount()"
                        class="size-6 rounded-lg bg-gray-100 flex justify-center items-center">-</button>
                    {{ count }}
                    <button
                        @click="incrementCount()"
                        class="size-6 rounded-lg bg-gray-100 flex justify-center items-center">+</button>
                </div>
                <div>
                    <UH3 class="">{{ cost }}₽</UH3>
                </div>
            </div>
        </div>
    </div>
</template>