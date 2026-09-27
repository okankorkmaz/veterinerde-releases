-- Supabase SQL Editor'da çalıştırın
create table if not exists public.feedback (
  id bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  type text not null check (type in ('bug','idea','other')),
  title text not null check (char_length(title) <= 120),
  body text not null check (char_length(body) <= 4000),
  email text,
  source text default 'landing'
);
alter table public.feedback enable row level security;
-- Anonim ziyaretçi yalnızca ekleyebilir, okuyamaz.
create policy "anon insert" on public.feedback for insert to anon with check (true);
