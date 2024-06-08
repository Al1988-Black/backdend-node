const Router = require("express");
const router = new Router();
const profileController = require("../controllers/profileController");
const authMiddleware = require("../middleware/authMiddleware");

router.put("/:id", authMiddleware, profileController.update);
router.get("/:id", profileController.getOne);

module.exports = router;