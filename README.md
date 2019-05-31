# README

Please follow this steps to be able to run this project

Requirements:

* Ruby version: 2.6.2

* Rails version: 5.2.3

* Postgresql (optional**)

* Docker (optional**) 

Instantiate Application:

* run ` dokcer-compose up` or starting psql server.

* run `rails db:setup` in terminal (to create databasae, run migration and seeds).

* run ` rails s ` to start the rails server `puma`.

Test APIs:

#### <a name="post-job_posts"></a>POST /job_posts

```
# request
curl -X POST http://localhost:3000/job_posts
    -H 'Content-Type: application/json' \
    -d '{
           {
	            "job_post":
	
	             {
                  "title": "job_test",
                   "description":"Job description_test" ,
                   "company_name": "company_test",
                   "company_url": "http://company_test.com",
                    "job_type": "software development"
               }
            }
        }'
```

```
# response
HTTP/1.1 200 Ok
{
    "id": 1,
    "title": "job_test",
    "description": "Job description_test",
    "company_name": "company_test",
    "company_url": "http://company_test.com",
    "job_type": "software development",
    "date_posted": "2019-05-31T20:03:43.373Z"
}
```


#### <a name="get-job_posts"></a>GET /job_posts

```
# request
curl -X GET http://localhost:3000/job_posts
    -H 'Content-Type: application/json'
 
```

```
# response
HTTP/1.1 200 Ok
[{
    "id": 1,
    "title": "job_test",
    "description": "Job description_test",
    "company_name": "company_test",
    "company_url": "http://company_test.com",
    "job_type": "software development",
    "date_posted": "2019-05-31T20:03:43.373Z"
}
:
:]

```
#### <a name="get-job_posts"></a>GET /job_posts/:id

```
# request
curl -X GET http://localhost:3000/job_posts/1
    -H 'Content-Type: application/json'
 
```

```
# response
HTTP/1.1 200 Ok
{
    "id": 1,
    "title": "job_test",
    "description": "Job description_test",
    "company_name": "company_test",
    "company_url": "http://company_test.com",
    "job_type": "software development",
    "date_posted": "2019-05-31T20:03:43.373Z"
}

```
select job_posts through job_type filter, ex 'software' partial will select all "job_type": "software development".

#### <a name="get-job_posts"></a>GET /job_posts/?filter=""

```
# request
curl -X GET http://localhost:3000/job_posts/?filter=software
    -H 'Content-Type: application/json'
 
```
```
# response
HTTP/1.1 200 Ok
[
    {
        "id": 1,
        "title": "job1",
        "description": "Job description1",
        "company_name": "company1",
        "company_url": "http://company1.com",
        "job_type": "software development",
        "date_posted": "2019-05-31T18:32:29.366Z"
    },
    {
        "id": 12,
        "title": "job_test",
        "description": "Job description_test",
        "company_name": "company_test",
        "company_url": "http://company_test.com",
        "job_type": "software development",
        "date_posted": "2019-05-31T19:46:49.234Z"
    },
    {
        "id": 13,
        "title": "job_test",
        "description": "Job description_test",
        "company_name": "company_test",
        "company_url": "http://company_test.com",
        "job_type": "software development",
        "date_posted": "2019-05-31T20:03:43.373Z"
    }
]

```


using pagination, by default each page contain 7 posts.
pages start from zero
#### <a name="get-job_posts"></a>GET /job_posts/?page=<number>

```
# request
curl -X GET http://localhost:3000/job_posts/?page=1
    -H 'Content-Type: application/json'
 
```

```
# response
HTTP/1.1 200 Ok
[
    {
        "id": 8,
        "title": "job8",
        "description": "Job description8",
        "company_name": "company8",
        "company_url": "http://company8.com",
        "job_type": "data science",
        "date_posted": "2019-05-31T18:32:29.399Z"
    },
    {
        "id": 9,
        "title": "job9",
        "description": "Job description9",
        "company_name": "company9",
        "company_url": "http://company9.com",
        "job_type": "blockchain",
        "date_posted": "2019-05-31T18:32:29.403Z"
    },
    {
        "id": 10,
        "title": "job10",
        "description": "Job description10",
        "company_name": "company10",
        "company_url": "http://company10.com",
        "job_type": "product management",
        "date_posted": "2019-05-31T18:32:29.408Z"
    },
    {
        "id": 11,
        "title": "job11",
        "description": "Job description11",
        "company_name": "company11",
        "company_url": "http://company11.com",
        "job_type": "machine learning",
        "date_posted": "2019-05-31T18:32:29.413Z"
    },
    {
        "id": 12,
        "title": "job_test",
        "description": "Job description_test",
        "company_name": "company_test",
        "company_url": "http://company_test.com",
        "job_type": "software development",
        "date_posted": "2019-05-31T19:46:49.234Z"
    },
    {
        "id": 13,
        "title": "job_test",
        "description": "Job description_test",
        "company_name": "company_test",
        "company_url": "http://company_test.com",
        "job_type": "software development",
        "date_posted": "2019-05-31T20:03:43.373Z"
    }
]

```


** You must have one of this options, if you have a docker-compose then you have to run docker-compose up to start postgresql server. 
