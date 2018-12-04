import { Component, OnInit } from '@angular/core';
import { QuotationService } from '../shared/quotation.service';
import { Quotation } from '../shared/quotation.model';


@Component({
  selector: 'app-quotation-list',
  templateUrl: './quotation-list.component.html',
  styleUrls: ['./quotation-list.component.css']
})
export class QuotationListComponent implements OnInit {
  quotations: Quotation[];

  constructor(private quotationSvc: QuotationService) { }

  ngOnInit() {
  this.quotationSvc.findAll()
	.subscribe(results => this.quotations = results);
  }

}