import { ref } from "vue";
import { defineStore } from "pinia";

export const useModals = defineStore('modals', () => {
    const isNavModalVisible = ref(false);
    const toggleVisibleNavModal = () => {
        isNavModalVisible.value = !isNavModalVisible.value;
        console.log("Новое состояние:", isNavModalVisible.value);    }

    return { isNavModalVisible, toggleVisibleNavModal }
})