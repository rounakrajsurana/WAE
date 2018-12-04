import { TestBed, async, inject } from '@angular/core/testing';

import { SignedInUserGuard } from './signed-in-user.guard';

describe('SignedInUserGuard', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [SignedInUserGuard]
    });
  });

  it('should ...', inject([SignedInUserGuard], (guard: SignedInUserGuard) => {
    expect(guard).toBeTruthy();
  }));
});
