--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account (
    id integer NOT NULL,
    login text NOT NULL,
    password text NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.account OWNER TO postgres;

--
-- Name: account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.account ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: bonus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bonus (
    id integer NOT NULL,
    id_partner integer NOT NULL,
    naim text NOT NULL,
    count numeric NOT NULL,
    id_category integer
);


ALTER TABLE public.bonus OWNER TO postgres;

--
-- Name: bonus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.bonus ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.bonus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    naim text NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: nach_bonus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nach_bonus (
    id_bonus integer,
    date_nach date,
    id_volonter integer,
    id integer NOT NULL
);


ALTER TABLE public.nach_bonus OWNER TO postgres;

--
-- Name: nach_bonus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.nach_bonus ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.nach_bonus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: partner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partner (
    id integer NOT NULL,
    naim text NOT NULL,
    id_acc integer NOT NULL
);


ALTER TABLE public.partner OWNER TO postgres;

--
-- Name: partner_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.partner ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.partner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id integer NOT NULL,
    naim text NOT NULL
);


ALTER TABLE public.role OWNER TO postgres;

--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.role ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: volonter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.volonter (
    id integer NOT NULL,
    fio text,
    inn text,
    tel text,
    mail text,
    "DOB" date,
    id_acc integer NOT NULL
);


ALTER TABLE public.volonter OWNER TO postgres;

--
-- Name: volonter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.volonter ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.volonter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account (id, login, password, role_id) FROM stdin;
1	admin	password	1
172	aleksandr.ivanov1985@yandex.ru	77fe738e277dd354c259609750ed9b82	3
173	mariya.petrova2000@yandex.ru	bf79cbeba417b4d083b4e6a8094cac1b	3
5	volonter1	pass123	2
174	sergey.smirnov77@yandex.ru	b03157b0ead9ada1ba38f540dc18ba0d	3
175	elena.kuznetsova92@yandex.ru	20401d7c3081f7db2fb7017eb9b6f14f	3
176	dmitriy.vasiliev88@yandex.ru	1daea0c753e2b24a536bf1b7690c074a	3
177	natalia.popova75@yandex.ru	5296c313231c88e27762948fe9ef594d	3
178	andrey.sokolov63@yandex.ru	3df962b291c2caadbb82ce69b5f73fea	3
179	olga.lebedeva99@yandex.ru	6755f2c6be689da703f55f3e82d39acc	3
180	ivan.egorov51@yandex.ru	26d044879af8ef4eb0c3950d5504778f	3
181	tatiana.volkova86@yandex.ru	249df33111b7447710f974b405ce2018	3
182	aleksey.zaitsev44@yandex.ru	a3b5805f9a24d0ad06b3f2b3e52794e0	3
183	svetlana.stepanova71@yandex.ru	8723e6c25d20d6dbf78de24e2eec6ded	3
184	nikolay.pavlov59@yandex.ru	28c68fbca8fdda7d32936557cb69fc93	3
185	irina.semenova83@yandex.ru	c9d195eabf133d3a2888330aacf2c099	3
186	pavel.vinogradov67@yandex.ru	5296c313231c88e27762948fe9ef594d	3
187	yulia.fedotova95@yandex.ru	3df962b291c2caadbb82ce69b5f73fea	3
188	artem.filatov48@yandex.ru	6755f2c6be689da703f55f3e82d39acc	3
189	oksana.frolova79@yandex.ru	26d044879af8ef4eb0c3950d5504778f	3
190	denis.gavrilov61@yandex.ru	249df33111b7447710f974b405ce2018	3
191	anna.ignatova89@yandex.ru	a3b5805f9a24d0ad06b3f2b3e52794e0	3
192	vladimir.kozlov55@yandex.ru	8723e6c25d20d6dbf78de24e2eec6ded	3
193	ksenia.nikitina73@yandex.ru	28c68fbca8fdda7d32936557cb69fc93	3
194	roman.orlov46@yandex.ru	c9d195eabf133d3a2888330aacf2c099	3
195	alla.polyakova81@yandex.ru	5296c313231c88e27762948fe9ef594d	3
196	egor.sidorov65@yandex.ru	3df962b291c2caadbb82ce69b5f73fea	3
197	galina.tikhonova93@yandex.ru	6755f2c6be689da703f55f3e82d39acc	3
198	ilya.ustinov42@yandex.ru	26d044879af8ef4eb0c3950d5504778f	3
199	zhanna.filippova77@yandex.ru	249df33111b7447710f974b405ce2018	3
200	konstantin.khokhlov60@yandex.ru	a3b5805f9a24d0ad06b3f2b3e52794e0	3
201	larisa.tsvetkova87@yandex.ru	8723e6c25d20d6dbf78de24e2eec6ded	3
202	maksim.chebotarev53@yandex.ru	28c68fbca8fdda7d32936557cb69fc93	3
203	nadezhda.shcherbakova70@yandex.ru	c9d195eabf133d3a2888330aacf2c099	3
204	oleg.yakovlev45@yandex.ru	5296c313231c88e27762948fe9ef594d	3
205	polina.antonova80@yandex.ru	3df962b291c2caadbb82ce69b5f73fea	3
206	ruslan.belov64@yandex.ru	6755f2c6be689da703f55f3e82d39acc	3
207	sofia.vorobieva91@yandex.ru	26d044879af8ef4eb0c3950d5504778f	3
208	timur.gorbunov40@yandex.ru	249df33111b7447710f974b405ce2018	3
209	uliana.danilova75@yandex.ru	a3b5805f9a24d0ad06b3f2b3e52794e0	3
210	fedor.efremov58@yandex.ru	8723e6c25d20d6dbf78de24e2eec6ded	3
211	valentina.zhukova85@yandex.ru	28c68fbca8fdda7d32936557cb69fc93	3
212	anton.zimin69@yandex.ru	c9d195eabf133d3a2888330aacf2c099	3
213	boris.kolesnikov97@yandex.ru	5296c313231c88e27762948fe9ef594d	3
214	vera.lopatina43@yandex.ru	3df962b291c2caadbb82ce69b5f73fea	3
215	gennadiy.mironov78@yandex.ru	6755f2c6be689da703f55f3e82d39acc	3
216	darya.novikova62@yandex.ru	26d044879af8ef4eb0c3950d5504778f	3
217	evgeniy.osipov90@yandex.ru	249df33111b7447710f974b405ce2018	3
218	zinaida.rybakova56@yandex.ru	a3b5805f9a24d0ad06b3f2b3e52794e0	3
219	igor.savelyev74@yandex.ru	8723e6c25d20d6dbf78de24e2eec6ded	3
220	klara.tarasova47@yandex.ru	28c68fbca8fdda7d32936557cb69fc93	3
221	leonid.ulyanov82@yandex.ru	c9d195eabf133d3a2888330aacf2c099	3
222	marina.voronina66@yandex.ru	5296c313231c88e27762948fe9ef594d	3
223	nikita.gusev94@yandex.ru	3df962b291c2caadbb82ce69b5f73fea	3
224	olga.dementieva41@yandex.ru	6755f2c6be689da703f55f3e82d39acc	3
225	petr.ershov76@yandex.ru	26d044879af8ef4eb0c3950d5504778f	3
226	rita.zhdanova59@yandex.ru	249df33111b7447710f974b405ce2018	3
227	sergey.karpov86@yandex.ru	a3b5805f9a24d0ad06b3f2b3e52794e0	3
228	tatyana.lykova70@yandex.ru	8723e6c25d20d6dbf78de24e2eec6ded	3
229	viktor.maslov44@yandex.ru	28c68fbca8fdda7d32936557cb69fc93	3
230	yulia.nechaeva79@yandex.ru	c9d195eabf133d3a2888330aacf2c099	3
231	aleksandr.panfilov63@yandex.ru	5296c313231c88e27762948fe9ef594d	3
232	dmitriy.sidorov40@yandex.ru	3df962b291c2caadbb82ce69b5f73fea	3
233	elena.titova75@yandex.ru	26d044879af8ef4eb0c3950d5504778f	3
234	ivan.fomin58@yandex.ru	249df33111b7447710f974b405ce2018	3
235	natalia.kharitonova85@yandex.ru	a3b5805f9a24d0ad06b3f2b3e52794e0	3
236	andrey.tsarev69@yandex.ru	8723e6c25d20d6dbf78de24e2eec6ded	3
237	olga.chernova97@yandex.ru	b87138b9dff3a31b850d0f73b8de00d1	3
238	aleksey.shishkin43@yandex.ru	1317133681d92775b2e2db9467152b52	3
239	svetlana.yakovleva78@yandex.ru	c2a139b93ac6f9d7d40dedb16a66ea41	3
240	nikolay.andreev62@yandex.ru	f8710fbf6a56e270a735ae3a86001421	3
241	irina.belyaeva90@yandex.ru	f85c29cb76ea5e4293af4031157e7f7f	3
242	pavel.golubev56@yandex.ru	9a126fc65ccbcdad48121cc7b540d72b	3
243	yulia.dmitrieva74@yandex.ru	9928e231680bcbf280517cf2b954ba54	3
244	artem.egorov47@yandex.ru	ce278b0167238a4890bb33e94109e1bb	3
245	oksana.zhukova82@yandex.ru	035f0fc928d2b7ce45a87922131699e9	3
246	denis.zaitsev66@yandex.ru	65b3c5d36f57b7c0fdaccc21e151b04f	3
247	anna.ivanova94@yandex.ru	fb40088f99aefe17bded87e09c48efc3	3
248	vladimir.kuznetsov41@yandex.ru	28219711a866404c605696fe829b7a0a	3
249	ksenia.lebedeva76@yandex.ru	0a7b7c2d89cf7832d22a6f4ecbbd6ab1	3
250	roman.mironov59@yandex.ru	d32dcd607b6f4fafcdc0c289129353b0	3
251	alla.nikolaeva86@yandex.ru	1fe2d04d6d18b0e9327d776fd938bdff	3
252	egor.orlov70@yandex.ru	909b6cdd823e8cb83dca048335e36976	3
253	galina.pavlova44@yandex.ru	080f834d22e0ebb67c82fc2e5bd337a6	3
254	ilya.romanov79@yandex.ru	b518acdf466f950e6ebc1551c2718717	3
255	zhanna.sokolova63@yandex.ru	14a0548aed597181be04e8459921864e	3
256	konstantin.titov91@yandex.ru	a767b82701896b6ad05e6984e072c2f9	3
257	larisa.ustyugova40@yandex.ru	8a2a1880bb93343815d7479383d8c574	3
258	maksim.fedorov75@yandex.ru	0acfeb23d5489ba3210fafb4dd6eb49b	3
259	nadezhda.kharlamova58@yandex.ru	e7e6f0b7f056c6f6010fc3d273080ca4	3
260	oleg.tsarev85@yandex.ru	a63c55fce2cfae14a2f1c185c1e8372d	3
261	polina.chernykh69@yandex.ru	58a956f7e2acd3ce725b01102205810b	3
262	ruslan.shilov97@yandex.ru	4f4bb67eeabc783bd272297768ddb35c	3
263	sofia.yakunin43@yandex.ru	a993e4e210d0f2ba30984d0f713f4ae5	3
264	timur.anisimov78@yandex.ru	69f78faac66f21d456f408fcc0720c05	3
265	uliana.bykova62@yandex.ru	c21c4468b8554e7e56f2945359272a97	3
266	fedor.voronin90@yandex.ru	69fedfb88a2d47a0098b5054a7330add	3
267	valentina.galkina56@yandex.ru	5a23aab66aa4004afaed20b9348dc0ac	3
268	anton.dudkin74@yandex.ru	c6640e1f22eddda604a73adc4c5fd95a	3
269	boris.ershov47@yandex.ru	080676aec8b54b283131cdd01ee5f826	3
270	vera.zhdanova82@yandex.ru	f19b0e19851cf688c9a40c1a10eba2c6	3
271	gennadiy.karpov66@yandex.ru	74e07433db554ba298fc7a335768007b	3
272	darya.lykov94@yandex.ru	cb95099a9f7745a123755af42c7d1b27	3
273	evgeniy.maslov41@yandex.ru	334b7482cc393f86b28ba7353fc10e87	3
274	zinaida.nechaeva76@yandex.ru	9e698049569e973917072aff30d33c78	3
275	igor.panfilov59@yandex.ru	86e6eda32fc78e5a7a90678af2777679	3
276	klara.romanova86@yandex.ru	cec93805304832911d47959999df6f70	3
277	leonid.sidorov70@yandex.ru	f7638b6674249fe64f91864284fcf057	3
278	marina.titova44@yandex.ru	38e30d248246c8887d291f234ed88514	3
279	nikita.fomin79@yandex.ru	73f1f83d64698de4abbf509c159f313e	3
280	olga.kharitonova63@yandex.ru	880da6b8b5fca6ee3cbffe39b6b7ebf3	3
281	petr.tsarev91@yandex.ru	09dda3fb85a70b085a01b3653ec0e923	3
282	rita.chernova40@yandex.ru	62dbaa72996074d05fb91fd231957b3e	3
283	sergey.shishkin75@yandex.ru	badb01ba1190d97e1fc66fdc84bdfe37	3
284	tatyana.yakovleva58@yandex.ru	683545c825fdb6f3eead5992326d863f	3
285	viktor.andreev85@yandex.ru	372fb93bddb0ed552857133c1ddc3f7b	3
286	yulia.belyaeva69@yandex.ru	31a5770a57e2cd0b68c5db7a596d23d6	3
287	aleksandr.golubev97@yandex.ru	cfc83b1de456a4eb3ed4736390ce6bff	3
288	mariya.dmitrieva43@yandex.ru	1f0166b098cb14922f344d91e20364c1	3
289	dmitriy.egorov78@yandex.ru	58421d56fd844fceaf2e8cab878d0e7b	3
290	elena.zhukova62@yandex.ru	dbcc8b8ef7ef3c9ffed9ffd12338817f	3
291	ivan.zaitsev90@yandex.ru	e3f28eccb2ef5bba95d01b9f725b2f5c	3
292	natalia.ivanova56@yandex.ru	212723351c091f1339eb74f69c8cc0d3	3
293	angelina.ermakov50@yandex.ru	d1e040c582403f72b9a7ccd96196d5c3	3
294	stepan.savelyev67@yandex.ru	073687c50303cf4b473e5d67f1fff9f2	3
295	alina.zhdanov34@yandex.ru	f56583aa3d848bf0a99b7728ad5f72d4	3
296	nikita.frolov51@yandex.ru	47cccc9d2bc5d1458f97cfe297c4225b	3
297	valeria.khokhlov68@yandex.ru	739605f431c422417953d0cb560834d7	3
298	artur.terentyev35@yandex.ru	02eb7340dbcbf438c32bcfa3c703d00e	3
299	arina.bogdanov52@yandex.ru	7d03932257b8d6adaf4d9ca88ac56d9c	3
300	vladislav.voloshin69@yandex.ru	4ec60c1ebf48dc3451b12529526397c6	3
301	elizaveta.dementiev36@yandex.ru	f385aa9db5f0bcbaedf64e9a09bb9b36	3
302	ilya.dyakonov53@yandex.ru	1e6849dcbcd51339000cf7da596e20cf	3
303	miron.ershov70@yandex.ru	a57dd3b2135dcd2f716ab0eac8dbd8c6	3
304	eva.zhuravlev37@yandex.ru	394a588a2de6402da3d41063eb445c82	3
305	platon.zotov54@yandex.ru	05873a3a927ec3ff432aa9b822e0f6b1	3
306	emilia.klimov71@yandex.ru	f54393e8895af31232b6d8e851500474	3
307	david.lazarev38@yandex.ru	002c2b75d5f912908d0441f9284caac7	3
308	eva.novikov55@yandex.ru	12efe4e13f3ec3725e578d714c14f274	3
309	mark.osipov72@yandex.ru	9f7fcdbd34b9374eba17744867477b9a	3
310	sofia.pavlov39@yandex.ru	096a0519f36695c672888487178d32d2	3
311	leon.rozhkov56@yandex.ru	1c0e3d77679d03c46a1a6cd580fe25d0	3
312	anna.sidorov73@yandex.ru	fcedc54e33b3dd73f943e4f36655cad0	3
313	timur.ustinov40@yandex.ru	064f390fcf86cb315a12532869a6f2b9	3
314	varvara.filippov57@yandex.ru	ee1b1a31939917f6f26ab5bdbb13e03d	3
315	gleb.kharlamov74@yandex.ru	47096e553208e73cbf609e5269931066	3
316	diana.tsvetkov41@yandex.ru	8651d93d5446612e04290f3fd5f3ee33	3
317	arseniy.chistyakov58@yandex.ru	bc26f08817f1a8b1493f46558030d1b8	3
318	alisa.shishkin75@yandex.ru	9fb66fa66d7e62d7e36f338aea99924d	3
319	matvey.yakovlev42@yandex.ru	b11d81426897cb57ac349a43b974ff83	3
320	mariya.vasilyev59@yandex.ru	c618dead2534df155151fc176679d020	3
321	nikita.petrov76@yandex.ru	00648fe5c5a71021a42af6ec2351682e	3
322	volontвпрарer1	pass123	3
\.


--
-- Data for Name: bonus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bonus (id, id_partner, naim, count, id_category) FROM stdin;
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id, naim) FROM stdin;
1	А
2	Б
3	В
\.


--
-- Data for Name: nach_bonus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nach_bonus (id_bonus, date_nach, id_volonter, id) FROM stdin;
\.


--
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partner (id, naim, id_acc) FROM stdin;
1	Новое предприятие	5
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (id, naim) FROM stdin;
1	Администратор
2	Предприятие-партнёр
3	Волонтёр
\.


--
-- Data for Name: volonter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.volonter (id, fio, inn, tel, mail, "DOB", id_acc) FROM stdin;
167	Иванов Иван Иванович	772456789012	+79165558219	aleksandr.ivanov1985@yandex.ru	1988-05-12	172
168	Петров Петр Петрович	500123456789	+79251234567	mariya.petrova2000@yandex.ru	2001-02-28	173
169	Сидоров Сидор Сидорович	667101122334	+79039876543	sergey.smirnov77@yandex.ru	1975-09-03	174
170	Смирнов Алексей Иванович	780234567890	+79682345678	elena.kuznetsova92@yandex.ru	1992-07-16	175
171	Кузнецов Дмитрий Петрович	230987654321	+79853456789	dmitriy.vasiliev88@yandex.ru	2005-11-21	176
172	Попов Сергей Сидорович	345678901234	+79154567890	natalia.popova75@yandex.ru	1963-04-08	177
173	Васильев Андрей Алексеевич	456789012345	+79265678901	andrey.sokolov63@yandex.ru	1981-10-19	178
174	Федоров Михаил Дмитриевич	567890123456	+79056789012	olga.lebedeva99@yandex.ru	2010-01-05	179
175	Соколов Александр Сергеевич	678901234567	+79677890123	ivan.egorov51@yandex.ru	1997-06-30	180
176	Михайлов Николай Андреевич	789012345678	+79808901234	tatiana.volkova86@yandex.ru	1958-03-14	181
177	Новиков Владимир Михайлович	890123456789	+79109012345	aleksey.zaitsev44@yandex.ru	2009-08-25	182
178	Дмитриев Юрий Николаевич	901234567890	+79290123456	svetlana.stepanova71@yandex.ru	1970-12-10	183
179	Волков Игорь Владимирович	123456789012	+79091234567	nikolay.pavlov59@yandex.ru	1985-02-01	184
180	Зайцев Евгений Юрьевич	234567890123	+79602345678	irina.semenova83@yandex.ru	2002-04-23	185
181	Лебедев Олег Игоревич	345678901234	+79813456789	pavel.vinogradov67@yandex.ru	1967-09-07	186
182	Семенов Павел Евгеньевич	456789012345	+79114567890	yulia.fedotova95@yandex.ru	1999-05-18	187
183	Егоров Антон Олегович	567890123456	+79225678901	artem.filatov48@yandex.ru	2015-01-29	188
184	Павлов Роман Павлович	678901234567	+79026789012	oksana.frolova79@yandex.ru	1978-11-11	189
185	Козлов Денис Антонович	789012345678	+79617890123	denis.gavrilov61@yandex.ru	1994-07-04	190
186	Степанов Артем Романович	890123456789	+79828901234	anna.ignatova89@yandex.ru	1961-03-20	191
187	Николаев Максим Денисович	901234567890	+79129012345	vladimir.kozlov55@yandex.ru	2007-06-26	192
188	Андреев Кирилл Артемович	123456789012	+79230123456	ksenia.nikitina73@yandex.ru	1983-10-09	193
189	Яковлев Илья Максимович	234567890123	+79041234567	roman.orlov46@yandex.ru	1955-12-02	194
190	Александров Владислав Кириллович	345678901234	+79622345678	alla.polyakova81@yandex.ru	2000-02-15	195
191	Григорьев Никита Ильич	456789012345	+79833456789	egor.sidorov65@yandex.ru	1973-08-27	196
192	Богданов Даниил Владиславович	567890123456	+79134567890	galina.tikhonova93@yandex.ru	1990-04-13	197
193	Сергеев Тимофей Никитич	678901234567	+79245678901	ilya.ustinov42@yandex.ru	2003-11-22	198
194	Жуков Арсений Даниилович	789012345678	+79066789012	zhanna.filippova77@yandex.ru	1965-01-06	199
195	Воробьев Матвей Тимофеевич	890123456789	+79637890123	konstantin.khokhlov60@yandex.ru	1986-07-17	200
196	Морозов Лев Арсеньевич	901234567890	+79848901234	larisa.tsvetkova87@yandex.ru	2012-03-24	201
197	Филиппов Егор Матвеевич	123456789012	+79149012345	maksim.chebotarev53@yandex.ru	1976-05-31	202
198	Герасимов Ярослав Львович	234567890123	+79270123456	nadezhda.shcherbakova70@yandex.ru	1993-09-10	203
199	Крылов Иван Егорович	345678901234	+79081234567	oleg.yakovlev45@yandex.ru	1959-02-03	204
200	Белов Михаил Ярославович	456789012345	+79642345678	polina.antonova80@yandex.ru	2006-08-19	205
201	Виноградов Александр Иванович	567890123456	+79863456789	ruslan.belov64@yandex.ru	1980-12-05	206
202	Комаров Дмитрий Петрович	678901234567	+79174567890	sofia.vorobieva91@yandex.ru	1997-04-21	207
203	Беляев Сергей Сидорович	789012345678	+79285678901	timur.gorbunov40@yandex.ru	2014-01-28	208
204	Игнатов Андрей Алексеевич	890123456789	+79076789012	uliana.danilova75@yandex.ru	1979-06-12	209
205	Щербаков Михаил Дмитриевич	901234567890	+79657890123	fedor.efremov58@yandex.ru	1995-10-04	210
206	Савин Александр Сергеевич	123456789012	+79878901234	valentina.zhukova85@yandex.ru	1962-02-20	211
207	Терентьев Николай Андреевич	234567890123	+79189012345	anton.zimin69@yandex.ru	2008-07-26	212
208	Романов Владимир Михайлович	345678901234	+79200123456	boris.kolesnikov97@yandex.ru	1984-11-09	213
209	Архипов Юрий Николаевич	456789012345	+79001234567	vera.lopatina43@yandex.ru	1956-01-02	214
210	Ершов Игорь Владимирович	567890123456	+79662345678	gennadiy.mironov78@yandex.ru	2001-03-15	215
211	Орлов Евгений Юрьевич	678901234567	+79883456789	darya.novikova62@yandex.ru	1974-09-27	216
212	Борисов Олег Игоревич	789012345678	+79194567890	evgeniy.osipov90@yandex.ru	1991-05-13	217
213	Львов Павел Евгеньевич	890123456789	+79215678901	zinaida.rybakova56@yandex.ru	2004-12-22	218
214	Куликов Антон Олегович	901234567890	+79016789012	igor.savelyev74@yandex.ru	1966-02-06	219
215	Денисов Роман Павлович	123456789012	+79697890123	klara.tarasova47@yandex.ru	1987-08-17	220
216	Соловьев Денис Антонович	234567890123	+79898901234	leonid.ulyanov82@yandex.ru	2013-04-24	221
217	Журавлев Артем Романович	345678901234	+79309012345	marina.voronina66@yandex.ru	1977-06-30	222
218	Титов Максим Денисович	456789012345	+79310123456	nikita.gusev94@yandex.ru	1994-10-10	223
219	Мельников Кирилл Артемович	567890123456	+79321234567	olga.dementieva41@yandex.ru	1960-03-03	224
220	Власов Илья Максимович	678901234567	+79332345678	petr.ershov76@yandex.ru	2007-09-19	225
221	Гаврилов Владислав Кириллович	789012345678	+79343456789	rita.zhdanova59@yandex.ru	1981-01-05	226
222	Федотов Никита Ильич	890123456789	+79354567890	sergey.karpov86@yandex.ru	1998-05-21	227
223	Белоусов Даниил Владиславович	901234567890	+79365678901	tatyana.lykova70@yandex.ru	2015-02-28	228
224	Гусев Тимофей Никитич	123456789012	+79376789012	viktor.maslov44@yandex.ru	1979-07-12	229
225	Смирнова Анна Ивановна	234567890123	+79387890123	yulia.nechaeva79@yandex.ru	1996-11-04	230
226	Иванова Мария Петровна	345678901234	+79398901234	aleksandr.panfilov63@yandex.ru	1963-03-20	231
227	Петрова Елена Сидоровна	456789012345	+79409012345	dmitriy.sidorov40@yandex.ru	2009-08-26	232
228	Сидорова Ольга Алексеевна	678901234567	+79410123456	elena.titova75@yandex.ru	1985-12-09	233
229	Кузнецова Татьяна Дмитриевна	789012345678	+79421234567	ivan.fomin58@yandex.ru	1957-02-02	234
230	Попова Наталья Сергеевна	890123456789	+79432345678	natalia.kharitonova85@yandex.ru	2002-04-15	235
231	Васильева Ирина Андреевна	901234567890	+79443456789	andrey.tsarev69@yandex.ru	1975-10-27	236
232	Федорова Светлана Михайловна	770312345678	+79454567890	olga.chernova97@yandex.ru	1992-06-13	237
233	Соколова Юлия Николаевна	503456789012	+79465678901	aleksey.shishkin43@yandex.ru	2005-01-22	238
234	Михайлова Екатерина Владимировна	662567890123	+79476789012	svetlana.yakovleva78@yandex.ru	1967-03-06	239
235	Новикова Анастасия Юрьевна	781678901234	+79487890123	nikolay.andreev62@yandex.ru	1988-09-17	240
236	Дмитриева Виктория Игоревна	234789012345	+79498901234	irina.belyaeva90@yandex.ru	2014-05-24	241
237	Волкова Ксения Евгеньевна	345890123456	+79509012345	pavel.golubev56@yandex.ru	1978-07-31	242
238	Зайцева Полина Олеговна	456901234567	+79510123456	yulia.dmitrieva74@yandex.ru	1995-11-10	243
239	Лебедева Дарья Павловна	567012345678	+79521234567	artem.egorov47@yandex.ru	1961-04-03	244
240	Семенова Алиса Антоновна	678123456789	+79532345678	oksana.zhukova82@yandex.ru	2008-10-19	245
241	Егорова София Романовна	789234567890	+79543456789	denis.zaitsev66@yandex.ru	1982-02-05	246
242	Павлова Елизавета Денисовна	890345678901	+79554567890	anna.ivanova94@yandex.ru	1999-06-21	247
243	Козлова Варвара Артемовна	901456789012	+79565678901	vladimir.kuznetsov41@yandex.ru	2016-03-28	248
244	Степанова Александра Максимовна	123567890123	+79576789012	ksenia.lebedeva76@yandex.ru	1980-08-12	249
245	Николаева Валерия Кирилловна	234678901234	+79587890123	roman.mironov59@yandex.ru	1997-12-04	250
246	Андреева Вероника Ильинична	345789012345	+79598901234	alla.nikolaeva86@yandex.ru	1964-04-20	251
247	Яковлева Ульяна Владиславовна	456890123456	+79709012345	egor.orlov70@yandex.ru	2010-09-26	252
248	Александрова Кира Никитична	567901234567	+79710123456	galina.pavlova44@yandex.ru	1986-01-09	253
249	Григорьева Милана Данииловна	678012345678	+79721234567	ilya.romanov79@yandex.ru	1958-03-02	254
250	Богданова Арина Тимофеевна	789123456789	+79732345678	zhanna.sokolova63@yandex.ru	2003-05-15	255
251	Сергеева Ева Арсеньевна	890234567890	+79743456789	konstantin.titov91@yandex.ru	1976-11-27	256
252	Жукова Софья Матвеевна	901345678901	+79754567890	larisa.ustyugova40@yandex.ru	1993-07-13	257
253	Воробьева Маргарита Львовна	123456789123	+79765678901	maksim.fedorov75@yandex.ru	2006-02-22	258
254	Морозова Есения Егоровна	234567890234	+79776789012	nadezhda.kharlamova58@yandex.ru	1968-04-06	259
255	Филиппова Злата Ярославовна	345678901345	+79787890123	oleg.tsarev85@yandex.ru	1989-10-17	260
256	Герасимова Василиса Михайловна	456789012456	+79798901234	polina.chernykh69@yandex.ru	2015-06-24	261
257	Крылова Есения Александровна	567890123567	+79909012345	ruslan.shilov97@yandex.ru	1979-08-31	262
258	Белова Арина Дмитриевна	678901234678	+79910123456	sofia.yakunin43@yandex.ru	1996-12-10	263
259	Виноградова София Сергеевна	789012345789	+79921234567	timur.anisimov78@yandex.ru	1962-05-03	264
260	Комарова Елизавета Андреевна	890123456890	+79932345678	uliana.bykova62@yandex.ru	2009-11-19	265
261	Беляева Варвара Михайловна	901234567901	+79943456789	fedor.voronin90@yandex.ru	1983-03-05	266
262	Игнатова Александра Николаевна	123456789234	+79954567890	valentina.galkina56@yandex.ru	2000-07-21	267
263	Щербакова Валерия Владимировна	234567890345	+79965678901	anton.dudkin74@yandex.ru	2017-04-28	268
264	Савина Вероника Юрьевна	345678901456	+79976789012	boris.ershov47@yandex.ru	1981-09-12	269
265	Терентьева Ульяна Игоревна	456789012567	+79987890123	vera.zhdanova82@yandex.ru	1998-01-04	270
266	Романова Кира Евгеньевна	567890123678	+79898901234	gennadiy.karpov66@yandex.ru	1965-05-20	271
267	Архипова Милана Олеговна	678901234789	+79309012345	darya.lykov94@yandex.ru	2011-10-26	272
268	Ершова Арина Павловна	789012345890	+79310123456	evgeniy.maslov41@yandex.ru	1987-02-09	273
269	Орлова Ева Антоновна	890123456901	+79321234567	zinaida.nechaeva76@yandex.ru	1959-04-02	274
270	Борисова Софья Романовна	901234567012	+79332345678	igor.panfilov59@yandex.ru	2004-06-15	275
271	Львова Маргарита Денисовна	123456789345	+79343456789	klara.romanova86@yandex.ru	1977-12-27	276
272	Куликова Есения Артемовна	234567890456	+79354567890	leonid.sidorov70@yandex.ru	1994-08-13	277
273	Денисова Злата Максимовна	345678901567	+79365678901	marina.titova44@yandex.ru	2007-03-22	278
274	Соловьева Василиса Кирилловна	456789012678	+79376789012	nikita.fomin79@yandex.ru	1969-05-06	279
275	Журавлева Есения Ильинична	567890123789	+79387890123	olga.kharitonova63@yandex.ru	1990-11-17	280
276	Титова Арина Владиславовна	678901234890	+79398901234	petr.tsarev91@yandex.ru	2016-07-24	281
277	Мельникова Ева Никитична	789012345901	+79409012345	rita.chernova40@yandex.ru	1980-09-30	282
278	Власова Софья Данииловна	890123456012	+79410123456	sergey.shishkin75@yandex.ru	1997-01-10	283
279	Гаврилова Маргарита Тимофеевна	901234567123	+79421234567	tatyana.yakovleva58@yandex.ru	1963-06-03	284
280	Федотова Есения Арсеньевна	123456789456	+79432345678	viktor.andreev85@yandex.ru	2010-12-19	285
281	Белоусова Злата Матвеевна	234567890567	+79443456789	yulia.belyaeva69@yandex.ru	1984-04-05	286
282	Гусева Василиса Львововна	345678901678	+79454567890	aleksandr.golubev97@yandex.ru	2001-08-21	287
283	Ивановская Анна Ивановна	456789012789	+79465678901	mariya.dmitrieva43@yandex.ru	2018-05-28	288
284	Петровская Мария Петровна	567890123890	+79476789012	dmitriy.egorov78@yandex.ru	1982-10-12	289
285	Сидоровская Елена Сидоровна	678901234901	+79487890123	elena.zhukova62@yandex.ru	1999-02-04	290
286	Смирновская Ольга Алексеевна	789012345012	+79498901234	ivan.zaitsev90@yandex.ru	1966-06-20	291
287	Кузнецовская Татьяна Дмитриевна	890123456123	+79509012345	natalia.ivanova56@yandex.ru	2012-11-26	292
288	Поповская Наталья Сергеевна	901234567234	+79510123456	angelina.ermakov50@yandex.ru	1988-03-09	293
289	Васильевская Ирина Андреевна	123456789567	+79521234567	stepan.savelyev67@yandex.ru	1960-05-02	294
290	Федоровская Светлана Михайловна	234567890678	+79532345678	alina.zhdanov34@yandex.ru	2005-07-15	295
291	Соколовская Юлия Николаевна	345678901789	+79543456789	nikita.frolov51@yandex.ru	1978-01-27	296
292	Михайловская Екатерина Владимировна	456789012890	+79554567890	valeria.khokhlov68@yandex.ru	1995-09-13	297
293	Новиковская Анастасия Юрьевна	678901234012	+79565678901	artur.terentyev35@yandex.ru	2008-04-22	298
294	Дмитриевская Виктория Игоревна	789012345123	+79576789012	arina.bogdanov52@yandex.ru	1970-06-06	299
295	Волковская Ксения Евгеньевна	890123456234	+79587890123	vladislav.voloshin69@yandex.ru	1991-12-17	300
296	Зайцевская Полина Олеговна	901234567345	+79598901234	elizaveta.dementiev36@yandex.ru	2017-08-24	301
297	Лебедевская Дарья Павловна	123456789678	+79709012345	ilya.dyakonov53@yandex.ru	1981-10-31	302
298	Семеновская Алиса Антоновна	234567890789	+79710123456	miron.ershov70@yandex.ru	1998-02-10	303
299	Егоровская София Романовна	345678901890	+79721234567	eva.zhuravlev37@yandex.ru	1964-07-03	304
300	Павловская Елизавета Денисовна	456789012901	+79732345678	platon.zotov54@yandex.ru	2011-01-19	305
301	Козловская Варвара Артемовна	567890123012	+79743456789	emilia.klimov71@yandex.ru	1985-05-05	306
302	Степановская Александра Максимовна	678901234123	+79754567890	david.lazarev38@yandex.ru	2002-09-21	307
303	Николаевская Валерия Кирилловна	789012345234	+79765678901	eva.novikov55@yandex.ru	2019-06-28	308
304	Андреевская Вероника Ильинична	890123456345	+79776789012	mark.osipov72@yandex.ru	1983-11-12	309
305	Яковлевская Ульяна Владиславовна	901234567456	+79787890123	sofia.pavlov39@yandex.ru	2000-03-04	310
306	Александровская Кира Никитична	123456789789	+79798901234	leon.rozhkov56@yandex.ru	1967-07-20	311
307	Григорьевская Милана Данииловна	234567890890	+79909012345	anna.sidorov73@yandex.ru	2013-12-26	312
308	Богдановская Арина Тимофеевна	345678901901	+79910123456	timur.ustinov40@yandex.ru	1989-04-09	313
309	Сергеевская Ева Арсеньевна	456789012012	+79921234567	varvara.filippov57@yandex.ru	1961-06-02	314
310	Жуковская Софья Матвеевна	567890123123	+79932345678	gleb.kharlamov74@yandex.ru	2006-08-15	315
311	Воробьева Маргарита Львовна	678901234234	+79943456789	diana.tsvetkov41@yandex.ru	1979-02-27	316
312	Морозова Есения Егоровна	789012345345	+79954567890	arseniy.chistyakov58@yandex.ru	1996-10-13	317
313	Филиппова Злата Ярославовна	890123456456	+79965678901	alisa.shishkin75@yandex.ru	2009-05-22	318
314	Герасимова Василиса Михайловна	901234567567	+79976789012	matvey.yakovlev42@yandex.ru	1971-07-06	319
315	Крылова Есения Александровна	123456789890	+79987890123	mariya.vasilyev59@yandex.ru	1992-01-17	320
316	Белова Арина Дмитриевна	234567890901	+79999012345	nikita.petrov76@yandex.ru	2018-09-24	321
317	Иванов Иван Иванович	123456789012	+79991234567	ivan@example.com	2019-03-01	322
\.


--
-- Name: account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_id_seq', 322, true);


--
-- Name: bonus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bonus_id_seq', 1, false);


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 3, true);


--
-- Name: nach_bonus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nach_bonus_id_seq', 1, false);


--
-- Name: partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partner_id_seq', 1, true);


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_id_seq', 3, true);


--
-- Name: volonter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.volonter_id_seq', 317, true);


--
-- Name: account account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (id);


--
-- Name: bonus bonus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bonus
    ADD CONSTRAINT bonus_pkey PRIMARY KEY (id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: nach_bonus nach_bonus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nach_bonus
    ADD CONSTRAINT nach_bonus_pkey PRIMARY KEY (id);


--
-- Name: partner partner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_pkey PRIMARY KEY (id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- Name: account unique_login; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT unique_login UNIQUE (login);


--
-- Name: volonter volonter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.volonter
    ADD CONSTRAINT volonter_pkey PRIMARY KEY (id) INCLUDE (id);


--
-- Name: nach_bonus id_bonus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nach_bonus
    ADD CONSTRAINT id_bonus FOREIGN KEY (id_bonus) REFERENCES public.bonus(id) NOT VALID;


--
-- Name: volonter idacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.volonter
    ADD CONSTRAINT idacc FOREIGN KEY (id_acc) REFERENCES public.account(id) NOT VALID;


--
-- Name: partner idacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT idacc FOREIGN KEY (id_acc) REFERENCES public.account(id) NOT VALID;


--
-- Name: bonus idcategory; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bonus
    ADD CONSTRAINT idcategory FOREIGN KEY (id_category) REFERENCES public.category(id) NOT VALID;


--
-- Name: bonus idpartner; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bonus
    ADD CONSTRAINT idpartner FOREIGN KEY (id_partner) REFERENCES public.partner(id) NOT VALID;


--
-- Name: nach_bonus idvol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nach_bonus
    ADD CONSTRAINT idvol FOREIGN KEY (id_volonter) REFERENCES public.volonter(id) NOT VALID;


--
-- Name: account roleid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT roleid FOREIGN KEY (role_id) REFERENCES public.role(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

