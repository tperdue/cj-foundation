import { Controller } from 'stimulus';
export default class extends Controller {
    static targets = ["open", "close"];

    connect() {
        this.element.style.transform = "translateX(-260px)";
        this.openTarget.classList.remove("hidden");
        this.closeTarget.classList.add("hidden");
    }

    openSidebar () {
        this.element.style.transform = "translateX(0px)";
        this.openTarget.classList.add("hidden");
        this.closeTarget.classList.remove("hidden");
    }

    closeSidebar () {
        this.element.style.transform = "translateX(-260px)";
        this.openTarget.classList.remove("hidden");
        this.closeTarget.classList.add("hidden");
    }
}