import { Controller } from 'stimulus';
export default class extends Controller {

    static values = {
        index: Number
    }

    static targets = ["pane", "tabs"]
    connect() {
        console.log("hello from StimulusJS");
    }

    activateTab (event) {
        const tabIndex = event.currentTarget.getAttribute('data-tab-id');
        this.tabsTargets.forEach(function selectingTab(element){
            const tabId = element.getAttribute('data-tab-id');
            if(tabIndex === tabId)
            {
                element.classList.add("bg-white");
            }
            else {
                element.classList.remove("bg-white");
            }
        })
        this.showPane(tabIndex)
    }

    showPane (tabIndex){
        this.paneTargets.forEach(function selectingPan(element){
            const paneId = element.getAttribute("data-pane-id");
            if(paneId === tabIndex)
            {
                element.classList.remove("hidden")
            }
            else
            {
                element.classList.add("hidden");
            }

        })
    }
}