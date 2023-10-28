100.times do |index|
  History.create(
    type_history: "download",
    title: "Tạo bản nháp thành công.",
    description: "Chúc bạn học thật tốt với file luyện viết này",
    account_id: 4,
    record_id: 1,
  )
end

level_names = ["n1", "n2", "n3", "n4", "n5", "hira", "kata"]
level_names.each do |item|
  LevelKanji.create(name: item)
end