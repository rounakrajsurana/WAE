import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { QuotationsRoutingModule } from './quotations-routing.module';
import { QuotationListComponent } from './quotation-list/quotation-list.component';
import { QuotationDetailsComponent } from './quotation-details/quotation-details.component';
import { QuotationFormComponent } from './quotation-form/quotation-form.component';
import { QuotationService } from './shared/quotation.service';

@NgModule({
  imports: [
    CommonModule,
    QuotationsRoutingModule
  ],
  declarations: [QuotationListComponent, QuotationDetailsComponent, QuotationFormComponent],
  providers: [QuotationService]
})
export class QuotationsModule { }


