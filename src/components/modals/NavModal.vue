<script setup lang="ts">
import UH3 from '../global/UH3.vue';
import IconButton from '../header/IconButton.vue';
import { useModals } from "../../stores/useModals";

const modalsStore = useModals();
</script>
<template>
    <Transition enter-from-class="translate-x-[100%] transitions-all duration-300"
        leave-to-class="translate-x-[100%] transitions-all duration-300">
        <section v-if="modalsStore.isNavModalVisible" @click="modalsStore.toggleVisibleNavModal"
            class="z-50 fixed top-0 left-0 flex flex-col items-stretch w-full h-screen bg-dark-800/30 transition duration-200">
            <div class="h-full w-full bg-white z-50 p-10">
                <div class="flex justify-between">
                    <IconButton icon-title="favorite">
                        Избранное
                    </IconButton>
                    <IconButton @click="" icon-title="shopping_cart">
                        Корзина
                    </IconButton>
                    <IconButton href="/profile" icon-title="account_circle">
                        Профиль
                    </IconButton>
                </div>
                <div class="mt-16 flex flex-col gap-5">
                    <a href=""><UH3>Самовывоз</UH3></a>
                    <a href=""><UH3>Гарантия</UH3></a>
                    <a href=""><UH3>Доставка</UH3></a>
                    <a href=""><UH3>Оплата</UH3></a>
                    <a href=""><UH3>О Компании</UH3></a>
                </div>
            </div>
        </section>
    </Transition>
</template>