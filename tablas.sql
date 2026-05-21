--Tabla de especialidades
create table specialties (
    id uuid primary key default gen_random_uuid(),
    name text not null unique,
    description text,
    created_at timestamp with time zone default now()
);

--Tabla de doctores
create table doctors (
    id uuid primary key default gen_random_uuid(),
    first_name text not null,
    last_name text not null,
    license_number text not null unique,
    phone text,
    email text unique,

    specialty_id uuid not null references specialties(id)
        on delete restrict,

    created_at timestamp with time zone default now()
);

--Tabla de pacientes
CREATE TABLE patients (
	id uuid primary key default gen_random_uuid(),
	full_name text not null,
	dni text not null unique,
	phone text,
	email text unique,
	birth_date date,
	address text,
	created_at timestamp with time zone default now()
);

--Tabla de citas
create table appointments (
    id uuid primary key default gen_random_uuid(),
    patient_id uuid not null references patients(id)
        on delete cascade,
    doctor_id uuid not null references doctors(id)
        on delete cascade,
    appointment_date timestamp with time zone not null,
    reason text not null,
    status text not null default 'pending',
    created_at timestamp with time zone default now(),
    constraint chk_status
    check (status in ('pending', 'attended', 'cancelled'))
);

