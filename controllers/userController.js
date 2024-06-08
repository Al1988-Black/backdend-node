const ApiError = require("../error/ApiError");
const userService = require("../services/userService");
const { validationResult } = require("express-validator");

class UserController {
  async register(req, res, next) {
    try {
      const errors = validationResult(req);
      if (!errors.isEmpty()) {
        return next(
          ApiError.BadRequest("Ошибка при валидации", errors.array()),
        );
      }
      const { email, password, firstname } = req.body;
      const userData = await userService.registration(
        email,
        password,
        firstname,
      );
      return res.json(userData);
    } catch (e) {
      next(e);
    }
  }

  async login(req, res, next) {
    try {
      const { email, password } = req.body;
      const userData = await userService.login(email, password);
      return res.json(userData);
    } catch (e) {
      next(e);
    }
  }
}

module.exports = new UserController();
