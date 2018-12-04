import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { Observable } from 'rxjs';
import { map, tap } from 'rxjs/operators';
import { UserService } from '../../users/shared/user.service';

@Injectable({
  providedIn: 'root'
})
export class SignedInUserGuard implements CanActivate {
  constructor(private userSvc: UserService) { }
  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean> {
      return this.userSvc.currentUser.pipe(
        map(user => user != null),
        tap(canActivate => {
        if (!canActivate) alert('Please sign in');   })
        );
  }
}
