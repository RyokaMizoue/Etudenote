class SalesController < ApplicationController
  def index
      # (...データベースからのデータ取得処理...)
      # ダミーのデータを用意
      months = [ 4, 5, 6, 7, 8, 9 ]
      product_A_sales = [ 1_000_000, 1_200_000, 1_300_000,
        1_400_000, 1_200_000, 1_100_000 ]
      product_B_sales = [   300_000,   500_000,   750_000,
        1_150_000, 1_350_000, 1_600_000 ] 
      # グラフ（チャート）を作成 
      @chart = LazyHighCharts::HighChart.new("graph") do |c|
        c.title(text: "4-9月売上")
        c.xAxis(categories: months)
        c.series(name: "A", data: product_A_sales)
        c.series(name: "B", data: product_B_sales)
      end
  end
end
