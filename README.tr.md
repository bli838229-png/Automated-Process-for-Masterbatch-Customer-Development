# Masterbatch Lead Gen 🎨 Yurtdışı Müşteri Bulma

**Masterbatch** sektörü için yurtdışı müşteri bulma amaçlı bir AI **Skill**'i. "Müşteri bul → değerlendir → teklif yaz → takip et" ihracat döngüsünü, yeniden kullanılabilir bir metodoloji + prompt kütüphanesine dönüştürür ve AI asistanınızı 7/24 çalışan bir dış ticaret ekibine çevirir.

> **Bu bir metodoloji + prompt + bilgi Skill'idir, uygulama değildir.** Skill destekleyen her AI asistanında (WorkBuddy, Claude, Cursor vb.) çalışır; asistanın yerleşik web araması, dosya okuma/yazma ve zamanlama yeteneklerini kullanır — backend, veritabanı veya masaüstü uygulaması gerekmez.

🌐 **Diller**: [English](README.md) · [简体中文](README.zh-CN.md) · [Tiếng Việt](README.vi.md) · [Türkçe](README.tr.md) · [Español](README.es.md)

## Kimler için?

Şu ürünlerin üreticileri:
- **Özel renk masterbatch**
- **Renk eşleştirme / numune** (fiziksel numune / Pantone / RAL)
- **Alev geciktirici masterbatch**

Hedef pazarlar: Güneydoğu Asya (Vietnam, Tayland, Endonezya), Orta Doğu (Türkiye, Suudi Arabistan), Latin Amerika (Brezilya, Meksika), Avrupa...

## Ne yapar?

Tam bir müşteri bulma döngüsü, "rol"ler olarak ifade edilir:

| Rol | Görev |
|---|---|
| 🎯 Pazar Araştırma | Ülke analizi, strateji, yerel dil anahtar kelimeleri |
| 🗺️ Harita Çekme | Google Places API ile ülkeye göre firma çekme |
| 🔍 Müşteri Bulma | Web aramasıyla yurtdışı firma keşfi |
| 📄 Web Sitesi Araştırma | Kamuya açık bilgi, e-posta, alıcı ipuçları çıkarma |
| ✍️ Teklif Yazma | Çok dilli e-posta / WhatsApp / LinkedIn metni |
| 🧮 Müşteri Değerlendirme | Puanlama ve sınıflandırma (A/B/C) |
| 👔 Genel Müdür | Özet, risk uyarısı, uyumluluk kontrolü |

```
① Pazar araştırma → ② Google Maps çekme → ③ Müşteri keşfi
  → ④ Web sitesi inceleme → ⑤ Puanlama → ⑥ Teklif taslağı
  → ⑦ Çok kanallı iletişim → ⑧ Takip & denetim
```

> **Pragmatik otomasyon**: AI tüm ağır işleri yapar (çekme, filtreleme, yazma, takip, denetim), ancak **giden gönderimler (e-posta/WhatsApp/LinkedIn) her zaman insan tarafından manuel yapılır** — böylece hesaplarınız platform yasaklarından korunur.

## Hızlı başlangıç

1. Skill'i **kurun** (bkz. [Kurulum](#kurulum)).
2. Tam bir döngü çalıştırın:

```
Vietnam için tam bir masterbatch müşteri bulma döngüsü çalıştır:
ürünler = özel renk masterbatch + alev geciktirici masterbatch.
1. Pazar araştırması (Vietnamca anahtar kelimeler)
2. 20 plastik işleme firması bul
3. Puanla ve sınıflandır
4. En iyi 5 firma için Vietnamca e-posta taslağı yaz
5. Sonuçları CSV dosyasına derle
```

## Kurulum

### WorkBuddy (önerilir)

```bash
git clone https://github.com/<your-org>/masterbatch-lead-gen.git
cp -r masterbatch-lead-gen ~/.workbuddy/skills/masterbatch-lead-gen
```

Ardından WorkBuddy'de şunu söyleyin: *"Vietnamlı müşteriler bulmak için masterbatch skill'ini kullan"*.

### Claude Desktop / Cursor / diğer asistanlar

`SKILL.md` ve `references/` klasörünü asistanınızın skills klasörüne kopyalayın veya `SKILL.md` içeriğini sohbete talimat olarak yapıştırın.

### Tek satır kurulum

```bash
curl -fsSL https://raw.githubusercontent.com/<your-org>/masterbatch-lead-gen/main/install.sh | bash
```

## Güvenlik (taviz verilemez)

- Şirket adı, URL, e-posta veya sertifika **asla uydurmayın**.
- **Giden gönderimler asla otomatikleştirilmez** — e-posta, WhatsApp ve LinkedIn insan tarafından gönderilir; AI yalnızca metin hazırlar.
- **Resmi olmayan WhatsApp otomasyonu / LinkedIn kazıma yok** (hesap yasağı).
- **Müşteri verileri yerelde kalır**, genel depoya commit edilmez.
- **Yerel dil önceliklidir**.

## Lisans

[MIT](LICENSE)
