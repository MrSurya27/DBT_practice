{{ config(materialized='table') }}

with new_tt as (
    select BeneId,InscClaimAmtReimbursed,DeductibleAmtPaid,(InscClaimAmtReimbursed+DeductibleAmtPaid) AS Total
    from test_bene_1
)

select * from new_tt limit 5