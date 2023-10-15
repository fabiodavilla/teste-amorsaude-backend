import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { UsuarioService } from 'src/usuario/usuario.service';

@Injectable()
export class AuthService {
  constructor(
    private userService: UsuarioService,
    private jwtService: JwtService,
  ) {}

  async login(body: any) {
    const user = await this.userService.findByEmail(body.email);

    if (!user || user.senha !== body.senha) {
      return null;
    }

    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { senha, ...result } = user;

    return {
      access_token: await this.jwtService.signAsync(result),
    };
  }
}
