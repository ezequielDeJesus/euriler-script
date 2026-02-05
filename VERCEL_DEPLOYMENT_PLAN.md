# 📋 Plano de Deploy no Vercel - euriler.com.br

## 🔍 Análise do Projeto Atual

### Estrutura Identificada
Este é um **site WordPress exportado como HTML estático** com:
- ✅ Arquivo principal: `index.html` (1MB+)
- ✅ Recursos estáticos em `wp-content/`
- ✅ Dependências do Elementor (page builder)
- ✅ Múltiplos formulários de captura
- ✅ Integração com Google Tag Manager
- ✅ Carrosséis e elementos interativos

### Tecnologias Utilizadas
- **CMS**: WordPress + Elementor
- **Tema**: Hello Elementor
- **Plugins**: 
  - Elementor Pro
  - Happy Addons
  - PixelYourSite (tracking)
  - GTM Kit
- **Analytics**: Google Tag Manager (GTM-P6B8RCFW)
- **Tracking**: Facebook Pixel (664384256342266)

---

## 🎯 Estratégia de Deploy no Vercel

### Opção 1: Deploy Estático Simples (Recomendado para Início)
**Vantagens**: Rápido, sem necessidade de backend
**Limitações**: Formulários precisarão de integração externa

#### Passos:
1. ✅ Manter estrutura atual de arquivos
2. ✅ Criar `vercel.json` para configuração
3. ✅ Configurar redirects e headers
4. ✅ Integrar formulários com serviço externo (Formspree, Basin, etc)

### Opção 2: Conversão para Next.js (Recomendado para Longo Prazo)
**Vantagens**: Melhor performance, SEO, controle total
**Desvantagens**: Requer mais trabalho inicial

---

## 📝 Mudanças Necessárias

### 1. Estrutura de Arquivos
```
euriler.com.br/
├── public/
│   ├── wp-content/        # Mover recursos estáticos
│   ├── wp-includes/       # Mover recursos estáticos
│   └── favicon.ico
├── index.html             # Página principal
├── vercel.json            # Configuração Vercel
└── README.md
```

### 2. Formulários
**Problema**: Formulários WordPress não funcionarão no Vercel (sem PHP)

**Soluções**:
- **A) Formspree** (gratuito até 50 envios/mês)
- **B) Basin** (gratuito até 100 envios/mês)
- **C) Vercel Serverless Functions** (requer código)
- **D) Google Forms** (gratuito, ilimitado)

### 3. URLs Absolutas
Substituir URLs hardcoded:
- ❌ `https://euriler.com.br/wp-content/...`
- ✅ `/wp-content/...` (relativas)

### 4. Performance
- Otimizar imagens (converter para WebP - já feito!)
- Minificar CSS/JS
- Implementar lazy loading (já implementado!)

---

## 🚀 Passo a Passo para Deploy

### Fase 1: Preparação Local
```bash
# 1. Criar vercel.json
# 2. Reorganizar arquivos
# 3. Testar localmente
```

### Fase 2: Configuração Vercel
1. Criar conta no Vercel (se não tiver)
2. Conectar repositório GitHub
3. Configurar domínio personalizado
4. Configurar variáveis de ambiente

### Fase 3: Deploy
```bash
# Instalar Vercel CLI
npm i -g vercel

# Deploy
vercel
```

---

## 🔧 Configurações Necessárias

### vercel.json
```json
{
  "version": 2,
  "builds": [
    {
      "src": "index.html",
      "use": "@vercel/static"
    }
  ],
  "routes": [
    {
      "src": "/(.*)",
      "dest": "/$1"
    }
  ],
  "headers": [
    {
      "source": "/(.*)",
      "headers": [
        {
          "key": "X-Content-Type-Options",
          "value": "nosniff"
        },
        {
          "key": "X-Frame-Options",
          "value": "DENY"
        },
        {
          "key": "X-XSS-Protection",
          "value": "1; mode=block"
        }
      ]
    }
  ]
}
```

---

## 📊 Checklist de Migração

### Antes do Deploy
- [ ] Backup completo do site atual
- [ ] Testar todos os links
- [ ] Verificar formulários
- [ ] Confirmar tracking (GTM, Facebook Pixel)
- [ ] Otimizar imagens

### Durante o Deploy
- [ ] Criar repositório Git
- [ ] Configurar Vercel
- [ ] Deploy inicial
- [ ] Testar em ambiente de staging

### Após o Deploy
- [ ] Configurar domínio personalizado
- [ ] Configurar SSL (automático no Vercel)
- [ ] Testar formulários
- [ ] Verificar analytics
- [ ] Monitorar performance

---

## 🎨 Melhorias Sugeridas com Antigravity

### 1. Modernização do Código
- Separar CSS inline em arquivo externo
- Modularizar JavaScript
- Implementar componentes reutilizáveis

### 2. Performance
- Implementar Service Worker para cache
- Otimizar Critical CSS
- Lazy load de imagens (já implementado)

### 3. SEO
- Adicionar meta tags Open Graph
- Implementar Schema.org markup
- Melhorar estrutura de headings

### 4. Conversão para Next.js
- Criar componentes React para seções
- Implementar SSG (Static Site Generation)
- Adicionar API routes para formulários

---

## 📞 Próximos Passos

1. **Decidir estratégia**: Estático simples ou Next.js?
2. **Configurar formulários**: Qual serviço usar?
3. **Preparar arquivos**: Reorganizar estrutura
4. **Deploy inicial**: Testar no Vercel
5. **Configurar domínio**: Apontar DNS

---

## 💡 Dicas Importantes

### ✅ O que funciona no Vercel:
- HTML/CSS/JS estáticos
- Next.js, React, Vue, etc.
- Serverless Functions
- Edge Functions

### ❌ O que NÃO funciona:
- PHP (WordPress backend)
- MySQL/Banco de dados tradicional
- Processamento de formulários PHP
- Plugins WordPress dinâmicos

---

## 🔗 Recursos Úteis

- [Documentação Vercel](https://vercel.com/docs)
- [Vercel CLI](https://vercel.com/docs/cli)
- [Next.js](https://nextjs.org/)
- [Formspree](https://formspree.io/)
- [Basin](https://usebasin.com/)

---

**Criado por**: Antigravity AI
**Data**: 04/02/2026
**Versão**: 1.0
