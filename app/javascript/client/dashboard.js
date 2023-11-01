"use strict";
var ready = (callback) => {
  if (document.readyState != "loading") callback();
  else document.addEventListener("DOMContentLoaded", callback);
};

ready(() => {
  if (document.getElementById("kt_radio_buttons_2_option_2")) {
    document.getElementById("kt_radio_buttons_2_option_2").onchange =
      function () {
        document.getElementById("kanji-list").value = "";
        document.getElementById("kanji-list").setAttribute("readonly", true);
        let hira = `あ-い-う-え-お-か-き-く-け-こ-が-ぎ-ぐ-げ-ご-さ-し-す-せ-そ-ざ-じ-ず-ぜ-ぞ-た-ち-つ-て-と-だ-ぢ-づ-で-ど-な-に-ぬ-ね-の-は-ひ-ふ-へ-ほ-ば-び-ぶ-べ-ぼ-ぱ-ぴ-ぷ-ぺ-ぽ-ま-み-む-め-も-や-ゆ-よ-ら-り-る-れ-ろ-わ-を-ん`;
        document.getElementById("kanji-list").value = hira;
      };
  }

  if (document.getElementById("kt_radio_buttons_2_option_3")) {
    document.getElementById("kt_radio_buttons_2_option_3").onchange =
      function () {
        document.getElementById("kanji-list").value = "";
        document.getElementById("kanji-list").setAttribute("readonly", true);
        let kata = `ア-イ-ウ-エ-オ-カ-キ-ク-ケ-コ-ガ-ギ-グ-ゲ-ゴ-サ-シ-ス-セ-ソ-ザ-ジ-ズ-ゼ-ゾ-タ-チ-ツ-テ-ト-ダ-ヂ-ヅ-デ-ド-ナ-ニ-ヌ-ネ-ノ-ハ-ヒ-フ-ヘ-ホ-バ-ビ-ブ-べ-ボ-パ-ピ-プ-ペ-ポ-マ-ミ-ム-メ-モ-ヤ-ユ-ヨ-ラ-リ-ル-レ-ロ-ワ-ヲ-ン`;
        document.getElementById("kanji-list").value = kata;
      };
  }
  if (document.getElementById("kt_radio_buttons_2_option_4")) {
    document.getElementById("kt_radio_buttons_2_option_4").onchange =
      function () {
        document.getElementById("kanji-list").value = "";
        document.getElementById("kanji-list").setAttribute("readonly", true);
        let bo_thu = `一-〡-丶-丿-乙-亅-二-亠-人-儿-入-八-冂-冖-冫-几-凵-刀-力-勹-匕-匚-匸-十-卜-卩-厂-厶-又-口-囗-土-士-夂-夊-夕-大-女-子-宀-寸-小-尢-尸-屮-山-巛-工-己-巾-干-幺-广-廴-廾-弋-弓-彐-彡-彳-心-戈-戶-手-支-攴-文-斗-斤-方-无-日-曰-月-木-欠-止-歹-殳-毋-比-毛-氏-气-水-火-爪-父-爻-爿-片-牙-牛-犬-玄-玉-瓜-瓦-甘-生-用-田-疋-疒-癶-白-皮-皿-目-矛-矢-石-示-禸-禾-穴-立-竹-米-糸-缶-网-羊-羽-老-而-耒-耳-聿-肉-臣-自-至-臼-舌-舛-舟-艮-色-艸-虍-虫-血-行-衣-襾-見-角-言-谷-豆-豕-豸-貝-赤-走-足-身-車-辛-辰-辵-邑-酉-釆-里-金-長-門-阜-隶-隹-雨-青-非-面-革-韋-韭-音-頁-風-飛-食-首-香-馬-骨-高-髟-鬥-鬯-鬲-鬼-魚-鳥-鹵-鹿-麥-麻-黃-黍-黑-黹-黽-鼎-鼓-鼠-鼻-齊-齒-龍-龜-龠`;
        document.getElementById("kanji-list").value = bo_thu;
      };
  }
  if (document.getElementById("kt_radio_buttons_2_option_5")) {
    document.getElementById("kt_radio_buttons_2_option_5").onchange =
      function () {
        document.getElementById("kanji-list").value = "";
        let n5 = ``;
        document.getElementById("kanji-list").value = n5;
      };
  }

  if (document.getElementById("kt_radio_buttons_2_option_6")) {
    document.getElementById("kt_radio_buttons_2_option_6").onchange =
      function () {
        document.getElementById("kanji-list").value = "";
        let n4 = ``;
        document.getElementById("kanji-list").value = n4;
      };
  }

  if (document.getElementById("kt_radio_buttons_2_option_7")) {
    document.getElementById("kt_radio_buttons_2_option_7").onchange =
      function () {
        document.getElementById("kanji-list").value = "";
        let n3 = ``;
        document.getElementById("kanji-list").value = n3;
      };
  }
});
