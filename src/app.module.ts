import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthModule } from './auth/auth.module';
import { EntidadeModule } from './entidade/entidade.module';
import { Usuario } from './usuario/entities/usuario.entity';
import { Entidade } from './entidade/entities/entidade.entity';
import { Regional } from './entidade/entities/regional.entity';
import { Especialidade } from './entidade/entities/especialidade.entity';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'postgres',
      host: 'localhost',
      port: 5432,
      username: 'usuario',
      password: 'senha123',
      database: 'banco_dados',
      entities: [Usuario, Entidade, Regional, Especialidade],
      synchronize: true,
      logging: true,
    }),
    AuthModule,
    EntidadeModule,
  ],
  providers: [],
})
export class AppModule {}
