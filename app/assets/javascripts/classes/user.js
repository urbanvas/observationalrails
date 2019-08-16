class User {
	constructor({ id, username, email }) {
		this.id = id;
		this.username = username;
		this.email = email;
	}

	welcome() {
		return `<h3>Hello, ${this.username}</h3><h4>I hope all is well today</h4>`;
	}
}
