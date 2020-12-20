// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "stylesheets/application"
import UserMenu from "app/user-menu"
import Sidebar from "app/sidebar"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
function runApp() {
    UserMenu()
    Sidebar()
}

if (document.readyState === "complete") {
    // already fired, so run logic right away
    runApp()
} else {
    // not fired yet, so let's listen for the event
    window.addEventListener("DOMContentLoaded", runApp);
}

