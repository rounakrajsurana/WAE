import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

const routes: Routes = [
	{ path: '', redirectTo: '/quotations', pathMatch: 'full' },
	{
	path: 'quotations',
	loadChildren: './quotations/quotations.module#QuotationsModule'
	},
	{
	path: 'users',
	loadChildren: './users/users.module#UsersModule'
	}
	
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
