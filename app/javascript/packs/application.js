// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

//= require_self
// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
// CSS
import 'mapbox-gl/dist/mapbox-gl.css';

// External imports
import "bootstrap";
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import {init_game} from "../plugins/init_game"
import {answerCounter} from "../plugins/quiz"
import {progressCircle} from "../plugins/progress"
import {initDraggable} from "../plugins/drag"
import {intEditor} from "../plugins/init_editor"
import { initMapbox } from '../plugins/init_mapbox';
// import { devSchoolModal } from '../plugins/devschool_modal'

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  init_game();
  answerCounter();
  progressCircle();
  initDraggable();
  intEditor();
  initMapbox();
  devSchoolModal();
});
