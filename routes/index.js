const Router = require("express");
const router = new Router();
const userRouter = require("./userRouter");
const profileRouter = require("./profileRouter");
const profilesRouter = require("./profilesRouter");

router.use("/user", userRouter);
router.use("/profile", profileRouter);
router.use("/profiles", profilesRouter);

module.exports = router;
