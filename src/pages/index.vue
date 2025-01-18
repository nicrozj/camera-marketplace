<script setup lang="ts">
import Cart from "@/components/cart/Cart.vue";
import Counter from "@/components/Counter.vue";
import useModals from "../composables/useModals";

const { toggleVisibleCart, isCartVisible } = useModals();
</script>

<template>
  <main
    class=""
  >
    <Cart />
    <button 
      @click="toggleVisibleCart"
      class="bg-dark-400 rounded-md p-4 text-white mt-10 ml-10">
      Открыть корзину
    </button>
  </main>
</template>
