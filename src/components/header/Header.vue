<script setup lang="ts">
import IconButton from './IconButton.vue';
import useModals from "../../composables/useModals";
import SearchInput from './SearchInput.vue';
import HeaderLink from './HeaderLink.vue';

const { toggleVisibleCart, isCartVisible } = useModals();

</script>

<template>
    <header class="shadow-md h-20 flex items-center">
        <nav class="max-w-[1200px] w-full h-full mx-auto flex justify-between items-center">
            <div class="flex gap-4 items-center h-full">
                <a href="/" class="text-2xl font-bitter font-semibold">
                    Zoomify
                </a>
                <SearchInput />
            </div>
            <div class="flex gap-4 items-center">
                <HeaderLink>Самовывоз</HeaderLink>
                <HeaderLink>Гарантия</HeaderLink>
                <HeaderLink>Доставка</HeaderLink>
                <HeaderLink>Оплата</HeaderLink>
                <HeaderLink>О Компании</HeaderLink>
            </div>
            <div class="flex gap-4">
                <IconButton icon-title="favorite">
                    Избранное
                </IconButton>
                <IconButton @click="toggleVisibleCart" icon-title="shopping_cart">
                    Корзина
                </IconButton>
                <IconButton icon-title="account_circle">
                    Профиль
                </IconButton>
            </div>
        </nav>
    </header>
</template>