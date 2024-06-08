const sequelize = require("../db");

const { DataTypes } = require("sequelize");

const User = sequelize.define("user", {
  id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  password: { type: DataTypes.STRING, allowNull: false },
});

const Profile = sequelize.define("profile", {
  id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  email: { type: DataTypes.STRING, unique: true, allowNull: false },
  firstname: { type: DataTypes.STRING, allowNull: false },
  surname: { type: DataTypes.STRING },
  gender: { type: DataTypes.STRING, defaultValue: "MEN" },
  photo: { type: DataTypes.STRING },
});

const RefreshToken = sequelize.define("token", {
  id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  refreshToken: { type: DataTypes.STRING, allowNull: false },
});

User.hasOne(Profile);
Profile.belongsTo(User);

User.hasOne(RefreshToken);
RefreshToken.belongsTo(User);

module.exports = {
  User,
  Profile,
  RefreshToken,
};
