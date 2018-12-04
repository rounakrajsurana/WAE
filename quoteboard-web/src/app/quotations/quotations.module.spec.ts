import { QuotationsModule } from './quotations.module';

describe('QuotationsModule', () => {
  let quotationsModule: QuotationsModule;

  beforeEach(() => {
    quotationsModule = new QuotationsModule();
  });

  it('should create an instance', () => {
    expect(quotationsModule).toBeTruthy();
  });
});
