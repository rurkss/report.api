SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;


COPY settlements (id, type, koatuu, region_id, district_id, parent_settlement_id, name, inserted_at, updated_at, mountain_group) FROM stdin;
bdea6f22-1c30-4df0-9064-49cb1d0eb63e	TOWNSHIP	1413567000	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	8967a9b0-50c7-4110-99c9-bb7cf4036ee9	ЛІСНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
a0cfeafb-ec50-4155-8fd8-1ad19264004b	TOWNSHIP	7425556000	d5c669ff-0af8-4dd3-b683-b7d405b071b2	f043a94c-0a29-4229-9701-82e2379b6541	\N	СЕДНІВ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
24d54000-3071-402e-83b6-81a8c5e29b97	TOWNSHIP	7424456000	d5c669ff-0af8-4dd3-b683-b7d405b071b2	ee54be2c-6aa5-40a3-bb9f-1f65a1b0c392	\N	ЛЮБЕЧ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
84e75986-7779-43b0-9ec6-e92046ef4767	TOWNSHIP	6520956000	6f985e33-182f-4aa2-acfc-8bf34702bb85	32a52993-b257-41ba-8f69-02ef18d06203	\N	КАР'ЄРНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
d75c9ecb-bb3e-45bc-9251-e54e0c40fe36	TOWNSHIP	6325157000	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	093f7028-7b4c-463f-a882-18547c627015	\N	КОРОТИЧ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
1a8f88c2-8820-482c-92cd-476d7bb687f5	CITY	6325111000	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	093f7028-7b4c-463f-a882-18547c627015	\N	ПІВДЕННЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
874a1791-28b8-4f66-a20f-58d19a0a37c8	TOWNSHIP	6322057000	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	60ec1b6c-7af4-45b9-8031-310ec5cd6bbd	\N	ПРУДЯНКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
3c105d8f-f098-4f65-815f-7ec486eada28	TOWNSHIP	6321256000	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	1e3aad46-3bce-40fa-9f4c-0b80cc267200	\N	СТАРИЙ МЕРЧИК	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
0725fe88-84c0-4e51-ab61-89ef9193cc32	TOWNSHIP	6320256000	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	a1a3e441-909a-4e30-a3f4-0f8951d374b7	\N	ДОНЕЦЬ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
fb5e6f07-0c2d-4c5c-8bc5-f0b86bb94494	CITY	6312000000	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	\N	\N	ЧУГУЇВ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
2f02d0e7-e67f-4d23-a52e-36a23b5526f5	CITY	6311000000	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	\N	\N	ЛОЗОВА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
ee1ef9b3-b9fa-4a0c-a90d-7376bd3950dd	CITY	6121611000	d19e3326-407e-4323-a5a3-e43f574d63cc	0d940304-0575-41f6-8bd4-3943633bf85e	\N	ХОРОСТКІВ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
361df236-55b1-418f-8964-da52cda9875a	CITY	5911000000	23b8090d-9efa-4431-b63a-3f45559eee2c	\N	\N	ШОСТКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
cb2f323d-2cc6-4b26-8879-19701938fe01	TOWNSHIP	4422257000	616f1acc-7a4e-4d03-9a03-5ab3e372578f	1e6d07d7-8d15-4c6f-b4b6-848f9540cafa	\N	ЧЕЛЮСКІНЕЦЬ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
1bc81b5f-4e04-4e86-9017-c7af515c21f8	TOWNSHIP	4421456000	616f1acc-7a4e-4d03-9a03-5ab3e372578f	3095650a-98e0-4ac6-9883-8b529439681d	\N	НОВООЛЕКСАНДРІВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
34d25245-d2b7-47e5-94cc-f7c25f03e02d	CITY	4411000000	616f1acc-7a4e-4d03-9a03-5ab3e372578f	\N	\N	ГОЛУБІВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
927be124-9231-4125-833f-36b1433a197a	CITY	3211000000	c0607c50-2dde-4c79-8ec9-696836a99a18	\N	\N	ПЕРЕЯСЛАВ-ХМЕЛЬНИЦЬКИЙ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
2a1c3059-14a4-439d-83f6-42b47e1eea71	CITY	2611000000	4fc7d2f2-c61a-4533-a1a9-62480c80e263	\N	\N	ЯРЕМЧЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
32f123f9-24b6-4cec-a38d-67a13b2c6482	CITY	2111000000	9ff97849-ea3b-449a-9a2d-f7de4c3e9559	\N	\N	ЧОП	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
072ec349-4326-4d64-96c9-108de4412c1c	TOWNSHIP	1824456000	0cbaccf9-77e2-48a4-94d3-ad3737140476	55350050-3ea0-44d9-8c96-dabdb7d87f26	\N	НОВООЗЕРЯНКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
4ee840e0-868a-4554-ab2f-516a6e73aebe	TOWNSHIP	1822856000	0cbaccf9-77e2-48a4-94d3-ad3737140476	bb671f3d-46ef-4f60-9047-718764040167	\N	МИРОЛЮБІВ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
8c95cb72-fe5f-4570-b7c2-6b761f099b3d	TOWNSHIP	1821756000	0cbaccf9-77e2-48a4-94d3-ad3737140476	cc931abf-cb7a-4f8f-b899-61f4a0b06ebb	\N	ЯБЛУНЕЦЬ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
6c651470-ec8e-43b7-b595-55c784662a4c	TOWNSHIP	1820656000	0cbaccf9-77e2-48a4-94d3-ad3737140476	75acce1f-e7b8-41e2-8a42-21bf7e1ef286	\N	ПЕРШОТРАВЕНСЬК	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
45e1affb-0234-41c0-adb8-650cd892bb41	CITY	1811000000	0cbaccf9-77e2-48a4-94d3-ad3737140476	\N	\N	НОВОГРАД-ВОЛИНСЬКИЙ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
91db82c8-3a94-40ce-88b8-84a6abbb7910	TOWNSHIP	1423056000	27b0197d-f470-4b2c-af27-4d82e953db9d	d0d7d2e1-3f69-4265-8816-ebaad9c0e7a6	\N	НОВОСЕЛІВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
f4d8c965-9679-45f3-9ebc-1e48663769aa	TOWNSHIP	1420956000	27b0197d-f470-4b2c-af27-4d82e953db9d	bb4a4263-c415-4abc-879c-f1ddc9cb941d	\N	ОЛЬХОВАТКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
26d725d5-9e68-446a-ae4a-3c1e52eca15e	CITY	1420911000	27b0197d-f470-4b2c-af27-4d82e953db9d	bb4a4263-c415-4abc-879c-f1ddc9cb941d	\N	ЧАСІВ ЯР	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
044d1119-4d21-461d-ae70-1678463089f7	CITY	1415000000	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ХАРЦИЗЬК	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
240dd1b2-d719-437f-93f2-96791ee48025	CITY	1412000000	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ЄНАКІЄВЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
6ed4924d-6092-41df-9117-af645821750c	CITY	1221411000	45311788-3735-4ccf-884c-409c089f3a45	b9c32aa4-deb8-4823-aa63-b8e4c9740413	\N	ПІДГОРОДНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
d7e5debc-33dd-4101-bcd8-8c02506bfb47	CITY	1213000000	45311788-3735-4ccf-884c-409c089f3a45	\N	\N	СИНЕЛЬНИКОВЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
c0094697-555a-4ac3-8914-d3f97e07e53b	CITY	1211000000	45311788-3735-4ccf-884c-409c089f3a45	\N	\N	КРИВИЙ РІГ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
2b62f9e6-2a11-46fc-84c6-f1be51b30d22	CITY	2311000000	00eb9de4-508d-4219-bfc8-496238570dfd	\N	\N	ТОКМАК	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
856f8596-09c8-4c6b-b0ca-3ded4e9c1e71	SETTLEMENT	1412046503	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	СТАРОПЕТРІВСЬКЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
8952277e-4b90-47cb-b5d1-0ed4ac48a2d8	VILLAGE	1412046501	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	НОВОСЕЛІВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
31574047-f6dd-4f79-b3ba-85b005cc6eb1	VILLAGE	1415070505	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ЦУПКИ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
0dde1fe3-6903-402d-b57c-f63b7bbc61b0	SETTLEMENT	1415070501	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ВОДОБУД	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
7cec8456-9949-4b74-9265-16aeff043072	CITY	1415070800	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ІЛОВАЙСЬК	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
ee00ed4a-f050-4b42-96a5-283c87a8c3b3	CITY	1415070500	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ЗУГРЕС	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
6c5fb661-b54d-46b9-8b07-17e59ada35aa	TOWNSHIP	1415047800	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ШИРОКЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
2cb784d8-3381-4f3f-a1b6-aa27fec38446	TOWNSHIP	1415047500	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ШАХТНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
8a552983-faf2-41e9-838a-4a5eb95e20d5	TOWNSHIP	1415047200	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ТРОЇЦЬКО-ХАРЦИЗЬК	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
55d63356-0ac0-43bc-9bd9-27ea471ad6ee	TOWNSHIP	1415046800	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ПОКРОВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
d87744e0-ae7f-4d23-bd04-0c06c4e5a3ff	TOWNSHIP	1415046500	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	МИКОЛАЇВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
0b6e36ef-1d1c-4f10-9079-e2d71aba3f30	TOWNSHIP	1415046200	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ЗУЇВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
6943c6e3-af42-47be-8c7b-78ff71f1537c	VILLAGE	1221411001	45311788-3735-4ccf-884c-409c089f3a45	b9c32aa4-deb8-4823-aa63-b8e4c9740413	\N	ПЕРЕМОГА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
e8bb1b4b-c7af-4d9c-8ac7-5ca58c7649d0	CITY	1412070700	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	БУНГЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
0495a601-52e4-4f7e-96c4-74daffcb8f2f	TOWNSHIP	1412046800	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	КОРСУНЬ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
1a5244a2-49ca-4561-827a-e635494196e4	TOWNSHIP	1412046500	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	СОФІЇВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
1ce14471-f6d8-4987-a913-bcfcb0e00710	VILLAGE	6311045401	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	\N	\N	ХЛІБНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
d6b8d1c3-c353-40c1-b3f6-2718aff2cddc	SETTLEMENT	1420956009	27b0197d-f470-4b2c-af27-4d82e953db9d	bb4a4263-c415-4abc-879c-f1ddc9cb941d	\N	РІДКОДУБ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
c8ca4679-1dc4-43b6-9e3b-9a288a1c15c2	SETTLEMENT	1420956007	27b0197d-f470-4b2c-af27-4d82e953db9d	bb4a4263-c415-4abc-879c-f1ddc9cb941d	\N	КАМ'ЯНКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
b765deaf-ef74-4e88-854f-36261b4202de	SETTLEMENT	1420956005	27b0197d-f470-4b2c-af27-4d82e953db9d	bb4a4263-c415-4abc-879c-f1ddc9cb941d	\N	ІЛЛІНКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
39be62a5-32f5-4f8f-8f7e-31d7fda4444a	SETTLEMENT	1420956003	27b0197d-f470-4b2c-af27-4d82e953db9d	bb4a4263-c415-4abc-879c-f1ddc9cb941d	\N	ДАНИЛОВЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
dd68b1c7-396b-48a0-a749-1826919e92b6	VILLAGE	1420956001	27b0197d-f470-4b2c-af27-4d82e953db9d	bb4a4263-c415-4abc-879c-f1ddc9cb941d	\N	ВЕСЕЛА ДОЛИНА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
220c7832-e87a-4004-82b6-8dfd88007a50	VILLAGE	1824456002	0cbaccf9-77e2-48a4-94d3-ad3737140476	55350050-3ea0-44d9-8c96-dabdb7d87f26	\N	РУДНЯ ОЗЕРЯНСЬКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
40ca8200-dc25-4e24-b26f-273661acb2c4	VILLAGE	1824456001	0cbaccf9-77e2-48a4-94d3-ad3737140476	55350050-3ea0-44d9-8c96-dabdb7d87f26	\N	ОЗЕРЯНИ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
e8f18d60-ab72-415f-a0c8-6010a61f6849	VILLAGE	1415047201	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ПІВЧЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
66c3a5ae-ff8e-4353-8889-aa10b0e2c7bf	VILLAGE	6311090103	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	\N	\N	УКРАЇНСЬКЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
4491c020-6a18-434f-8828-a6c10253f6bf	VILLAGE	6311090101	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	\N	\N	ДОМАХА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
489a18fd-845d-49f4-9275-64eba0d2fdaf	VILLAGE	6320256004	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	a1a3e441-909a-4e30-a3f4-0f8951d374b7	\N	ЧЕРВОНА ГІРКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
35b20850-f9d0-4745-bc64-24ba1d86fd7c	VILLAGE	6320256003	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	a1a3e441-909a-4e30-a3f4-0f8951d374b7	\N	ПРОГРЕС	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
19d8b82a-d333-4150-a1db-572eafdc2000	VILLAGE	6320256002	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	a1a3e441-909a-4e30-a3f4-0f8951d374b7	\N	КОПАНКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
281d16a2-e513-4b4f-917b-806d9ad4faa3	VILLAGE	6320256001	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	a1a3e441-909a-4e30-a3f4-0f8951d374b7	\N	ДАЛЬНЯ ШЕБЕЛИНКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
6afe6f07-307c-4aed-91a3-56edabb1aa56	VILLAGE	1415070803	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ТРЕТЯКИ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
a9457073-def7-4726-86cc-7ad4bd40793b	SETTLEMENT	1415070801	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ВИНОГРАДНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
b43d9f1f-0395-4a7a-8793-27d50f261d6a	TOWNSHIP	1412045900	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ДРУЖНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
7fbea9dd-e2ab-4af1-9108-4a889c0ba275	VILLAGE	6322057002	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	60ec1b6c-7af4-45b9-8031-310ec5cd6bbd	\N	ШАПОВАЛІВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
88b53bd1-4590-4556-81da-ca875fa80ec1	VILLAGE	6322057001	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	60ec1b6c-7af4-45b9-8031-310ec5cd6bbd	\N	ЦУПІВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
3e0f5bb2-708b-4510-8c5d-1d5fe484106e	SETTLEMENT	1412046809	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ЩЕБЕНКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
bd11d96f-af66-4109-b6d5-47f293e61254	VILLAGE	1412046807	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ШЕВЧЕНКО	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
9bfbc407-0bd9-45d1-b2d4-6464324ce9fb	VILLAGE	1412046805	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ПУТЕПРОВІД	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
11906f20-bb88-4353-b69a-2a49481be3ed	VILLAGE	1412046803	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	КРИНИЧКИ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
6d8af521-784b-4d1e-941c-07e06412a89d	VILLAGE	1412046801	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ВЕРХНЯ КРИНКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
30d241bd-6c4e-47bb-804f-b7691c53026c	VILLAGE	6121611001	d19e3326-407e-4323-a5a3-e43f574d63cc	0d940304-0575-41f6-8bd4-3943633bf85e	\N	КАРАШИНЦІ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
e384831e-93cd-4363-9c84-6ea3b00921ab	VILLAGE	4421456001	616f1acc-7a4e-4d03-9a03-5ab3e372578f	3095650a-98e0-4ac6-9883-8b529439681d	\N	ДУБІВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
fadbf811-ff3b-4c9d-9baa-4a3b69052df0	VILLAGE	6325157002	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	093f7028-7b4c-463f-a882-18547c627015	\N	СТАРА МОСКОВКА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
fd577c94-c565-4fc9-94b0-86213d10a64c	SETTLEMENT	6325157001	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	093f7028-7b4c-463f-a882-18547c627015	\N	НОВИЙ КОРОТИЧ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
2f48a0cf-c5fd-4be1-b315-d9210fbdb191	SETTLEMENT	6321256005	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	1e3aad46-3bce-40fa-9f4c-0b80cc267200	\N	ПРИВОКЗАЛЬНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
4607634a-9a34-4d0e-a2a5-074334b0de81	VILLAGE	6321256004	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	1e3aad46-3bce-40fa-9f4c-0b80cc267200	\N	МІЧУРІНСЬКЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
73b1184a-0bc5-4775-b046-e96069c5cb7f	VILLAGE	6321256003	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	1e3aad46-3bce-40fa-9f4c-0b80cc267200	\N	ЗОЛОЧІВСЬКЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
6e18e611-99a5-452f-9dbf-ad0b77d67c8d	VILLAGE	6321256002	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	1e3aad46-3bce-40fa-9f4c-0b80cc267200	\N	ДОБРОПІЛЛЯ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
3aa7c708-3da6-424d-82ca-cf171f4e0c19	SETTLEMENT	6321256001	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	1e3aad46-3bce-40fa-9f4c-0b80cc267200	\N	ГАЗОВЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
34a3165c-8d56-40b8-940c-708a9e9e4101	VILLAGE	2611093003	4fc7d2f2-c61a-4533-a1a9-62480c80e263	\N	\N	ВОРОНЕНКО	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
b5b29071-fbc7-4206-87ee-125e84d98260	VILLAGE	2611093001	4fc7d2f2-c61a-4533-a1a9-62480c80e263	\N	\N	ЯБЛУНИЦЯ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
a0aa5a88-53ae-43e9-b34e-cc2477fa2bc2	VILLAGE	2611092001	4fc7d2f2-c61a-4533-a1a9-62480c80e263	\N	\N	ПОЛЯНИЦЯ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
c6f3cc92-fc52-454b-90bf-2a5a53a7fcf1	VILLAGE	2611091501	4fc7d2f2-c61a-4533-a1a9-62480c80e263	\N	\N	МИКУЛИЧИН	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
24f13707-c916-443e-828a-982cbcd2a572	VILLAGE	2611091201	4fc7d2f2-c61a-4533-a1a9-62480c80e263	\N	\N	ТАТАРІВ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
239177d4-e650-4036-a96d-b612ee4f6f1f	TOWNSHIP	2611040300	4fc7d2f2-c61a-4533-a1a9-62480c80e263	\N	\N	ВОРОХТА	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
8e94d0cf-375d-4040-8fa1-346942fd94a9	SETTLEMENT	7425556001	d5c669ff-0af8-4dd3-b683-b7d405b071b2	f043a94c-0a29-4229-9701-82e2379b6541	\N	НОВЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
33d9a0f5-41bb-48f8-bbef-5bf5e1bce99c	TOWNSHIP	6311045400	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	\N	\N	ПАНЮТИНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
5647f958-9293-4cdf-bfa8-af239d96cc92	TOWNSHIP	4411045700	616f1acc-7a4e-4d03-9a03-5ab3e372578f	\N	\N	КРИНИЧАНСЬКЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
0fbd8b7a-9c07-4ea5-80d0-45a2f6c78424	TOWNSHIP	4411045300	616f1acc-7a4e-4d03-9a03-5ab3e372578f	\N	\N	ДОНЕЦЬКИЙ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
d469b77d-2b44-4051-bcfd-b4a7a98b16ca	SETTLEMENT	4411045703	616f1acc-7a4e-4d03-9a03-5ab3e372578f	\N	\N	ТАВРИЧАНСЬКЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
f12ce008-526a-49ef-a7fe-b13272af3d3d	SETTLEMENT	4411045701	616f1acc-7a4e-4d03-9a03-5ab3e372578f	\N	\N	КРИНИЧНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
e441c36d-e097-48ca-aa87-fceea24de1ba	TOWNSHIP	1415045900	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	ГІРНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
9bc08e91-cd33-481d-a560-20401d7b2a67	TOWNSHIP	1415045600	27b0197d-f470-4b2c-af27-4d82e953db9d	\N	\N	БЛАГОДАТНЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
6a824d1f-611b-4bd6-8a57-ad2064cd2d45	VILLAGE	7424456005	d5c669ff-0af8-4dd3-b683-b7d405b071b2	ee54be2c-6aa5-40a3-bb9f-1f65a1b0c392	\N	КУКАРІ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
7377fee4-4a54-4a37-9326-55ad7c130c97	SETTLEMENT	7424456001	d5c669ff-0af8-4dd3-b683-b7d405b071b2	ee54be2c-6aa5-40a3-bb9f-1f65a1b0c392	\N	ГІРКИ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
ecbd3150-caec-4623-b848-1bc951a805e6	SETTLEMENT	6325111001	cfb02075-fab4-4fb1-9a1d-2de9bd3c698a	093f7028-7b4c-463f-a882-18547c627015	\N	ПЕРШОТРАВНЕВЕ	2017-06-19 17:19:00.558269	2017-06-19 17:19:00.558269	false
\.
