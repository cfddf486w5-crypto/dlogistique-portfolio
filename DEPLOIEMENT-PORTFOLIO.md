# Déploiement de portfolio.dlogistique.com (Cloudflare Workers)

Ce dossier (`C:\Users\alexd\Projets\portfolio-dlogistique`) contient votre portfolio officiel **DLogistique** prêt à être publié sur **`https://portfolio.dlogistique.com`**.

## 1. Comment le voir tout de suite sur votre ordinateur
Ouvrez simplement le fichier [`public/index.html`](file:///C:/Users/alexd/Projets/portfolio-dlogistique/public/index.html) ou l'adresse locale :
👉 **`http://localhost:8788`**

## 2. Comment le mettre en ligne sur `portfolio.dlogistique.com` (en 2 clics)
Le fichier [`wrangler.jsonc`](file:///C:/Users/alexd/Projets/portfolio-dlogistique/wrangler.jsonc) est déjà configuré exactement comme vos autres sous-domaines (`deplacements.dlogistique.com`, `cedule.dlogistique.com`) :
- Il crée automatiquement le certificat HTTPS et l'adresse **`portfolio.dlogistique.com`** dans votre compte Cloudflare.
- Pour le publier :
  1. Connectez une seule fois Cloudflare (si la session a expiré) : `npx wrangler login`
  2. Lancez : `npx wrangler deploy`
