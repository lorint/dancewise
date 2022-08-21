// Import and register all your controllers from the importmap under controllers/*

import { application } from "./application"

import SelectController from "./select_controller"
application.register("select", SelectController)

import PlacesController from "./places_controller"
application.register("places", PlacesController)