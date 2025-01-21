<script setup lang="ts">
import IconButton from './IconButton.vue';
import { useModals } from "../../stores/useModals";
import SearchInput from './SearchInput.vue';
import HeaderLink from './HeaderLink.vue';

const modalsStore = useModals();
</script>

<template>
    <header class="shadow-md h-20 z-40 top-0 w-full flex items-center fixed bg-white/85 backdrop-blur-lg">
        <nav class="max-w-[1200px] w-full h-full mx-auto flex justify-between items-center px-4">
            <div class="flex gap-4 items-center h-full">
                <a href="/" class="text-2xl font-bitter font-semibold">
                    Zoomify
                </a>
                <SearchInput class="hidden md:flex" />
            </div>
            <div class="hidden xl:flex gap-4 items-center">
                <HeaderLink>Самовывоз</HeaderLink>
                <HeaderLink>Гарантия</HeaderLink>
                <HeaderLink>Доставка</HeaderLink>
                <HeaderLink>Оплата</HeaderLink>
                <HeaderLink>О Компании</HeaderLink>
            </div>
            <div class="hidden md:flex gap-4">
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
            <button @click="modalsStore.toggleVisibleNavModal()" class="md:hidden">
                <span class="material-symbols-outlined text-3xl">
                    menu
                </span>
            </button>
        </nav>
    </header>
</template>