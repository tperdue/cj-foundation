const dropdownHandler = function dropdownHandler(element){
    const  { userMenu } = this;
    console.log(userMenu)
    userMenu.classList.toggle("hidden")
}



const userMenuModule = function () {


        const userMenu = document.getElementById('user-menu')
        const dropDownButtons = Array
            .from(document.querySelectorAll('.dropdown'))
            .forEach(function wireUpDropdownButtons(element){
                element.addEventListener('click', dropdownHandler.bind({userMenu}))
            })





}

export default  userMenuModule;