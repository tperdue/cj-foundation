import { Controller } from 'stimulus';
export default class extends Controller {

    static targets = ["userMenu"];
    connect() {

    }

   toggleUserMenu() {
        this.userMenuTarget.classList.toggle("hidden")
   }


}