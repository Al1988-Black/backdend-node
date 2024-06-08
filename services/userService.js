const ApiError = require("../error/ApiError");
const bcrypt = require("bcrypt");
const tokenService = require("./tokenService");
const { User, Profile } = require("../models/models");

class UserService {
  async registration(email, password, firstname) {
    const candidate = await Profile.findOne({ where: { email } });
    if (candidate) {
      throw ApiError.badRequest(
        `Пользователь с почтовым адресом ${email} уже существует`,
      );
    }
    const hashPassword = await bcrypt.hash(password, 3);

    const user = await User.create({ password: hashPassword });
    const profile = await Profile.create({
      email,
      firstname,
      userId: user.id,
    });
    const tokens = tokenService.generateTokens({
      id: user.id,
      password: user.password,
    });
    await tokenService.saveToken(user.id, tokens.refreshToken);

    return {
      id: user.id,
      firstname: profile.firstname,
      email: profile.email,
      ...tokens,
    };
  }

  async login(email, password) {
    const profile = await Profile.findOne({ where: { email } });
    if (!profile) {
      throw ApiError.badRequest("Пользователь с таким email не найден");
    }
    const user = await User.findOne({ where: { id: profile.userId } });
    const comparePassword = await bcrypt.compare(password, user.password);
    if (!comparePassword) {
      throw ApiError.badRequest("Неверный пароль");
    }
    const tokens = tokenService.generateTokens({
      id: user.id,
      password: user.password,
    });

    await tokenService.saveToken(user.id, tokens.refreshToken);
    return {
      id: user.id,
      firstname: profile.firstname,
      email: profile.email,
      ...tokens,
    };
  }
}

module.exports = new UserService();
