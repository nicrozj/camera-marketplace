<script setup lang="ts">
import UH3 from '../global/UH3.vue';
import CartProductCard from './CartProductCard.vue';
import useModals from "../../composables/useModals";

const { toggleVisibleCart, isCartVisible } = useModals();
</script>
<template>
    <Transition enter-from-class="opacity-0 scale-[1.05]" leave-to-class="opacity-0 scale-[1.05]">
        <section v-if="isCartVisible"
            @click="toggleVisibleCart"
            class="fixed top-0 left-0 flex flex-col items-stretch w-full h-screen bg-dark-800/30 transition duration-200">
            <div
                @click.stop
                class="absolute flex flex-col justify-between gap-4 p-3 w-1/4 min-w-96 h-full rounded-l-xl bg-white top-0 right-0">
                <div class="flex flex-col gap-4 mt-4">
                    <UH3 class="text-center">Корзина</UH3>
                    <div class="flex flex-col gap-5">
                        <CartProductCard />
                        <CartProductCard />
                        <CartProductCard />
                        <CartProductCard />
                    </div>
                </div>
                <div class="flex flex-col gap-5">
                    <div class="flex flex-col gap-2">
                        <span>Промокод</span>
                        <input class="ring-1 ring-dark-800 rounded-md px-2 py-1" type="text">
                    </div>
                    <div class="w-full h-[1px] bg-gray-200"></div>
                    <div class="flex flex-col gap-2">
                        <div>
                            <div class="flex justify-between">
                                <span class="text-sm">Сумма заказа</span>
                                <span class="text-sm">1800₽</span>
                            </div>
                            <div class="flex justify-between">
                                <span class="text-sm">Скидка</span>
                                <span class="text-sm">0₽</span>
                            </div>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-lg">Итого</span>
                            <span class="text-lg">1800₽</span>
                        </div>
                        <button class="bg-dark-800 text-white rounded-lg w-full p-2">
                            Перейти к оплате
                        </button>
                    </div>
                </div>
                <button @click="toggleVisibleCart"
                    class="absolute top-4 right-4 rounded-full size-6 bg-gray-300 hover:bg-gray-100 transition-all">
                    <span
                        class="material-symbols-outlined flex items-center justify-center h-full text-dark-300 text-sm">
                        close
                    </span>
                </button>
            </div>
        </section>
    </Transition>
</template>