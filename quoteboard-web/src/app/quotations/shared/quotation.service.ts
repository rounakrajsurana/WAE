import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../../environments/environment';
import { Quotation } from './quotation.model';
import { map } from 'rxjs/operators';

const QUOTATIONS_URL = `${environment.apiBaseUrl}/quotations`;

@Injectable()
export class QuotationService {
    constructor(private httpClient: HttpClient) { }
    search(query: string): Observable<Quotation[]> { return null; }
    findAll(): Observable<Quotation[]> { return this.httpClient.get(QUOTATIONS_URL).pipe(
        map((resp: any) => resp.map(obj => Quotation.parseFrom(obj))) ); }
    findById(id: number): Observable<Quotation> { return null; }
    create(quotation: Partial<Quotation>): Observable<Quotation> { return null; }
    destroy(quotation: Partial<Quotation>): Observable<any> { return null; }
}