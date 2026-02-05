# Euriler - Imersão Euriliano

Site de captura para a Imersão Euriliano - Evento presencial em Alphaville-SP sobre marketing digital e IA.

## 🚀 Deploy no Vercel

Este site está configurado para deploy automático no Vercel.

### Pré-requisitos
- Conta no [Vercel](https://vercel.com)
- [Vercel CLI](https://vercel.com/docs/cli) instalado (opcional)

### Deploy Rápido

#### Opção 1: Via Interface Web
1. Acesse [vercel.com](https://vercel.com)
2. Clique em "Import Project"
3. Selecione este repositório
4. Configure o domínio personalizado
5. Deploy!

#### Opção 2: Via CLI
```bash
# Instalar Vercel CLI
npm i -g vercel

# Fazer login
vercel login

# Deploy
vercel

# Deploy para produção
vercel --prod
```

## 📁 Estrutura do Projeto

```
euriler.com.br/
├── index.html              # Página principal
├── vercel.json             # Configuração Vercel
├── wp-content/             # Assets (CSS, JS, imagens)
├── wp-includes/            # Recursos do WordPress
├── feed/                   # RSS Feed
├── comments/               # Feed de comentários
└── termos-de-uso/          # Página de termos
```

## 🔧 Configurações

### Domínio Personalizado
Para configurar o domínio `euriler.com.br`:
1. Acesse o projeto no Vercel
2. Vá em Settings > Domains
3. Adicione `euriler.com.br`
4. Configure os DNS conforme instruções

### Variáveis de Ambiente
Não há variáveis de ambiente necessárias para este projeto estático.

### Analytics
- **Google Tag Manager**: GTM-P6B8RCFW
- **Facebook Pixel**: 664384256342266

## 📊 Performance

O site está otimizado com:
- ✅ Imagens em formato WebP
- ✅ Lazy loading de imagens
- ✅ Cache de assets estáticos (1 ano)
- ✅ Headers de segurança
- ✅ Minificação de recursos

## 🔒 Segurança

Headers configurados:
- `X-Content-Type-Options: nosniff`
- `X-Frame-Options: SAMEORIGIN`
- `X-XSS-Protection: 1; mode=block`
- `Referrer-Policy: strict-origin-when-cross-origin`

## 📝 Formulários

Os formulários atualmente usam Elementor Pro. Para funcionar no Vercel, considere:

### Opções de Integração:
1. **Formspree** (Recomendado)
   - Gratuito até 50 envios/mês
   - Fácil integração
   - [formspree.io](https://formspree.io)

2. **Basin**
   - Gratuito até 100 envios/mês
   - Interface simples
   - [usebasin.com](https://usebasin.com)

3. **Vercel Serverless Functions**
   - Ilimitado
   - Requer código personalizado
   - Mais controle

## 🎨 Tecnologias

- **CMS Original**: WordPress + Elementor
- **Tema**: Hello Elementor
- **Plugins**: Elementor Pro, Happy Addons, PixelYourSite
- **Deploy**: Vercel (JAMstack)

## 📞 Suporte

Para dúvidas sobre o deploy ou modificações, consulte:
- [Documentação Vercel](https://vercel.com/docs)
- [VERCEL_DEPLOYMENT_PLAN.md](./VERCEL_DEPLOYMENT_PLAN.md)

## 🔄 Atualizações

Para atualizar o site:
1. Faça as alterações nos arquivos
2. Commit e push para o repositório
3. Vercel fará deploy automático

Ou via CLI:
```bash
vercel --prod
```

## 📄 Licença

© 2025 Imersão Euriliano. Todos os direitos reservados.

---

**Última atualização**: 04/02/2026
**Versão**: 1.0.0
