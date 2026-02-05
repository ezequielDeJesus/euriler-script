# 🤖 Guia de Modificações com Antigravity

Este guia mostra como fazer modificações no site usando o Antigravity AI.

## 📝 Tipos de Modificações Possíveis

### 1. Alterações de Conteúdo

#### Mudar Textos
```
"Altere o título principal para 'Nova Imersão 2026'"
"Mude a data do evento para '10, 11 e 12 de Março'"
"Atualize o texto do botão para 'Garantir Minha Vaga Agora'"
```

#### Mudar Imagens
```
"Substitua a imagem do banner principal"
"Adicione uma nova foto na seção de depoimentos"
"Otimize todas as imagens para WebP"
```

### 2. Alterações de Design

#### Cores
```
"Mude a cor primária do site para azul (#0B2FE1)"
"Altere a cor de fundo da seção de formulário"
"Ajuste o esquema de cores para modo escuro"
```

#### Layout
```
"Reorganize as seções na ordem: hero, vídeo, depoimentos, formulário"
"Adicione espaçamento entre as seções"
"Torne o layout mais responsivo para mobile"
```

### 3. Funcionalidades

#### Formulários
```
"Integre o formulário com Formspree usando a chave XYZ"
"Adicione validação de email no formulário"
"Crie um novo campo de telefone no formulário"
```

#### Analytics
```
"Adicione um novo pixel do Facebook"
"Configure evento de conversão no GTM"
"Implemente rastreamento de cliques nos botões"
```

### 4. Performance

#### Otimizações
```
"Minifique o CSS inline"
"Implemente lazy loading nas imagens"
"Adicione preload para fontes críticas"
```

#### SEO
```
"Adicione meta tags Open Graph"
"Melhore a estrutura de headings (H1, H2, H3)"
"Implemente Schema.org para eventos"
```

---

## 🎯 Exemplos Práticos

### Exemplo 1: Atualizar Data do Evento
```
Prompt: "Atualize a data do evento de '05, 06 e 07 de Dezembro' para '15, 16 e 17 de Março de 2026' em todos os lugares do site"
```

**O que o Antigravity fará:**
1. Buscar todas as ocorrências da data antiga
2. Substituir pela nova data
3. Verificar se há datas em formatos diferentes
4. Confirmar as mudanças

### Exemplo 2: Adicionar Nova Seção
```
Prompt: "Adicione uma seção de FAQ antes do formulário final com 5 perguntas frequentes sobre a imersão"
```

**O que o Antigravity fará:**
1. Criar HTML para seção FAQ
2. Estilizar de acordo com o design existente
3. Adicionar animações consistentes
4. Inserir no local correto

### Exemplo 3: Integrar Formulário
```
Prompt: "Configure o formulário principal para enviar dados para o Formspree usando o endpoint https://formspree.io/f/seu-id"
```

**O que o Antigravity fará:**
1. Modificar o atributo `action` do formulário
2. Adicionar `method="POST"`
3. Configurar campos hidden necessários
4. Adicionar mensagem de sucesso/erro

---

## 🔧 Comandos Úteis

### Análise
```
"Analise a performance do site e sugira melhorias"
"Liste todos os formulários e suas configurações atuais"
"Identifique imagens não otimizadas"
```

### Backup
```
"Crie um backup do index.html antes de fazer mudanças"
"Salve a versão atual em index.backup.html"
```

### Testes
```
"Verifique se todos os links estão funcionando"
"Teste a responsividade em diferentes tamanhos de tela"
"Valide o HTML do site"
```

---

## 📋 Checklist de Modificações

### Antes de Modificar
- [ ] Fazer backup do arquivo atual
- [ ] Entender o impacto da mudança
- [ ] Verificar dependências (CSS, JS)

### Durante a Modificação
- [ ] Manter consistência de design
- [ ] Preservar funcionalidades existentes
- [ ] Testar em diferentes dispositivos

### Após Modificação
- [ ] Verificar se não quebrou nada
- [ ] Testar formulários e links
- [ ] Validar HTML/CSS
- [ ] Fazer commit das mudanças

---

## 🎨 Padrões de Design do Site

### Cores Principais
- Azul primário: `#0B2FE1`
- Branco: `#FFFFFF`
- Preto: `#000000`
- Gradientes: Usados em botões e seções

### Tipografia
- Fonte principal: Inter
- Fonte secundária: Poppins, Roboto Slab, Sora
- Tamanhos responsivos

### Espaçamento
- Padding padrão: 24px
- Gap entre seções: variável
- Mobile: espaçamentos reduzidos

### Componentes
- Botões: Arredondados, com hover effects
- Cards: Com sombras e bordas arredondadas
- Formulários: Campos grandes, fáceis de usar

---

## 🚀 Deploy Após Modificações

### Opção 1: Deploy Manual
```bash
# Fazer commit
git add .
git commit -m "Descrição das mudanças"
git push

# Vercel fará deploy automático
```

### Opção 2: Via Antigravity
```
"Faça commit das mudanças e deploy no Vercel"
```

---

## 💡 Dicas Importantes

### ✅ Boas Práticas
- Sempre teste localmente antes de fazer deploy
- Faça commits pequenos e frequentes
- Use mensagens de commit descritivas
- Mantenha backup das versões anteriores

### ❌ Evite
- Modificar arquivos em `wp-content` sem necessidade
- Remover scripts de tracking (GTM, Facebook Pixel)
- Quebrar a estrutura HTML do Elementor
- Fazer múltiplas mudanças grandes de uma vez

---

## 🔗 Recursos

### Documentação
- [Elementor](https://elementor.com/help/)
- [Vercel](https://vercel.com/docs)
- [HTML/CSS](https://developer.mozilla.org/pt-BR/)

### Ferramentas
- [HTML Validator](https://validator.w3.org/)
- [CSS Validator](https://jigsaw.w3.org/css-validator/)
- [PageSpeed Insights](https://pagespeed.web.dev/)

---

## 📞 Exemplos de Prompts Completos

### Modificação Simples
```
"Altere o texto do botão 'Quero fazer parte disso' para 'Garantir Minha Vaga' e mude a cor de fundo para verde (#00D084)"
```

### Modificação Complexa
```
"Crie uma nova seção após o vídeo com:
- Título: 'Por que participar?'
- 3 cards com ícones mostrando benefícios
- Botão CTA no final
- Design consistente com o resto do site
- Animações de fade in ao scroll"
```

### Otimização
```
"Otimize o site para performance:
1. Minifique CSS e JS inline
2. Adicione preload para recursos críticos
3. Implemente lazy loading em todas as imagens
4. Adicione meta tags de cache
5. Gere relatório de melhorias"
```

---

**Criado por**: Antigravity AI
**Última atualização**: 04/02/2026
**Versão**: 1.0
