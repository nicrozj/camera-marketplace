<script setup lang="ts">
import UH3 from '@/components/global/UH3.vue';

interface Props {
    iconTitle: string,
}

const { iconTitle } = defineProps<Props>();
</script>
<template>
    <div
        class="flex flex-col gap-1 w-full ring-[1px] ring-gray-200 min-h-48 px-4 py-10 rounded-lg hover:ring-[2px] hover:ring-green-400 hover:border-0 transition-all">
        <div class="flex justify-between items-center">
            <UH3>
                <slot name="title"></slot>
            </UH3>
            <span class="material-symbols-outlined text-4xl text-green-500">
                {{ iconTitle }}
            </span>
        </div>
        <p class="text-dark-200">
            <slot name="description"></slot>
        </p>
    </div>
</template>