<template>
    <section class="flex flex-col gap-4 md:flex-row h-[500px] justify-center items-center">
        <div class="hidden h-full rounded-lg overflow-hidden md:block">
            <img src="/bg-camera/1.png" class="object-cover w-full h-full" alt="">
        </div>

        <div class="flex flex-col gap-4 h-full flex-1 w-[358px]">
            <div class="bg-gray-100 rounded-lg flex-[2] overflow-hidden">
                <div class="translate-y-8 flex flex-col items-center justify-center p-2">
                    <span class="text-2xl">Рассрочка</span>
                    <img src="/cameras/Leica/SL2-S Body/image.png" class="object-cover size-48 " />
                </div>
            </div>
            <div class="bg-gray-100 rounded-lg flex-[2] overflow-hidden">
                <div class="translate-y-8 flex flex-col items-center justify-center p-2">
                    <span class="text-2xl">Бесплатная доставка</span>
                    <img src="/cameras/Fujifilm/X-T5 Body/image 1.png" class="object-cover size-48 " />
                </div>
            </div>
            <button class="flex-[1] bg-gradient-to-r from-gray-100 to-gray-200 rounded-lg text-2xl / 
                hover:text-white hover:from-green-400 hover:to-green-500 transition-all duration-150">
                Все акции
            </button>
        </div>
    </section>
</template>