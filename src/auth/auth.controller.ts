import { Controller, Post, Body, BadRequestException } from '@nestjs/common';
import { AuthService } from './auth.service';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('login')
  async login(@Body() body: any) {
    const res = await this.authService.login(body);

    if (!res) {
      throw new BadRequestException('Invalid credentials');
    }

    return res;
  }
}
