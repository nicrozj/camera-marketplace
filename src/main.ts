import { createApp } from "vue";
import { createRouter, createWebHistory, RouterView } from "vue-router";
import Index from "./pages/main/index.vue";
import Profile from "./pages/profile/Profile.vue";

import "./main.css";
import { createPinia } from "pinia";
import Cart from "./pages/cart/Cart.vue";

const pinia = createPinia();

const router = createRouter({
  history: createWebHistory(),
  routes: [
    { path: "/", component: Index },
    { path: "/profile", component: Profile },
    { path: "/cart", component: Cart },
  ],
});


createApp(RouterView).use(router).use(pinia).mount("body");
