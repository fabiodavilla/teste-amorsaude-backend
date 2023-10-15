import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Entidade } from './entities/entidade.entity';
import { In, Repository } from 'typeorm';
import { Regional } from './entities/regional.entity';
import { CreateEntidadeDto } from './dto/create-entidade.dto';
import { randomUUID } from 'crypto';
import { Especialidade } from './entities/especialidade.entity';
import { UpdateEntidadeDto } from './dto/update-entidade.dto';

@Injectable()
export class EntidadeService {
  constructor(
    @InjectRepository(Entidade)
    private entidadeRepository: Repository<Entidade>,

    @InjectRepository(Regional)
    private regionalRepository: Repository<Regional>,

    @InjectRepository(Especialidade)
    private especialidadeRepository: Repository<Especialidade>,
  ) {}

  async create(createEntidadeDto: CreateEntidadeDto) {
    const regional = await this.regionalRepository.findOne({
      where: {
        value: createEntidadeDto.regional,
      },
    });

    if (!regional) {
      throw new Error('Regional not found');
    }

    const especialidades = await this.especialidadeRepository.find({
      where: {
        id: In(createEntidadeDto.especialidades),
      },
    });

    if (
      !especialidades ||
      especialidades.length !== createEntidadeDto.especialidades.length
    ) {
      throw new Error('Especialidade not found');
    }

    const entidade = this.entidadeRepository.create({
      id: randomUUID(),
      razaoSocial: createEntidadeDto.razaoSocial,
      nomeFantasia: createEntidadeDto.nomeFantasia,
      cnpj: createEntidadeDto.cnpj,
      dataInauguracao: createEntidadeDto.dataInauguracao,
      Ativa: createEntidadeDto.Ativa,
      regional: regional,
      especialidades: especialidades,
    });

    return this.entidadeRepository.save(entidade);
  }

  findAll() {
    return this.entidadeRepository.find();
  }

  findAllRegionais() {
    return this.regionalRepository.find();
  }

  findAllEspecialidades() {
    return this.especialidadeRepository.find();
  }

  findOne(id: string) {
    return this.entidadeRepository.findOne({
      where: {
        id,
      },
      relations: ['regional', 'especialidades'],
    });
  }

  async update(id: string, updateEntidadeDto: UpdateEntidadeDto) {
    const entidade = await this.entidadeRepository.findOne({
      where: {
        id,
      },
    });

    if (!entidade) {
      throw new Error('Entidade not found');
    }

    const regional = await this.regionalRepository.findOne({
      where: {
        value: updateEntidadeDto.regional,
      },
    });

    if (!regional) {
      throw new Error('Regional not found');
    }

    const especialidades = await this.especialidadeRepository.find({
      where: {
        id: In(updateEntidadeDto.especialidades),
      },
    });

    if (
      !especialidades ||
      especialidades.length !== updateEntidadeDto.especialidades.length
    ) {
      throw new Error('Especialidade not found');
    }

    entidade.razaoSocial = updateEntidadeDto.razaoSocial;
    entidade.nomeFantasia = updateEntidadeDto.nomeFantasia;
    entidade.cnpj = updateEntidadeDto.cnpj;
    entidade.dataInauguracao = updateEntidadeDto.dataInauguracao;
    entidade.Ativa = updateEntidadeDto.Ativa;
    entidade.regional = regional || undefined;
    entidade.especialidades = especialidades || undefined;

    const updatedEntidade = await this.entidadeRepository.save(entidade);

    return updatedEntidade;
  }

  async remove(id: string) {
    const entidade = await this.entidadeRepository.findOne({
      where: {
        id,
      },
    });

    if (!entidade) {
      throw new Error('Entidade not found');
    }

    return this.entidadeRepository.delete(entidade);
  }
}
