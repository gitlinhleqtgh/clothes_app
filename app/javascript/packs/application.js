//= require bootstrap-sprockets
//= require turbolinks
//=
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.slick

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "@fortawesome/fontawesome-free/js/all";
import "@fortawesome/fontawesome-free/css/all";

require("jquery")
require("packs/custom")

Rails.start()
Turbolinks.start()
ActiveStorage.start()
