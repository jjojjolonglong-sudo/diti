-- diti 단어에 태그 칸 추가 (성격·장소·행동 등). 기존 데이터는 그대로, 빈 태그로 시작해요.
alter table diti_words add column if not exists tags text[] not null default '{}';
-- 확인: 태그 칸이 생겼는지
select count(1) as words, count(1) filter (where tags = '{}') as no_tag from diti_words;
