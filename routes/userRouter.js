const Router = require("express");
const router = new Router();
const { body } = require("express-validator");
const userController = require("../controllers/userController");

router.post(
  "/register",
  body("email").isEmail(),
  body("password").isLength({ min: 3, max: 32 }),
  body("firstname").isLength({ min: 1, max: 32 }),
  userController.register,
);
router.post("/login", userController.login);

module.exports = router;
