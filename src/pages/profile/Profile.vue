<script setup lang="ts">
import UH1 from '@/components/global/UH1.vue';
import UH3 from '@/components/global/UH3.vue';
import Header from '@/components/header/Header.vue';

</script>

<template>
    <Header />
    <main class="max-w-[1200px] mx-auto mt-10 px-4">
        <section class="flex flex-col gap-6">
            <div class="flex justify-between">
                <UH1>Zoomify Профиль</UH1>
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
                    <div class="mt-20 flex flex-col gap-6">
                        <a href="">
                            <UH3>Личная информация</UH3>
                        </a>
                        <a href="">
                            <UH3>Счета и платежи</UH3>
                        </a>
                        <a href="">
                            <UH3>История заказов</UH3>
                        </a>
                        <a href="">
                            <UH3>Подарочные карты</UH3>
                        </a>
                    </div>
                </div>
                <div class="flex flex-col gap-10 w-full">
                    <div class="flex flex-col gap-2">
                        <UH1>Личная информация</UH1>
                        <p class="text-dark-200">Редактируйте информацию о себе, включая номер телефона и адрес
                            электронной почты, по которым с Вами можно связаться</p>
                    </div>
                    <div class="grid grid-cols-2 gap-4">
                        <div class="flex flex-col gap-1 w-full border border-gray-200 min-h-48 px-4 py-10 rounded-lg">
                            <div class="flex justify-between items-center">
                                <UH3>Имя</UH3>
                                <span class="material-symbols-outlined text-4xl text-green-500">
                                    account_circle
                                </span>
                            </div>
                            <p class="text-dark-200">Игорь Жоркин</p>
                        </div>
                        <div class="flex flex-col gap-1 w-full border border-gray-200 min-h-48 px-4 py-10 rounded-lg">
                            <div class="flex justify-between items-center">
                                <UH3>Дата рождения</UH3>
                                <span class="material-symbols-outlined text-4xl text-green-500">
                                    calendar_month
                                </span>
                            </div>
                            <p class="text-dark-200">04.06.2006</p>
                        </div>
                        <div class="flex flex-col gap-1 w-full border border-gray-200 min-h-48 px-4 py-10 rounded-lg">
                            <div class="flex justify-between items-center">
                                <UH3>Регион</UH3>
                                <span class="material-symbols-outlined text-4xl text-green-500">
                                    language
                                </span>
                            </div>
                            <p class="text-dark-200">Алтайский край</p>
                        </div>
                        <div class="flex flex-col gap-1 w-full border border-gray-200 min-h-48 px-4 py-10 rounded-lg">
                            <div class="flex justify-between items-center">
                                <UH3>Электронная почта</UH3>
                                <span class="material-symbols-outlined text-4xl text-green-500">
                                    mail
                                </span>
                            </div>
                            <p class="text-dark-200">zhorkinigor@yandex.ru</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</template>