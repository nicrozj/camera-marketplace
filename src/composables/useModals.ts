import { ref } from "vue";

const isCartVisible = ref(false);

const toggleVisibleCart = () => {
    isCartVisible.value = !isCartVisible.value;
}

export default function useModals() {
    return({
        isCartVisible,
        toggleVisibleCart
    });
}