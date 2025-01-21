<template>
    <section class="flex gap-4 max-h-[450px] h-[450px]">
        <div class="h-full rounded-lg overflow-hidden">
            <img src="/bg-camera/1.png" class="object-cover w-full h-full" alt="">
        </div>

        <div class="flex flex-col gap-4 h-full flex-1 w-[358px]">
            <div class="bg-gray-100 rounded-lg flex-[2] overflow-hidden">
                <div class="translate-y-8 flex flex-col items-center justify-center">
                    <span class="text-2xl">Купи сейчас, плати потом</span>
                    <img src="/cameras/Leica/SL2-S Body/image.png" class="object-cover size-48 " />
                </div>
            </div>
            <div class="bg-gray-100 rounded-lg flex-[2] overflow-hidden">
                <div class="translate-y-8 flex flex-col items-center justify-center">
                    <span class="text-2xl">Бесплатная доставка</span>
                    <img src="/cameras/Fujifilm/X-T5 Body/image 1.png" class="object-cover size-48 " />
                </div>
            </div>
            <button 
                class="flex-[1] bg-gradient-to-r from-gray-100 to-gray-200 rounded-lg text-2xl / 
                hover:bg-none hover:text-white hover:bg-dark-800 transition-all duration-200">
                Все акции
            </button>
        </div>
    </section>
</template>