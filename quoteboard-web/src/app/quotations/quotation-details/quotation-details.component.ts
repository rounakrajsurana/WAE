import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { QuotationService } from '../shared/quotation.service';
import { flatMap } from 'rxjs/operators';

@Component({
  selector: 'app-quotation-details',
  templateUrl: './quotation-details.component.html',
  styleUrls: ['./quotation-details.component.css']
})
export class QuotationDetailsComponent implements OnInit {

  constructor(private route: ActivatedRoute,
    private quotationSvc: QuotationService) { }

  ngOnInit() {
    this.route.params.pipe(
      flatMap(params => this.quotationSvc.findById(params.id))
      ).subscribe(quotation => console.log(quotation));
    this.route.params.subscribe(params => console.log(`Quotation ID = ${params.id}`));
  }

}

