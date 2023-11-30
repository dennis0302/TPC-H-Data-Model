select customer.C_CUSTKEY as customer_key,
	customer.C_NAME as customer_name,
	customer.C_ADDRESS as customer_address,
	customer.C_NATIONKEY as customer_nation_key,
    nation.N_NAME as customer_nation_name,
    nation.N_REGIONKEY as customer_region_key,
    region.R_NAME as customer_region_name,
	customer.C_PHONE as customer_phone,
	customer.C_ACCTBAL as customer_acctbal,
	customer.C_MKTSEGMENT as customer_mktsegment,
	customer.C_COMMENT as customer_comment
from {{ source('raw', 'TPCH_SF1_CUSTOMER') }} customer 
left join {{ source('raw', 'TPCH_SF1_NATION') }} nation
    on customer.C_NATIONKEY = nation.N_NATIONKEY
left join {{ source('raw', 'TPCH_SF1_REGION') }} region 
    on nation.N_REGIONKEY = region.R_REGIONKEY