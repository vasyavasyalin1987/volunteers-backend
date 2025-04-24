const { Sequelize, DataTypes } = require("sequelize");
const { client, sequelize } = require("./client");

// Определение моделей
const Role = sequelize.define(
	"Role",
	{
		id: {
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true,
		},
		naim: {
			type: DataTypes.TEXT,
			allowNull: false,
		},
	},
	{
		tableName: "role",
		schema: "public",
		timestamps: false,
	}
);

const Account = sequelize.define(
	"Account",
	{
		id: {
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true,
		},
		login: {
			type: DataTypes.TEXT,
			allowNull: false,
			unique: true,
		},
		password: {
			type: DataTypes.TEXT,
			allowNull: false,
		},
		role_id: {
			type: DataTypes.INTEGER,
			allowNull: false,
		},
		token: {
			type: DataTypes.TEXT,
			allowNull: false,
			unique: true,
		},
	},
	{
		tableName: "account",
		schema: "public",
		timestamps: false,
	}
);

const Partner = sequelize.define(
	"Partner",
	{
		id: {
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true,
		},
		naim: {
			type: DataTypes.TEXT,
			allowNull: false,
		},
		id_acc: {
			type: DataTypes.INTEGER,
			allowNull: false,
		},
	},
	{
		tableName: "partner",
		schema: "public",
		timestamps: false,
	}
);

const Category = sequelize.define(
	"Category",
	{
		id: {
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true,
		},
		naim: {
			type: DataTypes.TEXT,
			allowNull: false,
		},
	},
	{
		tableName: "category",
		schema: "public",
		timestamps: false,
	}
);

const Bonus = sequelize.define(
	"Bonus",
	{
		id: {
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true,
		},
		id_partner: {
			type: DataTypes.INTEGER,
			allowNull: false,
		},
		naim: {
			type: DataTypes.TEXT,
			allowNull: false,
		},
		count: {
			type: DataTypes.NUMERIC,
			allowNull: false,
		},
		id_category: {
			type: DataTypes.INTEGER,
			allowNull: true,
		},
	},
	{
		tableName: "bonus",
		schema: "public",
		timestamps: false,
	}
);

const Volonter = sequelize.define(
	"Volonter",
	{
		id: {
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true,
		},
		fio: {
			type: DataTypes.TEXT,
			allowNull: true,
		},
		inn: {
			type: DataTypes.TEXT,
			allowNull: true,
		},
		tel: {
			type: DataTypes.TEXT,
			allowNull: true,
		},
		DOB: {
			type: DataTypes.DATE,
			allowNull: true,
		},
		id_acc: {
			type: DataTypes.INTEGER,
			allowNull: false,
		},
	},
	{
		tableName: "volonter",
		schema: "public",
		timestamps: false,
	}
);

const NachBonus = sequelize.define(
	"NachBonus",
	{
		id: {
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true,
		},
		id_bonus: {
			type: DataTypes.INTEGER,
			allowNull: true,
		},
		date_nach: {
			type: DataTypes.DATE,
			allowNull: true,
		},
		id_volonter: {
			type: DataTypes.INTEGER,
			allowNull: true,
		},
		is_expired: {
			type: DataTypes.VIRTUAL, // Виртуальное поле, не хранится в базе данных
			get() {
				if (!this.time_nach) return false; // Если time_nach не задано, возвращаем false
				const currentDate = new Date();
				const timeNach = new Date(this.time_nach);
				const monthsDiff = differenceInMonths(currentDate, timeNach);
				return monthsDiff > 6;
			},
		},
	},
	{
		tableName: "nach_bonus",
		schema: "public",
		timestamps: false,
	}
);

// Определение связей
Role.hasMany(Account, { foreignKey: "role_id", as: "accounts" });
Account.hasOne(Volonter, { foreignKey: "id_acc", as: "volonter" });
Account.hasOne(Partner, { foreignKey: "id_acc", as: "partner" });
Partner.hasMany(Bonus, { foreignKey: "id_partner", as: "bonuses" });
Category.hasMany(Bonus, { foreignKey: "id_category", as: "bonuses" });
Bonus.hasMany(NachBonus, { foreignKey: "id_bonus", as: "nachBonuses" });
Volonter.hasMany(NachBonus, { foreignKey: "id_volonter", as: "nachBonuses" });

Account.belongsTo(Role, { foreignKey: "role_id", as: "role" });
Volonter.belongsTo(Account, { foreignKey: "id_acc", as: "account" });
Partner.belongsTo(Account, { foreignKey: "id_acc", as: "account" });
Bonus.belongsTo(Partner, { foreignKey: "id_partner", as: "partner" });
Bonus.belongsTo(Category, { foreignKey: "id_category", as: "category" });
NachBonus.belongsTo(Bonus, { foreignKey: "id_bonus", as: "bonus" });
NachBonus.belongsTo(Volonter, { foreignKey: "id_volonter", as: "volonter" });

// Синхронизация моделей с базой данных
// sequelize.sync({ alter: false });

module.exports = {
	sequelize,
	Role,
	Account,
	Partner,
	Category,
	Bonus,
	Volonter,
	NachBonus,
};
