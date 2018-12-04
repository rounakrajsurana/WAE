export class User {
    id: number;
    email: string;
    role: string;
    constructor(params?: Partial<User>) {
    Object.assign(this, params);
    }
    static parseFrom(object: any): User {
    const { id, email, role } = object;
    return new User({ id, email, role })
    }
}