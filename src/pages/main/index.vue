<script setup lang="ts">
import Cart from "@/components/cart/Cart.vue";
import Counter from "@/components/Counter.vue";
import Header from "@/components/header/Header.vue";
import useModals from "../../composables/useModals";
import MainBanner from "./MainBanner.vue";
import Categories from "./categories/Categories.vue";

const { toggleVisibleCart, isCartVisible } = useModals();
</script>

<template>
  <Header />
  <main
    class="max-w-[1200px] mx-auto mt-10 flex flex-col gap-10 mb-40"
  >
    <MainBanner />
    <Categories />
    <Cart />
  </main>
</template>
