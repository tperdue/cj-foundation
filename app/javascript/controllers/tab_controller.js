import { Controller } from 'stimulus';
export default class extends Controller {

    static values = {
        index: Number
    }

    static targets = ["pane"]
    connect() {
        console.log("hello from StimulusJS")
    }

    activateTab (event) {
        const tabIndex = event.currentTarget.getAttribute('data-tab-id');
        console.log(tabIndex)
    }
}