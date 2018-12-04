export class Quotation {
    id: number;
    quote: string;
    constructor(params?: Partial<Quotation>) {
    Object.assign(this, params);
    }
    static parseFrom(object: any): Quotation {
    const { id, quote } = object;
    return new Quotation({ id, quote })
    }
}