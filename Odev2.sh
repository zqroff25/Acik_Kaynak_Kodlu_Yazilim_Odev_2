dosyaAdi="dosya_adinin_yeni_degeri"
yetkiKodu="yetki_kodunun_yeni_degeri"

echo "Iznini degistirmek istediginiz dosya adini giriniz : "
read dosyaAdi
echo "Yetkilendirme kodunu giriniz : "
read yetkiKodu

# Dosyanın var olup olmadığını kontrol et
if [ -f "$dosyaAdi" ]; then
    # Dosyanın yetkilerini güncelle
    chmod "$yetkiKodu" "$dosyaAdi"
    echo "$dosyaAdi adli dosyanin yetkileri degistirildi"
else
    echo "Adini girdiginiz dosya bulunamadi!"
fi
