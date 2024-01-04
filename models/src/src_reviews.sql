with raw_reviews as (

select * from from {{ source('airbnb', 'reviews') }}

)

select
    date as review_date,
     REVIEWER_NAME,
    comments as review_txt,
    sentiment as review_sentiment
from raw_reviews