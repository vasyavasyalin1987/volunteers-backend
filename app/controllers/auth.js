const { Account, Role } = require("../models/modelsDB");

async function authenticateUser(login, password) {
	try {
		const user = await Account.findOne({
			where: { login },
			include: [
				{
					model: Role,
					as: "role",
				},
			],
			raw: true,
			nest: true,
		});

		if (!user || password !== user.password) {
			return { success: false, message: "Неверный логин или пароль" };
		}

		return {
			success: true,
			user: {
				id: user.id,
				login: user.login,
				role: user.role.naim,
			},
		};
	} catch (error) {
		console.error(
			`Ошибка при аутентификации login = ${login}, password = ${password}:`,
			error
		);
		return { success: false, message: "Ошибка сервера" };
	}
}

function logoutUser(req, res) {
	req.session.destroy((err) => {
		if (err) {
			console.error("Ошибка удаления ссесии:", err);
			return res.status(500).json({ message: "Ошибка сервера" });
		}
		return res.json({ message: "Выход выполнен" });
	});
}

module.exports = { authenticateUser, logoutUser };
