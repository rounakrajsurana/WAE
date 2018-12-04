import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { environment } from '../../../environments/environment';
import { User } from './user.model';
import { map, tap } from 'rxjs/operators';
// import 'rxjs/add/operator/map'
// import 'rxjs/add/operator/tap'

const USERS_URL = `${environment.apiBaseUrl}/users`;
@Injectable({
providedIn: 'root'
})
export class UserService {
private _currentUser = new BehaviorSubject<User>(null);
constructor(private httpClient: HttpClient) { }
get currentUser(): Observable<User> {
return this._currentUser.asObservable();
}
// signIn(email: string, password: string): Observable<User> { return null; }
signIn(email: string, password: string): Observable<User> {
    return this.httpClient.post(`${USERS_URL}/sign_in`, {
    user: {
    email: email,
    password: password
    }
    }, { withCredentials: true }).pipe(
    map(resp => User.parseFrom(resp)),
    tap(user => this._currentUser.next(user))
    );
}
signUp(
email: string,
password: string,
passwordConfirmation: string
): Observable<User> { return null; }
signOut(): Observable<any> { return null; }
}


