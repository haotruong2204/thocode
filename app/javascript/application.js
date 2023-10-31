// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
Turbo.session.drive = false;

import "jquery";
import "controllers";

import "client/widgets.bundle";
import "client/widgets";
import "client/custom";
// import "kanjivg/kanjivg";
// import "kanjivg/kanjiviewer";
// import "kanjivg/KanjivgAnimate";

// A $( document ).ready() block.
$(document).ready(function () {
  $("#kt_radio_buttons_2_option_2").on("change", function () {
    $("#kanji-list").val("");
    $("#kanji-list").prop("readonly", true);
    var hira = `あ-い-う-え-お-か-き-く-け-こ-が-ぎ-ぐ-げ-ご-さ-し-す-せ-そ-ざ-じ-ず-ぜ-ぞ-た-ち-つ-て-と-だ-ぢ-づ-で-ど-な-に-ぬ-ね-の-は-ひ-ふ-へ-ほ-ば-び-ぶ-べ-ぼ-ぱ-ぴ-ぷ-ぺ-ぽ-ま-み-む-め-も-や-ゆ-よ-ら-り-る-れ-ろ-わ-を-ん`;
    $("#kanji-list").val(hira);
  });
  $("#kt_radio_buttons_2_option_3").on("change", function () {
    $("#kanji-list").val("");
    $("#kanji-list").prop("readonly", true);
    var kata = `ア-イ-ウ-エ-オ-カ-キ-ク-ケ-コ-ガ-ギ-グ-ゲ-ゴ-サ-シ-ス-セ-ソ-ザ-ジ-ズ-ゼ-ゾ-タ-チ-ツ-テ-ト-ダ-ヂ-ヅ-デ-ド-ナ-ニ-ヌ-ネ-ノ-ハ-ヒ-フ-ヘ-ホ-バ-ビ-ブ-べ-ボ-パ-ピ-プ-ペ-ポ-マ-ミ-ム-メ-モ-ヤ-ユ-ヨ-ラ-リ-ル-レ-ロ-ワ-ヲ-ン`;
    $("#kanji-list").val(kata);
  });
  $("#kt_radio_buttons_2_option_4").on("change", function () {
    $("#kanji-list").val("");
    $("#kanji-list").prop("readonly", true);
    var bo_thu = `一-〡-丶-丿-乙-亅-二-亠-人-儿-入-八-冂-冖-冫-几-凵-刀-力-勹-匕-匚-匸-十-卜-卩-厂-厶-又-口-囗-土-士-夂-夊-夕-大-女-子-宀-寸-小-尢-尸-屮-山-巛-工-己-巾-干-幺-广-廴-廾-弋-弓-彐-彡-彳-心-戈-戶-手-支-攴-文-斗-斤-方-无-日-曰-月-木-欠-止-歹-殳-毋-比-毛-氏-气-水-火-爪-父-爻-爿-片-牙-牛-犬-玄-玉-瓜-瓦-甘-生-用-田-疋-疒-癶-白-皮-皿-目-矛-矢-石-示-禸-禾-穴-立-竹-米-糸-缶-网-羊-羽-老-而-耒-耳-聿-肉-臣-自-至-臼-舌-舛-舟-艮-色-艸-虍-虫-血-行-衣-襾-見-角-言-谷-豆-豕-豸-貝-赤-走-足-身-車-辛-辰-辵-邑-酉-釆-里-金-長-門-阜-隶-隹-雨-青-非-面-革-韋-韭-音-頁-風-飛-食-首-香-馬-骨-高-髟-鬥-鬯-鬲-鬼-魚-鳥-鹵-鹿-麥-麻-黃-黍-黑-黹-黽-鼎-鼓-鼠-鼻-齊-齒-龍-龜-龠`;
    $("#kanji-list").val(bo_thu);
  });
  $("#kt_radio_buttons_2_option_5").on("change", function () {
    $("#kanji-list").val("");
    var n5 = ``;
    $("#kanji-list").val(n5);
  });
  $("#kt_radio_buttons_2_option_6").on("change", function () {
    $("#kanji-list").val("");
    var n4 = ``;
    $("#kanji-list").val(n4);
  });
  $("#kt_radio_buttons_2_option_7").on("change", function () {
    $("#kanji-list").val("");
    var n3 = ``;
    $("#kanji-list").val(n3);
  });
});

// Nhất-Cổn-Chủ-Phiệt-Ất-Quyết-Nhị-Đầu-Nhân-Nhân đi-Nhập-Bát-Quynh-Mịch-Băng-Kỷ-Khảm-Đao-Lực-Bao-Chủy-Phương-Hệ-Thập-Bốc-Tiết-Hán, Xưởng-Khư, tư-Hựu-Khẩu-Vi-Thổ-Sĩ-Trĩ-Truy-Tịch-Đại-Nữ-Tử-Miên-Thốn-Tiểu-Uông-Thi-Triệt-Sơn-Xuyên-Công-Kỷ-Cân-Can-Yêu-Nghiễm-Dẫn-Củng-Dặc-Cung-Kệ-Sam-Xích-Tâm-Qua-Hộ-Thủ-Chi-Phộc-Văn-Đẩu-Cân-Phương-Vô-Nhật-Viết-Nguyệt-Mộc-Khiếm-Chỉ-Đãi-Thù-Vô-Tỷ-Mao-Thị-Khí-3 chấm Thủy-4 chấm Hỏa-Trảo-Phụ-Hào-Tường-Phiến-Nha-Ngưu-Khuyển-Huyền-Ngọc-Qua-Ngõa-Cam-Sinh-Dụng-Điền-Thất-Nạch-Bát-Bạch-Bì-Mãnh-Mục-Mâu-Thỉ-Thạch-Kỳ-Nhựu-Hòa-Huyệt-Lập-Trúc-Mễ-Mịch-Phẫu-Võng-Dương-Vũ-Lão-Nhi-Lỗi-Nhĩ-Duật-Nhục-Thần-Tự-Chí-Cữu-Thiệt-Suyễn-Chu-Cấn-Sắc-Thảo (艹)-Hô-Trùng-Huyết-Hành-Y (衤)-Á-Kiến-Giác-Ngôn-Cốc-Đậu-Thỉ-Trãi-Bối (贝)-Xích-Tẩu (赱)-Túc-Thân-Xa (车)-Tân-Thần-sước (辶 )-ấp (阝)-Dậu-Biện-Lý-Kim-Trường (镸 , 长)-Môn (门)-Phụ (阝)-Đãi-Truy, chuy-Vũ-Thanh (靑)-Phi-Diện-Cách-Vi (韦)-Cửu-Âm-Hiệt-Phong-Phi-Thực-Thủ-Hương-Mã-Cốt-Cao-Tiêu-Đấu-Sưởng-Cách-Qủy-Ngư-Điểu-Lỗ-Lộc-Mạch-Ma-Hoàng-Thứ-Hắc-Chỉ-Mãnh-Đỉnh-Cổ-Thử-Tỵ-Tề-Xỉ-Long-Quy-Dược'
