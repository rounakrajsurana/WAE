import { Component, OnInit } from '@angular/core';
import { UserService } from './users/shared/user.service';
import { User } from './users/shared/user.model';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'quoteboard-web';
  currentUser: User = null;
  constructor(private userSvc: UserService) { }
  ngOnInit() {
  this.userSvc.currentUser.subscribe(user => this.currentUser = user);
  }

  signOut() {
    // TODO: Implement UserService.signOut() and uncomment the following line.
    // this.userSvc.signOut().subscribe();
    }
  }