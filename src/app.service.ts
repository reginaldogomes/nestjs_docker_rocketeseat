import { Injectable } from '@nestjs/common'

@Injectable()
export class AppService {
  getHello(): string {
    return 'Deploy Pipeline GitHub Actions (CI CD), AWS Registry, AWS App Runner'
  }
}
