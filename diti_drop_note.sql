-- diti_words의 메모(note) 칸 삭제 (2026-11-09 확인: 내용이 적힌 단어 0개, diti·bkbk 화면에서도 뺌)
select count(1) as with_note from diti_words where coalesce(trim(note),'')<>'';
alter table diti_words drop column if exists note;
