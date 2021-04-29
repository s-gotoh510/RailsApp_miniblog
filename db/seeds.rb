# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Card.create(title: 'Ruby on Rails 超入門', author: '掌田津耶乃', price: 3200, publisher: '秀和システム', memo: 'Webアプリケーションをつくりたいすべての人へ。簡単なアプリからスタートして、効果的にステップアップ！')
Card.create(title: '他者と働く', author: '柏木明', price: 2800, publisher: '田舎出版', memo: '多様性の時代において、他者と働くとはどういうことか。考え方をアップデートしよう！')
Card.create(title: '遠い空の向こうへ', author: 'アトキンス・ジェンキンス', price: 5500, publisher: '英知書房', memo: 'ノーベル賞作家の最新作、田中浩三の解説付き。')