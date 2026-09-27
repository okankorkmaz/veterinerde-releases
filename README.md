# veterinerde.com.tr — landing

Statik site. Kurulum yok. Mevcut "Çok Yakında" sayfasının yerine geçer.

## Yayına alma (Vercel + veterinerde-releases)
1. Bu klasördeki dosyaları deponun kök dizinine koyun (eski index.html'in yerine). Commit → Vercel otomatik yayınlar.
2. Alan adı zaten bağlı; DNS'e dokunmayın.

## Geri bildirim formu (Supabase)
1. `supabase.sql` dosyasını Supabase → SQL Editor'da çalıştırın.
2. Supabase → Settings → API: Project URL ve **anon public** key'i kopyalayın.
3. `index.html` içinde `<head>` başındaki satırı doldurun:
   `window.VT_SUPABASE_URL="https://xxxx.supabase.co";window.VT_SUPABASE_ANON_KEY="eyJ...";`
Anahtar boş kalırsa form "henüz bağlı değil" mesajı gösterir, site çalışmaya devam eder.
