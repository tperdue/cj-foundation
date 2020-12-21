import { Controller } from 'stimulus';
export default class extends Controller {
    static targets = [];

    connect() {

        if(this.element) {
            const element = this.element;
            setTimeout(function () {
                element.style.transform = "translateY(-200%)";
            }, 5000);


        }
    }

    closeAlert () {
        this.element.style.transform = "translateY(-200%)";
    }
}