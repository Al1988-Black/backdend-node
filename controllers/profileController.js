const ApiError = require("../error/ApiError");
const profileService = require("../services/profileService");

class ProfileController {
  async update(req, res, next) {
    try {
      const { id } = req.params;
      if (Number(id) === req.user.id) {
        const profile = await profileService.update(id, req);
        return res.json(profile);
      } else {
        return next(ApiError.unauthorised("Unauthorised"));
      }
    } catch (e) {
      next(ApiError.badRequest("e.message"));
    }
  }

  async getAll(req, res) {
    try {
      const { limit, page } = req.query;
      const profiles = await profileService.getAll(limit, page);
      return res.json(profiles);
    } catch (e) {
      next(ApiError.badRequest(e.message));
    }
  }

  async getOne(req, res) {
    try {
      const { id } = req.params;
      const profile = await profileService.getOne(id);
      return res.json(profile);
    } catch (e) {
      next(ApiError.badRequest(e.message));
    }
  }
}

module.exports = new ProfileController();
