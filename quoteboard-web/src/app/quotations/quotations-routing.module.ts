import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { QuotationDetailsComponent } from './quotation-details/quotation-details.component';
import { QuotationFormComponent } from './quotation-form/quotation-form.component';
import { QuotationListComponent } from './quotation-list/quotation-list.component';
import { SignedInUserGuard } from '../shared/guards/signed-in-user.guard';

const routes: Routes = [

  { path: '', component: QuotationListComponent },
  { path: 'new', component: QuotationFormComponent },
  { path: ':id', component: QuotationDetailsComponent },
  { path: '', component: QuotationListComponent },
  { path: 'new', component: QuotationFormComponent, canActivate: [SignedInUserGuard] },
  { path: ':id', component: QuotationDetailsComponent },

  ];



@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class QuotationsRoutingModule { }




