

function sidebarHandler(shouldOpen, state ){
    const {openBtn, closeBtn, sidebar} = state;
    return function openOrCloseSidebar() {
        console.log('hello');


        if(shouldOpen){

            openBtn.classList.add("hidden");
            sidebar.style.transform = "translateX(0px)";
            closeBtn.classList.remove("hidden")

        }
        else{
            openBtn.classList.remove("hidden");
           sidebar.style.transform = "translateX(-260px)";
            closeBtn.classList.add("hidden")
        }
    }
}

export default function sideBarModule() {



        const openBtn = document.getElementById("openSideBar");
        const closeBtn = document.getElementById("closeSideBar");
        const sidebar = document.getElementById("mobile-nav");
        const state = {openBtn, closeBtn, sidebar}
        sidebar.style.transform = "translateX(-260px)";
        closeBtn.classList.add("hidden");
        openBtn.classList.remove("hidden");


        openBtn.addEventListener("click", sidebarHandler(true, state));
        closeBtn.addEventListener('click', sidebarHandler(false, state));

}
