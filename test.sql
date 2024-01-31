--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Debian 14.10-1.pgdg120+1)
-- Dumped by pg_dump version 14.9 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: da_chain_scan_infos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.da_chain_scan_infos (
    id bigint NOT NULL,
    scan_height bigint,
    scan_tx_seq bigint,
    total_data_size bigint,
    total_transactions bigint,
    total_storage_fee bigint,
    total_users bigint,
    transasctions_24 bigint,
    storage_fee_24 bigint,
    stored_datasize_24 bigint,
    pre_statis_height bigint,
    curr_statis_height bigint
);


ALTER TABLE public.da_chain_scan_infos OWNER TO postgres;

--
-- Name: da_chain_scan_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.da_chain_scan_infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.da_chain_scan_infos_id_seq OWNER TO postgres;

--
-- Name: da_chain_scan_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.da_chain_scan_infos_id_seq OWNED BY public.da_chain_scan_infos.id;


--
-- Name: data_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_models (
    id bigint NOT NULL,
    data_id text,
    nid text,
    data_in_namespace_index bigint,
    from_addr text,
    datahash text,
    agent_address text,
    data text,
    labels text,
    storage_fee bigint,
    txhash text,
    content_type text,
    "timestamp" bigint
);


ALTER TABLE public.data_models OWNER TO postgres;

--
-- Name: data_models_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.data_models_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_models_id_seq OWNER TO postgres;

--
-- Name: data_models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.data_models_id_seq OWNED BY public.data_models.id;


--
-- Name: invoice_modles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_modles (
    id bigint NOT NULL,
    tx_hash text,
    inv_hash text,
    invoice text,
    pre_image text,
    from_addr text,
    status text
);


ALTER TABLE public.invoice_modles OWNER TO postgres;

--
-- Name: invoice_modles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_modles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_modles_id_seq OWNER TO postgres;

--
-- Name: invoice_modles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_modles_id_seq OWNED BY public.invoice_modles.id;


--
-- Name: namespace_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.namespace_models (
    id bigint NOT NULL,
    nid text,
    name text,
    admins text,
    owner text,
    permission text,
    storage_fee bigint,
    available_height bigint,
    from_addr text,
    agent_address text,
    block_number bigint,
    create_time bigint,
    update_time bigint
);


ALTER TABLE public.namespace_models OWNER TO postgres;

--
-- Name: namespace_models_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.namespace_models_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.namespace_models_id_seq OWNER TO postgres;

--
-- Name: namespace_models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.namespace_models_id_seq OWNED BY public.namespace_models.id;


--
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    id bigint NOT NULL,
    tid text,
    block_number bigint,
    block_hash text,
    status text,
    content_type text,
    datasize bigint,
    daid text,
    nid text,
    from_addr text,
    agent_address text,
    nonce bigint,
    storage_fee bigint,
    raw_data text,
    method_name text,
    "timestamp" bigint,
    create_time bigint,
    update_time bigint
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transactions_id_seq OWNER TO postgres;

--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- Name: user_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_models (
    id bigint NOT NULL,
    from_addr text,
    admin_allowlist text,
    owner_allowlist text,
    total_size bigint
);


ALTER TABLE public.user_models OWNER TO postgres;

--
-- Name: user_models_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_models_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_models_id_seq OWNER TO postgres;

--
-- Name: user_models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_models_id_seq OWNED BY public.user_models.id;


--
-- Name: da_chain_scan_infos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.da_chain_scan_infos ALTER COLUMN id SET DEFAULT nextval('public.da_chain_scan_infos_id_seq'::regclass);


--
-- Name: data_models id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_models ALTER COLUMN id SET DEFAULT nextval('public.data_models_id_seq'::regclass);


--
-- Name: invoice_modles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_modles ALTER COLUMN id SET DEFAULT nextval('public.invoice_modles_id_seq'::regclass);


--
-- Name: namespace_models id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.namespace_models ALTER COLUMN id SET DEFAULT nextval('public.namespace_models_id_seq'::regclass);


--
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- Name: user_models id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_models ALTER COLUMN id SET DEFAULT nextval('public.user_models_id_seq'::regclass);


--
-- Data for Name: da_chain_scan_infos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.da_chain_scan_infos (id, scan_height, scan_tx_seq, total_data_size, total_transactions, total_storage_fee, total_users, transasctions_24, storage_fee_24, stored_datasize_24, pre_statis_height, curr_statis_height) FROM stdin;
1	7	0	8041	6	43520	3	0	0	0	0	0
\.


--
-- Data for Name: data_models; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data_models (id, data_id, nid, data_in_namespace_index, from_addr, datahash, agent_address, data, labels, storage_fee, txhash, content_type, "timestamp") FROM stdin;
1	0x90e44181960064932b60730b87aa3eb05abc1bf7cc5650ea572b0f3a00000000	0x00000000	1	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	3fab5cd6ae7ac1ae3f70776e16eb8e3b	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	7061636b616765206d61696e0a0a696d706f727420280a09226f73220a0a09226769746875622e636f6d2f5269656d614c6162732f6e756269742d636c692f636f6d6d616e6473220a290a0a66756e63206d61696e2829207b0a09636f6d6d616e64732e45786563757465286f732e417267735b313a5d290a7d0a	{"contentType":"text/plain","price":1000}	662	0x295ddd818eda14742375bd04489c6cfd5bb71c12e0b79a385ad1ce378e4d9398	text/plain	1706708152
2	0x5f442b283011416d49a85693fb3f392afcdb1fff9087177a2f99cad400000000	0x00000000	2	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	3fab5cd6ae7ac1ae3f70776e16eb8e3b	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	7061636b616765206d61696e0a0a696d706f727420280a09226f73220a0a09226769746875622e636f6d2f5269656d614c6162732f6e756269742d636c692f636f6d6d616e6473220a290a0a66756e63206d61696e2829207b0a09636f6d6d616e64732e45786563757465286f732e417267735b313a5d290a7d0a	{"contentType":"text/plain","price":1000}	662	0x5b334530ef3d68050cf48b1f52cbf645a96a31cfede88f73ca3448e73dee8923	text/plain	1706708163
3	0xf048774ad0b9ff25ffa2713b42157c83b3672bb18ae12378d2db853200000000	0x00000000	3	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	3fab5cd6ae7ac1ae3f70776e16eb8e3b	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	7061636b616765206d61696e0a0a696d706f727420280a09226f73220a0a09226769746875622e636f6d2f5269656d614c6162732f6e756269742d636c692f636f6d6d616e6473220a290a0a66756e63206d61696e2829207b0a09636f6d6d616e64732e45786563757465286f732e417267735b313a5d290a7d0a	{"contentType":"text/plain","price":1000}	662	0xeabb1f24b633a726cee58402bdd9024195c3fa02c08ab20cfae1fffe1a938452	text/plain	1706708176
4	0x320c32d2c668531673109c58b3b3fb473778657915f54aa6877cb4dd00000000	0x00000000	4	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	3fab5cd6ae7ac1ae3f70776e16eb8e3b	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	7061636b616765206d61696e0a0a696d706f727420280a09226f73220a0a09226769746875622e636f6d2f5269656d614c6162732f6e756269742d636c692f636f6d6d616e6473220a290a0a66756e63206d61696e2829207b0a09636f6d6d616e64732e45786563757465286f732e417267735b313a5d290a7d0a	{"contentType":"text/plain","price":1000}	662	0x52492be53c6a37a2a589a3ea255fbfffb6939eed66d081a41b3f3a33d354470c	text/plain	1706708559
\.


--
-- Data for Name: invoice_modles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_modles (id, tx_hash, inv_hash, invoice, pre_image, from_addr, status) FROM stdin;
1	0x10aa8896217d924df87c75cd6fb17d880cecae43c1c562984d3b850cc63a2caf	1439b0e8e9aa5362cd533be5df923915	lntb204380n1pjm5n9qpp5ujz40htz84x90ft4z4mt3f5jj27542cdn6p82qu33hrwjwczsmdsdzyxpur2dtyxpprwet9xyckvefnxccrzd3excexxdrp89rrz3fh8y6k2dphv56nyvekggcqcqzzsxqyz5vqsp5zayyq8kydwphd5umwlx987a8g0w3pcc7tt7xuu5zz3yh54d4sr2q9qyyssqhmjz5qjzvc4v8v6djq99fshg5y2zve7c73hjg2cygflv2xg92szzmg4kf6a3856pmae24qj0k4vqqzslp42mzsp6pjvaepxqhj7jqcgpqjqf9w	7269656d616c6162737269656d616c6162737269656d616c6162735f4b4d517a	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	InvoiceAccepted
5	0xacce0393f82046a261b9859f06d9a2ec156caf76d89206a235f432ab435c9f78	227aa599ab9cb63fd442f39069a7ce69	lntb6620n1pjm5njppp5vwa97dwq0v78ncpmt2a5yqss9tsse5vtqsz0e8r3rj2lshklt4dsdzyxpur2dtyxpprwet9xyckvefnxccrzd3excexxdrp89rrz3fh8y6k2dphv56nyvekggcqcqzzsxqyz5vqsp5tgx226jnf0xxnza7u93k82x54wqlwqcfr494hcpykwhml0dnnups9qyyssq3hnpfa4tgtqhe2r3eg8w0tvyzftj4kk0gk9zu3j6zpghvu3lk8fz27y0grwssdvfkg96z907ue3ue54hpyg3934nka6aasgj0k44h8gpg2w000	7269656d616c6162737269656d616c6162737269656d616c6162735f4f417057	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	InvoiceAccepted
2	0x05f86846cc31cc1c34ced720647335f84addf0cebfc45d0db65e958348e3299a	42e59744c1f38d07fc5e7c1b1c3c655d	lntb6620n1pjm5n9spp5pwv0kdyrkuap47z2afrvc36gs37pye6kh9dfhrcxcn6660ujyzzsdzyxpur2dtyxpprwet9xyckvefnxccrzd3excexxdrp89rrz3fh8y6k2dphv56nyvekggcqcqzzsxqyz5vqsp5sfheqr4apa4v6pyup8e53jj8vlvfk69tsaul893g99s8pg4g5qhq9qyyssqywujyct63fcjdugrsdvj8d95k623n9awlytf5hg97dtgecn58r7s96e7p58pzmvrpy0ujxca6zek6aukeepln4pdkc7dv2t3utewnggpjpykq0	7269656d616c6162737269656d616c6162737269656d616c6162735f73705a70	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	InvoiceAccepted
3	0x304252fd7b29035464b425ecb60f127d4b89c5734f799dd6c5e0345e67a2212b	ca8522e5d3c8d4b992fe27f79655dc6f	lntb6620n1pjm5n9upp557twc5qa3k8mv9d2ej6s7j2nc4srkkyafs2my2x0sl5j3mq92nusdzyxpur2dtyxpprwet9xyckvefnxccrzd3excexxdrp89rrz3fh8y6k2dphv56nyvekggcqcqzzsxqyz5vqsp5k56uyc8kap07mxyp3w7500drtlc79dpd9rsq40w77hhuwv50dd2q9qyyssq0fqv6m2u695ekm56pkvfqx8dju0hfqmmfph0j5r4nxcj82unrgyrlvvrr5flvsgycnytwk8h78afvukfpjfr77aclqn76w7yfcy9shgqfrx36a	7269656d616c6162737269656d616c6162737269656d616c6162735f68766a6d	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	InvoiceAccepted
4	0x2886efc2bded77b528ac80eacd762ef7996eb9960a67c8e86e66883ccf322105	763f522e92dffda909ad8bc354f421ac	lntb6620n1pjm5nxfpp5jrpjafap845rtdu0xxx00vlh5s4g98xvrkl7gka7tk3fphlrk66sdzyxpur2dtyxpprwet9xyckvefnxccrzd3excexxdrp89rrz3fh8y6k2dphv56nyvekggcqcqzzsxqyz5vqsp5ht74aprp0hg4y0wfcum3l2vpzetnezzxm8urhk27n6dhz32hzj5s9qyyssqru0fv7s9fqa2zuggj8au5j2x5q2sy4zs3e095vrj8nja8yt4yj9nr3frcqlmggrm64xat939m82r7n7hpqfzsjh7ag3knk0c38wuskspncfn3f	7269656d616c6162737269656d616c6162737269656d616c6162735f4358786e	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	InvoiceAccepted
6	0x37ad6b817fea57f898112016c90bb54940a2e5f3a8dad30f80c092aaf79055dd	e0bb8cfeb07e283a34de0a318231cca1	lntb204380n1pjm5nn8pp56a7vts44tv98re59y0yt9lzxprcqcyjqn0u9xfay9lk0ahjfhclsdzyxpur2dtyxpprwet9xyckvefnxccrzd3excexxdrp89rrz3fh8y6k2dphv56nyvekggcqcqzzsxqyz5vqsp55a83nl32f928cg73wyr03nhjg5nuqs35klz4lupr0dxs6pp44uys9qyyssqa4q267frwhrld5gjv9jqnkzdnqs55euu43vhlnc6pdm3f740m9vj07ypqu0uthhjyyqqkxs7pr6ta887tejya0jhump5pzqlczuectgp9j3hd5	7269656d616c6162737269656d616c6162737269656d616c6162735f66746359	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	InvoiceAccepted
\.


--
-- Data for Name: namespace_models; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.namespace_models (id, nid, name, admins, owner, permission, storage_fee, available_height, from_addr, agent_address, block_number, create_time, update_time) FROM stdin;
1	0x00000000	Public	["0xbb8227fc9e5716d12f4b4eea18ac2b188cf19851"]	0xbb8227fc9e5716d12f4b4eea18ac2b188cf19851	public	0	0	0xbb8227fc9e5716d12f4b4eea18ac2b188cf19851	0xbb8227fc9e5716d12f4b4eea18ac2b188cf19851	0	1706708108	0
2	0x00000001	babc	["0xbb8227fc9e5716d12f4b4eea18ac2b188cf19851","0xbb8227fc9e5716d12f4b4eea18ac2b188cf19871"]	0x55d0b7ee11fe36016962c4a9f1e795e47e5236b0	public	20436	1	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	1	1706708139	0
3	0x00000002	babc	["0xbb8227fc9e5716d12f4b4eea18ac2b188cf19851","0xbb8227fc9e5716d12f4b4eea18ac2b188cf19871"]	0x55d0b7ee11fe36016962c4a9f1e795e47e5236b0	public	20436	6	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	6	1706708591	0
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions (id, tid, block_number, block_hash, status, content_type, datasize, daid, nid, from_addr, agent_address, nonce, storage_fee, raw_data, method_name, "timestamp", create_time, update_time) FROM stdin;
1	0x1b5831ee491a7881507f034db46bd59018175470e9ac2ae85221939b8d4cd897	1	0x6f659dd2a125bf2727dd88137fb0dd7857ea17efb072c8370c62b5624661260a	Success	null	872		0x00000001	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	0	20436		CreateNamespace	1706708139	1706708139	0
2	0x295ddd818eda14742375bd04489c6cfd5bb71c12e0b79a385ad1ce378e4d9398	2	0xe615e96a7aa5a85c9228c66fd532332c68fd2940d0c63005189d63e99bb030a5	Success	text/plain	1124	0x90e44181960064932b60730b87aa3eb05abc1bf7cc5650ea572b0f3a00000000	0x00000000	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	1	662	7061636b616765206d61696e0a0a696d706f727420280a09226f73220a0a09226769746875622e636f6d2f5269656d614c6162732f6e756269742d636c692f636f6d6d616e6473220a290a0a66756e63206d61696e2829207b0a09636f6d6d616e64732e45786563757465286f732e417267735b313a5d290a7d0a	DataUpload	1706708152	1706708152	0
3	0x5b334530ef3d68050cf48b1f52cbf645a96a31cfede88f73ca3448e73dee8923	3	0x9eddba449c2baa713253723b1df8f7714d71e91fa17504f0c55fe14e1adf501d	Success	text/plain	1124	0x5f442b283011416d49a85693fb3f392afcdb1fff9087177a2f99cad400000000	0x00000000	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	2	662	7061636b616765206d61696e0a0a696d706f727420280a09226f73220a0a09226769746875622e636f6d2f5269656d614c6162732f6e756269742d636c692f636f6d6d616e6473220a290a0a66756e63206d61696e2829207b0a09636f6d6d616e64732e45786563757465286f732e417267735b313a5d290a7d0a	DataUpload	1706708163	1706708163	0
4	0xeabb1f24b633a726cee58402bdd9024195c3fa02c08ab20cfae1fffe1a938452	4	0x624a66d09eac4dcf364e3393d2b39a3a159f837d316879c2731d3edcf55f0d13	Success	text/plain	1124	0xf048774ad0b9ff25ffa2713b42157c83b3672bb18ae12378d2db853200000000	0x00000000	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	3	662	7061636b616765206d61696e0a0a696d706f727420280a09226f73220a0a09226769746875622e636f6d2f5269656d614c6162732f6e756269742d636c692f636f6d6d616e6473220a290a0a66756e63206d61696e2829207b0a09636f6d6d616e64732e45786563757465286f732e417267735b313a5d290a7d0a	DataUpload	1706708176	1706708177	0
5	0x52492be53c6a37a2a589a3ea255fbfffb6939eed66d081a41b3f3a33d354470c	5	0xa31c4e0b1a310fc126cd7a3c0d3f2ff9b8e5a9cffbfc7ad4cb37c6dc5195a567	Success	text/plain	1124	0x320c32d2c668531673109c58b3b3fb473778657915f54aa6877cb4dd00000000	0x00000000	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	4	662	7061636b616765206d61696e0a0a696d706f727420280a09226f73220a0a09226769746875622e636f6d2f5269656d614c6162732f6e756269742d636c692f636f6d6d616e6473220a290a0a66756e63206d61696e2829207b0a09636f6d6d616e64732e45786563757465286f732e417267735b313a5d290a7d0a	DataUpload	1706708559	1706708560	0
6	0x2032db34db1ddc39713f38ad4d25d60725ad82045bef07d549a387a888865922	6	0x11f4ea73adc824429b15a7862ec55e392855a5e26307c6a770c9eeebb3ae7d51	Success	null	872		0x00000002	0x55d0B7ee11fe36016962c4a9F1E795e47e5236B0	0xBB8227fc9E5716D12F4b4EEA18Ac2b188cF19851	5	20436		CreateNamespace	1706708591	1706708591	0
\.


--
-- Data for Name: user_models; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_models (id, from_addr, admin_allowlist, owner_allowlist, total_size) FROM stdin;
1	0xbb8227fc9e5716d12f4b4eea18ac2b188cf19851	{"0x00000000":true,"0x00000001":true,"0x00000002":true}	{"0x00000000":true}	0
2	0xbb8227fc9e5716d12f4b4eea18ac2b188cf19871	{"0x00000001":true,"0x00000002":true}	{}	0
3	0x55d0b7ee11fe36016962c4a9f1e795e47e5236b0	{}	{"0x00000001":true,"0x00000002":true}	0
\.


--
-- Name: da_chain_scan_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.da_chain_scan_infos_id_seq', 1, true);


--
-- Name: data_models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.data_models_id_seq', 4, true);


--
-- Name: invoice_modles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_modles_id_seq', 6, true);


--
-- Name: namespace_models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.namespace_models_id_seq', 3, true);


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactions_id_seq', 6, true);


--
-- Name: user_models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_models_id_seq', 3, true);


--
-- Name: da_chain_scan_infos da_chain_scan_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.da_chain_scan_infos
    ADD CONSTRAINT da_chain_scan_infos_pkey PRIMARY KEY (id);


--
-- Name: data_models data_models_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_models
    ADD CONSTRAINT data_models_pkey PRIMARY KEY (id);


--
-- Name: data_models idx_data_models_txhash; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_models
    ADD CONSTRAINT idx_data_models_txhash UNIQUE (txhash);


--
-- Name: namespace_models idx_namespace_models_nid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.namespace_models
    ADD CONSTRAINT idx_namespace_models_nid UNIQUE (nid);


--
-- Name: transactions idx_transactions_tid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT idx_transactions_tid UNIQUE (tid);


--
-- Name: invoice_modles invoice_modles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_modles
    ADD CONSTRAINT invoice_modles_pkey PRIMARY KEY (id);


--
-- Name: namespace_models namespace_models_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.namespace_models
    ADD CONSTRAINT namespace_models_pkey PRIMARY KEY (id);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- Name: user_models user_models_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_models
    ADD CONSTRAINT user_models_pkey PRIMARY KEY (id);


--
-- Name: idx_data_models_tx_hash; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_data_models_tx_hash ON public.data_models USING btree (txhash);


--
-- Name: idx_namespace_models_n_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_namespace_models_n_id ON public.namespace_models USING btree (nid);


--
-- Name: idx_transactions_transaction_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_transactions_transaction_id ON public.transactions USING btree (tid);


--
-- PostgreSQL database dump complete
--

