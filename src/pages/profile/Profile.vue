<script setup lang="ts">
import UH1 from '@/components/global/UH1.vue';
import UH3 from '@/components/global/UH3.vue';
import Header from '@/components/header/Header.vue';

import AccountPaymentsSection from './section_content/AccountPaymentsSection.vue';
import GiftCardsSection from './section_content/GiftCardsSection.vue';
import OrderHistorySection from './section_content/OrderHistorySection.vue';
import PersonalInfoSection from './section_content/personalInfoSection.vue';

import { ref } from 'vue';

const sections = {
    "personalInfo": {
        title: "Личная информация", 
        content: PersonalInfoSection, 
        description: "Редактируйте информацию о себе, включая номер телефона и адрес электронной почты, по которым с Вами можно связаться" 
    },
    "accountPayments": { 
        title: "Счета и платежи", 
        content: AccountPaymentsSection, 
        description: "Управляйте своими счетами и методами оплаты. Добавляйте или удаляйте карты, просматривайте историю платежей и настраивайте автоматические списания." 
    },
    "orderHistory": { 
        title: "История заказов", 
        content: OrderHistorySection,
        description: "Просматривайте список всех ваших заказов. Отслеживайте статус выполнения, просматривайте детали покупок и скачивайте счета-фактуры." 
    },
    "giftCards": { 
        title: "Подарочные карты", 
        content: GiftCardsSection,
        description: "Управляйте своими подарочными картами. Проверяйте баланс, активируйте новые карты и просматривайте историю использования." 
    },
}

type Sections = keyof typeof sections;
const idActiveSection = ref<Sections>("personalInfo");

</script>

<template>
    <Header />
    <main class="max-w-[1200px] mx-auto mt-32 px-4">
        <section class="flex flex-col gap-6">
            <div class="flex justify-between">
                <UH1>Профиль</UH1>
                <button
                    class="bg-dark-800 text-white rounded-full px-4 py-2 hover:scale-105 transition-all">Выйти</button>
            </div>
            <div class="h-[1px] w-full bg-dark-100" />
            <div class="flex gap-20">
                <div class="basis-1/3">
                    <div class="flex flex-col gap-1">
                        <UH3>Игорь Жоркин</UH3>
                        <span class="text-dark-200">zhorkinigor@yandex.ru</span>
                    </div>
                    <div class="mt-20 flex flex-col items-start gap-6">
                        <button @click="idActiveSection = 'personalInfo'">
                            <UH3 class="hover:text-gray-500 transition-all">Личная информация</UH3>
                        </button>
                        <button @click="idActiveSection = 'accountPayments'">
                            <UH3 class="hover:text-gray-500 transition-all">Счета и платежи</UH3>
                        </button>
                        <button @click="idActiveSection = 'orderHistory'">
                            <UH3 class="hover:text-gray-500 transition-all">История заказов</UH3>
                        </button>
                        <button @click="idActiveSection = 'giftCards'">
                            <UH3 class="hover:text-gray-500 transition-all">Подарочные карты</UH3>
                        </button>
                    </div>
                </div>
                <div class="flex flex-col gap-10 w-full">
                    <div class="flex flex-col gap-2">
                        <UH1>{{ sections[idActiveSection].title }}</UH1>
                        <p class="text-dark-200">{{ sections[idActiveSection].description }}</p>
                    </div>
                    <div class="grid grid-cols-2 gap-4">
                        <component :is="sections[idActiveSection].content" />
                    </div>
                </div>
            </div>
        </section>
    </main>
</template>