import { Controller } from 'stimulus';
export default class extends Controller {
    static targets = ["open", "close", "links"];

    connect() {


    }

    openNav () {

        this.openTarget.classList.add("hidden");
        this.openTarget.classList.remove("visible")
        this.closeTarget.classList.add("visible")
        this.closeTarget.classList.remove("hidden")
        this.linksTarget.classList.remove("hidden")
    }

    closeNav () {

        this.openTarget.classList.add("visible");
        this.openTarget.classList.remove("hidden")
        this.closeTarget.classList.add("hidden")
        this.closeTarget.classList.remove("visible")
        this.linksTarget.classList.add("hidden")
    }
}