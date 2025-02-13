const Router = require("express");
const router = new Router();
const profileController = require("../controllers/profileController");

router.get("/", profileController.getAll);

module.exports = router;