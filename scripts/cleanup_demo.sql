-- =========================================================================
-- LASH HUB — LIMPEZA DOS DADOS DEMO
--
-- Apaga tudo que foi criado pelo seed_demo.sql.
-- O ON DELETE CASCADE do schema cuida das tabelas filhas automaticamente:
-- agendamentos, agendamento_servicos, atendimentos, clientes, servicos,
-- categorias_servico, variacoes_servico, horarios_atendimento,
-- bloqueios_agenda, configuracao_negocio, usuarios, logs, push_subscriptions.
--
-- ATENÇÃO: Este script apaga TODOS os dados de TODOS os estabelecimentos.
-- Use apenas em ambiente de demo/testes. NÃO rode em produção.
-- =========================================================================

-- Remove os 5 estabelecimentos demo pelo slug (CASCADE apaga tudo ligado a eles)
DELETE FROM public.estabelecimentos
WHERE slug IN (
  'studio-m-lash',
  'be-lash-studio',
  'gabi-costa-cilios',
  'fernanda-lash-premium',
  'camila-rodrigues-lash'
);
