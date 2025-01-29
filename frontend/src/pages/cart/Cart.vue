<script setup lang="ts">
import UH1 from '@/components/global/UH1.vue';
import UH3 from '@/components/global/UH3.vue';
import Header from '@/components/header/Header.vue';

import { ref } from 'vue';
import CartProductCard from './CartProductCard.vue';

</script>

<template>
    <Header />
    <main class="max-w-[1200px] mx-auto mt-32 px-4 pb-20">
        <section class="flex flex-col gap-6">
            <div class="flex justify-between">
                <UH1>Корзина</UH1>
            </div>
            <div class="h-[1px] w-full bg-dark-100" />
            <div class="flex flex-col gap-10 md:flex-row md:gap-20 justify-between">
                <div class="basis-4/5">
                    <div class="flex flex-col gap-6">
                        <CartProductCard />
                        <CartProductCard />
                        <CartProductCard />
                    </div>
                </div>
                <div class="basis-[30%] h-max bg-white border-[1px] rounded-lg p-4 flex flex-col gap-4">
                    <div class="flex flex-col gap-2">
                        <span>Промокод</span>
                        <input type="text" class="border-[1px] rounded-md border-black px-2 py-[1px]" />
                    </div>
                    <div class="">
                        <div class="flex justify-between">
                            <span>Сумма заказа</span>
                            <span>1800₽</span>
                        </div>
                        <div class="flex justify-between">
                            <span>Скидка</span>
                            <span>0₽</span>
                        </div>
                        <div class="h-[1px] w-full my-2 bg-gray-100" />
                        <div class="flex justify-between text">
                            <span>Итого:</span>
                            <span>1800₽</span>
                        </div>
                    </div>
                    <div>
                        <button class="w-full py-1 bg-green-500 rounded-lg text-white">Оплатить</button>
                    </div>
                </div>

            </div>
        </section>
    </main>
</template>