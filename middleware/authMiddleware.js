const jwt = require("jsonwebtoken");
const ApiError = require("../error/ApiError");
const tokenService = require("../services/tokenService");

module.exports = function (req, res, next) {
  if (req.method === "OPTIONS") {
    next();
  }
  try {
    const accessToken = req.headers.authorization.split(" ")[1];
    if (!accessToken) {
      return next(ApiError.unauthorised("Пользователь не авторизован"));
    }
    const userData = tokenService.validateAccessToken(accessToken);
    if (!userData) {
      return next(ApiError.unauthorised("Пользователь не авторизован"));
    }

    req.user = userData;
    next();
  } catch (e) {
    return next(ApiError.unauthorised("Пользователь не авторизован"));
  }
};
