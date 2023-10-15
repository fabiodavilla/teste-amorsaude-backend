import { Module } from '@nestjs/common';
import { EntidadeService } from './entidade.service';
import { EntidadeController } from './entidade.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Regional } from './entities/regional.entity';
import { Entidade } from './entities/entidade.entity';
import { Especialidade } from './entities/especialidade.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Entidade, Regional, Especialidade])],
  controllers: [EntidadeController],
  providers: [EntidadeService],
})
export class EntidadeModule {}
