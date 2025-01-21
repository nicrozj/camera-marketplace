<script setup lang="ts">
import Counter from "@/components/Counter.vue";
import Header from "@/components/header/Header.vue";
import MainBanner from "./MainBanner.vue";
import Categories from "./categories/Categories.vue";
import NavModal from "@/components/modals/NavModal.vue";

import { useModals } from "../../stores/useModals";

const modalsStore = useModals();
</script>

<template>
  <Header />
  <main class="max-w-[1200px] mx-auto mt-32 flex flex-col gap-10 mb-40 px-4">
    <MainBanner />
    <Categories />
    <NavModal />
  </main>
</template>
