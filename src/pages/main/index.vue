<script setup lang="ts">
import Cart from "@/components/cart/Cart.vue";
import Counter from "@/components/Counter.vue";
import Header from "@/components/header/Header.vue";
import useModals from "../../composables/useModals";
import MainBanner from "./MainBanner.vue";

const { toggleVisibleCart, isCartVisible } = useModals();
</script>

<template>
  <Header />
  <main
    class="max-w-[1200px] mx-auto mt-10"
  >
    <MainBanner />
    <Cart />
  </main>
</template>
