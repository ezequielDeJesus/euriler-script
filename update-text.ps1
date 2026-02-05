# Script para atualizar textos do site para foco em Marketing Digital
$file = "index.html"
$content = Get-Content $file -Raw -Encoding UTF8

# Substituições de texto focadas em Marketing Digital
$replacements = @{
    # Título e descrições principais
    "Imersão Presencial para experts em alphaville-sp" = "Treinamento Presencial de Marketing Digital em Alphaville-SP"
    "Estabeleça seu Negócio Digital de Infoproduto nessa era Pós-IA — e alcance Liberdade, Realização e Propósito." = "Domine as Estratégias Avançadas de Marketing Digital e Transforme seu Negócio Online com Técnicas Comprovadas de Conversão e Vendas."
    "Preencha o <b>formulário</b> abaixo para se candidatar a uma <b>cortesia:" = "Preencha o <b>formulário</b> abaixo para garantir sua vaga no maior evento de <b>Marketing Digital do ano:"
    
    # Seção de benefícios
    "Treinamento de marketing digital do futuro com apostila prática" = "Estratégias avançadas de tráfego pago, funis de vendas e conversão de alta performance"
    
    # Vídeo
    "Veja como foi a última edição da imersão:" = "Descubra as estratégias de marketing digital que geraram milhões em vendas:"
    
    # Depoimentos
    "QUEM EU JÁ AJUDEI?" = "RESULTADOS REAIS DE QUEM APLICOU NOSSAS ESTRATÉGIAS DE MARKETING"
    
    # Mensagem inspiracional
    "Quando o mundo precisa de mudança, Deus levanta pessoas com voz para anunciar boas novas — <b>e restaurar o que foi perdido.</b><br><br>Existe um jeito de vencer no digital <b>sem perder a sua</b> <b>essência</b> e trair valores espirituais." = "O mercado de Marketing Digital está em constante evolução. <b>Quem domina as estratégias certas</b> conquista resultados extraordinários.<br><br>Aprenda as técnicas mais avançadas de <b>tráfego pago, copywriting e funis de vendas</b> que estão gerando milhões em faturamento."
    "é tempo de se levantar." = "É hora de dominar o marketing digital."
    
    # IA Agents
    "Nossos agentes  de I.A (vendedores) em ação" = "Automação de Marketing e Funis de Vendas em Ação"
    "O agente garante que o lead está no grupo e se coloca a disposição." = "Sistema automatizado de nutrição de leads com sequências de email marketing personalizadas."
    "O lead manda um emoji e o agente é capaz de interpretar e agir de imediato." = "Funil de vendas inteligente que identifica o estágio do cliente e envia a mensagem certa no momento certo."
    "O lead desabafa e se sente totalmente acolhido pelo agente (que ele não sabe que é uma IA)." = "Estratégia de relacionamento que cria conexão genuína com a audiência e aumenta as taxas de conversão."
    "E esse é só um de milhares de casos das nossas campanhas de lançamento com IA." = "Essas são apenas algumas das estratégias de marketing digital que ensinamos na imersão."
    
    # CTAs
    "Quero fazer parte disso" = "Quero Dominar Marketing Digital"
    "Quero viver um novo tempo no digital" = "Quero Multiplicar Meus Resultados Online"
    "Me candidatar a uma vaga" = "Garantir Minha Vaga Agora"
    
    # Resultados
    "Resultados <br>no último ano com estratégias atualizadas (+ia)" = "Resultados <br>com Estratégias Avançadas de Marketing Digital"
    
    # Sistema 4x4
    "Sistema 4x4" = "Os 4 Pilares do Marketing Digital"
    "4 Pilares de um Negócio Digital de Sucesso" = "Tráfego, Conversão, Produto e Escala - O Sistema Completo"
    "Audiência" = "Tráfego Qualificado"
    "Produto" = "Oferta Irresistível"
    
    # Vagas
    "Vagas limitadas pelo espaço." = "Vagas limitadas - Evento presencial exclusivo para profissionais sérios."
    
    # Imersão
    "Imersão Euriliano" = "Imersão Marketing Digital Avançado"
    "Imersão Presencial em Alphaville-SP" = "Treinamento Intensivo de Marketing Digital em Alphaville-SP"
    "Sim, o evento é imersivo e presencial, de 3 dias, em Alphaville-SP e" = "Sim, são 3 dias intensivos de imersão em estratégias avançadas de marketing digital, tráfego pago, copywriting e funis de vendas em Alphaville-SP,"
    
    # Nichos dos cases
    "Nicho: <b>Desenvolvimento Profissional</b>" = "Nicho: <b>Cursos Online e Infoprodutos</b>"
    "Nicho:<b> Inteligência Artificial</b>" = "Nicho:<b> Marketing Digital e Tecnologia</b>"
    "Nicho:<b> Relacionamento</b>" = "Nicho:<b> Desenvolvimento Pessoal</b>"
    "Nicho:<b> Espiritualidade</b>" = "Nicho:<b> Coaching e Mentoria</b>"
}

# Aplicar substituições
foreach ($key in $replacements.Keys) {
    $content = $content -replace [regex]::Escape($key), $replacements[$key]
}

# Salvar arquivo
$content | Set-Content $file -Encoding UTF8 -NoNewline

Write-Host "✅ Textos atualizados com sucesso!" -ForegroundColor Green
Write-Host "📄 Arquivo: $file" -ForegroundColor Cyan
Write-Host "🔄 Total de substituições: $($replacements.Count)" -ForegroundColor Yellow
