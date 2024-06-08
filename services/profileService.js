const ApiError = require("../error/ApiError");
const path = require('path');
const uuid = require("uuid");
const { Profile } = require("../models/models");

class ProfileService {
  async update(id, req) {
    const profile = await Profile.findOne({ where: { id: Number(id) } });
    const { firstname, surname, gender, email } = req.body;
    if (gender === "MEN" || gender === "WOMEN") {
      const { photo } = req.files;
      let fileName = null;
      if (photo) {
        console.log(photo.name, photo.name.slice(-3));
        if (photo.name.slice(-3) === "jpg" || photo.name.slice(-3) === "png") {
          if (photo.name.slice(-3) === "jpg") {
            fileName = uuid.v4() + ".jpg";
          }
          if (photo.name.slice(-3) === "png") {
            fileName = uuid.v4() + ".png";
          }
          photo.mv(path.resolve(__dirname, "..", "static", fileName));
        } else {
          return next(
            ApiError.badRequest(
              "NOT CORRECT FILE EXTENSION, ONLY .jpg or .png",
            ),
          );
        }
      }

      await profile.update({
        firstname,
        surname,
        gender,
        email,
        photo: fileName,
      });
      return profile;
    } else {
      return next(ApiError.badRequest("INVALID_DATA"));
    }
  }

  async getAll(limit = 10, page = 1) {
    const offset = page * limit - limit;
    const profiles = await Profile.findAndCountAll({
      limit: Number(limit),
      offset,
    });
    return profiles;
  }

  async getOne(id) {
    const profile = await Profile.findOne({ where: { id: Number(id) } });
    return profile;
  }
}

module.exports = new ProfileService();
