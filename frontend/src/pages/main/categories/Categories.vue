<script setup lang="ts">
import UH1 from '@/components/global/UH1.vue';
import CategoryCard from './CategoryCard.vue';

</script>

<template>
    <section>
        <UH1>Zoomify - Фото и видеокамеры в Москве</UH1>
        <div class="grid grid-cols-2 gap-4 mt-4 sm:grid-cols-3 lg:grid-cols-4  ">
            <CategoryCard src="cameras/Nikon/Z6 III Body/image.png">Nikon</CategoryCard>
            <CategoryCard src="cameras/Sony/Sony Alpha ILCE-7M4 Body/image.png">Sony</CategoryCard>
            <CategoryCard src="cameras/Leica/SL2-S Body/image.png">Leica</CategoryCard>
            <CategoryCard src="cameras/Fujifilm/X-T5 Body/image 1.png">Fujifilm</CategoryCard>
        </div>
    </section>
</template>