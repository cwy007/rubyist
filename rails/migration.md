### precision 10, scale 2
▪ precision修饰符:定义decimal字段的精度，表示数字的总位数。
▪ scale修饰符:定义decimal字段的标度，表示小数点后的位数。

xxx.yy
小数点前面的数字位数小于等于 8 位，小数点后面的数字位数小于等于 2 位

DETAIL:  A field with precision 10, scale 2 must round to an absolute value less than 10^8.


```bash
f = Finance.first

[15] pry(main)> f.operating_income = ('5'*10).to_i
=> 5555555555
[16] pry(main)> f.save
[2019-01-07T15:49:26] DEBUG ActiveRecord::Base :    (0.3ms)  BEGIN
[2019-01-07T15:49:26] DEBUG ActiveRecord::Base :   SQL (1.2ms)  UPDATE "finances" SET "operating_income" = $1, "operating_cost" = $2, "business_tax" = $3, "updated_at" = $4 WHERE "finances"."id" = $5  [["operating_income", "5555555555.0"], ["operating_cost", "0.0"], ["business_tax", "0.0"], ["updated_at", "2019-01-07 15:49:00.275449"], ["id", 2]]
[2019-01-07T15:49:26] DEBUG ActiveRecord::Base :    (0.2ms)  ROLLBACK
ActiveRecord::RangeError: PG::NumericValueOutOfRange: ERROR:  numeric field overflow
DETAIL:  A field with precision 10, scale 2 must round to an absolute value less than 10^8.
: UPDATE "finances" SET "operating_income" = $1, "operating_cost" = $2, "business_tax" = $3, "updated_at" = $4 WHERE "finances"."id" = $5
from /Users/chanweiyan/.rvm/gems/ruby-2.5.0/gems/activerecord-5.1.6/lib/active_record/connection_adapters/postgresql_adapter.rb:616:in `async_exec'
[17] pry(main)>

```