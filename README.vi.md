# Masterbatch Lead Gen 🎨 Tìm kiếm khách hàng nước ngoài

Một **Skill** AI dành cho ngành **hạt màu (masterbatch)**, giúp tìm kiếm khách hàng nước ngoài. Nó biến vòng lặp bán hàng xuất khẩu "tìm khách → đánh giá → viết thư → theo dõi" thành một bộ phương pháp + thư viện prompt có thể tái sử dụng, biến trợ lý AI của bạn thành một đội ngũ ngoại thương 24/7.

> **Đây là Skill phương pháp + prompt + kiến thức, không phải ứng dụng.** Nó chạy trong mọi trợ lý AI hỗ trợ Skill (WorkBuddy, Claude, Cursor...), tận dụng khả năng tìm kiếm web, đọc/ghi file và lập lịch có sẵn — không cần backend, cơ sở dữ liệu hay ứng dụng desktop.

🌐 **Ngôn ngữ**: [English](README.md) · [简体中文](README.zh-CN.md) · [Tiếng Việt](README.vi.md) · [Türkçe](README.tr.md) · [Español](README.es.md)

## Dành cho ai?

Các nhà sản xuất:
- **Hạt màu masterbatch theo yêu cầu**
- **Phối màu / làm mẫu** (mẫu thật / Pantone / RAL)
- **Hạt masterbatch chống cháy**

Thị trường mục tiêu: Đông Nam Á (Việt Nam, Thái Lan, Indonesia), Trung Đông (Thổ Nhĩ Kỳ, Ả Rập Xê Út), Mỹ Latinh (Brazil, Mexico), châu Âu...

## Chức năng

Vòng lặp tìm kiếm khách hàng hoàn chỉnh, chia thành các "vai trò" Agent:

| Vai trò | Nhiệm vụ |
|---|---|
| 🎯 Nghiên cứu thị trường | Phân tích quốc gia, chiến lược, từ khóa ngôn ngữ địa phương |
| 🗺️ Lấy dữ liệu bản đồ | Lấy khách hàng theo quốc gia qua Google Places API |
| 🔍 Tìm khách hàng | Tìm doanh nghiệp nước ngoài qua tìm kiếm web |
| 📄 Nghiên cứu website | Trích xuất thông tin công khai, email, gợi ý người mua |
| ✍️ Soạn thư | Soạn email / WhatsApp / LinkedIn đa ngôn ngữ |
| 🧮 Đánh giá khách | Chấm điểm và phân loại (A/B/C) |
| 👔 Tổng giám đốc | Tổng hợp, cảnh báo rủi ro, kiểm tra tuân thủ |

```
① Nghiên cứu thị trường → ② Lấy dữ liệu Google Maps → ③ Tìm khách
  → ④ Nghiên cứu website → ⑤ Chấm điểm → ⑥ Soạn thư
  → ⑦ Tiếp cận đa kênh → ⑧ Theo dõi & kiểm tra
```

> **Tự động hóa thực dụng**: AI làm mọi việc nặng nhọc (thu thập, lọc, viết, theo dõi, kiểm tra), nhưng **việc gửi đi (email/WhatsApp/LinkedIn) luôn do con người thực hiện thủ công** — giúp tài khoản của bạn an toàn, không bị khóa.

## Bắt đầu nhanh

1. **Cài đặt** Skill (xem [Cài đặt](#cài-đặt)).
2. Chạy một vòng lặp đầy đủ:

```
Chạy một vòng tìm kiếm khách hàng masterbatch cho Việt Nam:
sản phẩm = hạt màu theo yêu cầu + hạt chống cháy.
1. Nghiên cứu thị trường (từ khóa tiếng Việt)
2. Tìm 20 doanh nghiệp nhựa
3. Chấm điểm và phân loại
4. Soạn email tiếng Việt cho 5 khách hàng tốt nhất
5. Tổng hợp thành file CSV
```

## Cài đặt

### WorkBuddy (khuyên dùng)

```bash
git clone https://github.com/<your-org>/masterbatch-lead-gen.git
cp -r masterbatch-lead-gen ~/.workbuddy/skills/masterbatch-lead-gen
```

Sau đó nói trong WorkBuddy: *"Dùng skill masterbatch để tìm khách hàng Việt Nam"*.

### Claude Desktop / Cursor / trợ lý khác

Sao chép `SKILL.md` và `references/` vào thư mục skills của trợ lý, hoặc dán nội dung `SKILL.md` vào cuộc hội thoại làm hướng dẫn.

### Script cài đặt một dòng

```bash
curl -fsSL https://raw.githubusercontent.com/<your-org>/masterbatch-lead-gen/main/install.sh | bash
```

## An toàn (không thể thương lượng)

- **Không bao giờ bịa đặt** tên công ty, URL, email, chứng nhận.
- **Không tự động gửi** — email, WhatsApp, LinkedIn do con người gửi; AI chỉ chuẩn bị nội dung.
- **Không dùng tự động hóa WhatsApp không chính thức / quét LinkedIn** (sẽ bị khóa tài khoản).
- **Dữ liệu khách hàng ở lại máy**, không commit lên kho công khai.
- **Ưu tiên ngôn ngữ địa phương**.

## Giấy phép

[MIT](LICENSE)
