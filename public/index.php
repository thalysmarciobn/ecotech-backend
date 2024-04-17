<?php

require '../vendor/autoload.php';

use App\Aplicacao;
use App\Controladores\TesteControlador;
use App\Controladores\UsuarioControlador;
use App\Controladores\ProdutosControlador;
use App\Controladores\ResiduosControlador;
use App\Controladores\MateriaisControlador;
use App\Controladores\SolicitacoesControlador;

$app = new Aplicacao();

define('API', 'api/');
define('USUARIO', API . 'usuario/');
define('PRODUTOS', API . 'produtos/');
define('RESIDUOS', API . 'residuos/');
define('MATERIAIS', API . 'materiais/');
define('SOLICITACOES', API .'solicitacoes/');

// Rotas para Teste
$app->rota(API . 'teste', 'GET', [TesteControlador::class, 'teste']);
$app->rota(API . 'teste/chave', 'GET', [TesteControlador::class, 'testarChave']);

// Rotas para Usuários
$app->rota(API . 'logar', 'POST', [UsuarioControlador::class, 'logar']);
$app->rota(API . 'cadastrar', 'POST', [UsuarioControlador::class, 'cadastrar']);
$app->rota(USUARIO . 'enderecos', 'OPTIONS', [UsuarioControlador::class, 'enderecos']);

// Rotas para Produtos
$app->rota(PRODUTOS . 'lista', 'GET', [ProdutosControlador::class, 'listaProdutos']);
$app->rota(PRODUTOS . 'adicionar', 'POST', [ProdutosControlador::class, 'adicionarProduto']);
$app->rota(PRODUTOS . 'atualizar', 'POST', [ProdutosControlador::class, 'atualizarProduto']);
$app->rota(PRODUTOS . 'remover', 'POST', [ProdutosControlador::class, 'removerProduto']);
$app->rota(PRODUTOS . 'comprar', 'POST', [ProdutosControlador::class, 'comprarProduto']);

// Rotas para Resíduos
$app->rota(RESIDUOS . 'lista', 'GET', [ResiduosControlador::class, 'listaResiduos']);
$app->rota(RESIDUOS . 'adicionar', 'POST', [ResiduosControlador::class, 'adicionarResiduo']);
$app->rota(RESIDUOS . 'atualizar', 'POST', [ResiduosControlador::class, 'atualizarResiduo']);
$app->rota(RESIDUOS . 'remover', 'POST', [ResiduosControlador::class, 'removerResiduo']);

// Rotas para Materiais
$app->rota(MATERIAIS . 'lista', 'GET', [MateriaisControlador::class, 'listaMateriais']);
$app->rota(MATERIAIS . 'obter', 'GET', [MateriaisControlador::class, 'obter']);
$app->rota(MATERIAIS . 'adicionar', 'POST', [MateriaisControlador::class, 'adicionarMaterial']);
$app->rota(MATERIAIS . 'remover', 'POST', [MateriaisControlador::class, 'removerMaterial']);

// Rotas para Solicitações
$app->rota(SOLICITACOES . 'adicionar', 'POST', [SolicitacoesControlador::class, 'adicionarSolicitacao']);
$app->rota(SOLICITACOES . 'adicionar', 'OPTIONS', [SolicitacoesControlador::class, 'adicionarSolicitacao']);

$app->rota(SOLICITACOES . 'listaUsuario', 'GET', [SolicitacoesControlador::class, 'listaUsuario']);
$app->rota(SOLICITACOES . 'listaUsuario', 'OPTIONS', [SolicitacoesControlador::class, 'listaUsuario']);

$app->rota(SOLICITACOES . 'lista', 'GET', [SolicitacoesControlador::class, 'listaSolicitacoes']);
$app->rota(SOLICITACOES . 'lista', 'OPTIONS', [SolicitacoesControlador::class, 'listaSolicitacoes']);

$app->rota(SOLICITACOES . 'aceitar', 'POST', [SolicitacoesControlador::class, 'aceitarSolicitacao']);
$app->rota(SOLICITACOES . 'negar', 'POST', [SolicitacoesControlador::class, 'negarSolicitacao']);

$app->rota(SOLICITACOES . 'listaPessoa', 'POST', [SolicitacoesControlador::class, 'listaPessoaMaterial']);


// Execução da aplicação
$app->rodar();
