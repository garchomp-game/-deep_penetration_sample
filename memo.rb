total={
keitai:30000,　#携帯代。なおだいぶ多く見積もってる。いつもは25000
acom:5000,　#借金返済
komati:8000, #コワーキングスペース
sonota:20000,　#その他。文字通りその他の出費の想定額
}
hoge=0
total.each do|k,v|
  hoge+=v
end
puts hoge