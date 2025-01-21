<script setup lang="ts">
import ProfileCard from '../ProfileCard.vue';
</script>
<template>
    <ProfileCard icon-title="account_circle">
        <template v-slot:title>Имя</template>
        <template v-slot:description>Игорь Жоркин</template>
    </ProfileCard>
    <ProfileCard icon-title="calendar_month">
        <template v-slot:title>Дата рождения</template>
        <template v-slot:description>04.06.2006</template>
    </ProfileCard>
    <ProfileCard icon-title="language">
        <template v-slot:title>Регион</template>
        <template v-slot:description>Алтайский край</template>
    </ProfileCard>
    <ProfileCard icon-title="mail">
        <template v-slot:title>Электронная почта</template>
        <template v-slot:description>zhorkinigor@yandex.ru</template>
    </ProfileCard>
</template>