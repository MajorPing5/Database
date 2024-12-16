UPDATE "Final Project".payment SET amount=30 WHERE acctid=2 or acctid = 1 or acctid = 7 or acctid = 8 or acctid = 10;

update "Final Project".account
set cid = 14
where acctid = 18;

update "Final Project".account
set cid = 6
where acctid = 11;

update "Final Project".account
set cid = 6
where acctid = 19;

update "Final Project".account
set cid = 8
where acctid = 20;

INSERT INTO "Final Project".payment (pID, acctID, "date", amount, method) VALUES
    (403, 19, '2022-12-01', 30.00, 'Debit Card'),
    (404, 19, '2023-01-01', 20.00, 'Credit Card'),
    (405, 19, '2023-01-15', 20.00, 'Debit Card'),
    (406, 19, '2023-01-20', 20.00, 'Bank Transfer'),
    (407, 19, '2023-02-01', 20.00, 'Credit Card'),
    (408, 19, '2023-02-14', 50.00, 'Bank Transfer'),
    (409, 19, '2023-03-01', 20.00, 'In-Person'),
    (410, 19, '2023-03-14', 20.00, 'In-Person'),
    (411, 19, '2023-11-01', 300.00, 'In-Person'),
    (412, 19, '2023-12-01', 30.00, 'Debit Card'),
    (413, 19, '2024-01-01', 30.00, 'Credit Card'),
    (414, 19, '2024-02-01', 30.00, 'Bank Transfer'),
    (415, 19, '2024-03-01', 30.00, 'In-Person'),
    (416, 19, '2024-04-01', 30.00, 'Debit Card'),
    (417, 19, '2024-05-01', 30.00, 'Credit Card'),
    (418, 19, '2024-06-01', 30.00, 'Bank Transfer'),
    (419, 19, '2024-07-01', 30.00, 'In-Person'),
    (420, 19, '2024-08-01', 30.00, 'Debit Card'),
    (421, 19, '2024-09-01', 30.00, 'Credit Card'),
    (422, 19, '2024-10-01', 30.00, 'Bank Transfer'),
    (423, 19, '2024-11-01', 30.00, 'Debit Card'),
    (424, 19, '2024-12-01', 30.00, 'Credit Card');

INSERT INTO "Final Project".payment (pID, acctID, "date", amount, method)
VALUES
    (425, 11, '2022-12-01', 30.00, 'Debit Card'),
    (426, 11, '2023-01-01', 20.00, 'Credit Card'),
    (427, 11, '2023-01-20', 20.00, 'Bank Transfer'),
    (428, 11, '2023-02-01', 30.00, 'Debit Card'),
    (429, 11, '2023-03-01', 15.00, 'In-Person'),
    (430, 11, '2023-03-14', 20.00, 'Credit Card'),
    (431, 11, '2023-04-01', 20.00, 'Debit Card'),
    (432, 11, '2023-04-15', 15.00, 'Bank Transfer'),
    (433, 11, '2023-05-01', 30.00, 'In-Person'),
    (434, 11, '2023-06-01', 25.00, 'Debit Card'),
    (435, 11, '2023-06-15', 20.00, 'Credit Card'),
    (436, 11, '2023-07-01', 30.00, 'Debit Card'),
    (437, 11, '2023-08-01', 30.00, 'Bank Transfer'),
    (438, 11, '2023-09-01', 25.00, 'In-Person'),
    (439, 11, '2023-09-15', 15.00, 'Credit Card'),
    (440, 11, '2023-10-01', 20.00, 'Debit Card'),
    (441, 11, '2023-10-15', 20.00, 'In-Person'),
    (442, 11, '2023-11-01', 30.00, 'Bank Transfer'),
    (443, 11, '2023-12-01', 30.00, 'Debit Card'),
    (444, 11, '2024-01-01', 30.00, 'Credit Card'),
    (445, 11, '2024-02-01', 20.00, 'In-Person'),
    (446, 11, '2024-02-14', 20.00, 'Bank Transfer'),
    (447, 11, '2024-03-01', 30.00, 'Debit Card'),
    (448, 11, '2024-04-01', 30.00, 'Credit Card'),
    (449, 11, '2024-05-01', 30.00, 'Bank Transfer'),
    (450, 11, '2024-06-01', 25.00, 'Debit Card'),
    (451, 11, '2024-06-15', 15.00, 'In-Person'),
    (452, 11, '2024-07-01', 30.00, 'Debit Card'),
    (453, 11, '2024-08-01', 30.00, 'Credit Card'),
    (454, 11, '2024-09-01', 30.00, 'Bank Transfer'),
    (455, 11, '2024-10-01', 30.00, 'Debit Card'),
    (456, 11, '2024-11-01', 20.00, 'In-Person'),
    (457, 11, '2024-11-15', 10.00, 'Debit Card'),
    (458, 11, '2024-12-01', 30.00, 'Bank Transfer');
   
INSERT INTO "Final Project".payment (pID, acctID, "date", amount, method)
VALUES
    (459, 6, '2022-12-01', 30.00, 'Debit Card'),
    (460, 6, '2023-01-01', 20.00, 'Credit Card'),
    (461, 6, '2023-01-15', 10.00, 'Bank Transfer'),
    (462, 6, '2023-02-01', 30.00, 'In-Person'),
    (463, 6, '2023-03-01', 25.00, 'Debit Card'),
    (464, 6, '2023-03-15', 15.00, 'Credit Card'),
    (465, 6, '2023-04-01', 30.00, 'Bank Transfer'),
    (466, 6, '2023-05-01', 30.00, 'In-Person'),
    (467, 6, '2023-06-01', 20.00, 'Debit Card'),
    (468, 6, '2023-06-15', 15.00, 'Bank Transfer'),
    (469, 6, '2023-07-01', 30.00, 'Credit Card'),
    (470, 6, '2023-08-01', 30.00, 'Bank Transfer'),
    (471, 6, '2023-09-01', 20.00, 'In-Person'),
    (472, 6, '2023-09-15', 10.00, 'Debit Card'),
    (473, 6, '2023-10-01', 30.00, 'Credit Card'),
    (474, 6, '2023-11-01', 30.00, 'Bank Transfer'),
    (475, 6, '2024-01-01', 20.00, 'Debit Card'),
    (476, 6, '2024-01-15', 10.00, 'In-Person'),
    (477, 6, '2024-02-01', 25.00, 'Credit Card'),
    (478, 6, '2024-02-15', 15.00, 'Bank Transfer'),
    (479, 6, '2024-03-01', 30.00, 'Debit Card'),
    (480, 6, '2024-04-01', 30.00, 'In-Person'),
    (481, 6, '2024-05-01', 20.00, 'Credit Card'),
    (482, 6, '2024-05-15', 10.00, 'Bank Transfer'),
    (483, 6, '2024-06-01', 15.00, 'Debit Card'),
    (484, 6, '2024-07-01', 30.00, 'In-Person'),
    (485, 6, '2024-08-01', 30.00, 'Credit Card'),
    (486, 6, '2024-09-01', 20.00, 'Bank Transfer'),
    (487, 6, '2024-09-15', 10.00, 'Debit Card'),
    (488, 6, '2024-10-01', 15.00, 'In-Person'),
    (489, 6, '2024-12-01', 150.00, 'In-Person');

INSERT INTO "Final Project".payment (pID, acctID, "date", amount, method)
VALUES
    (490, 3, '2024-03-31', 30.00, 'Debit Card'),
    (491, 3, '2024-04-30', 30.00, 'Credit Card'),
    (492, 3, '2024-05-31', 30.00, 'Bank Transfer'),
    (493, 3, '2024-06-15', 30.00, 'In-Person'), -- Late Payment
    (494, 3, '2024-07-31', 30.00, 'Debit Card'),
    (495, 3, '2024-08-15', 30.00, 'Credit Card'), -- Late Payment
    (496, 3, '2024-09-30', 30.00, 'Bank Transfer'),
    (497, 3, '2024-10-15', 30.00, 'In-Person'), -- Late Payment
    (498, 3, '2024-11-30', 30.00, 'Debit Card'),
    (499, 3, '2024-12-31', 30.00, 'Credit Card');
    
   INSERT INTO "Final Project".payment (pID, acctID, "date", amount, method)
VALUES
    (500, 22, '2024-03-23', 30.00, 'Debit Card'),
    (501, 22, '2024-04-07', 30.00, 'Credit Card'), -- Delayed Payment
    (502, 22, '2024-05-08', 30.00, 'Bank Transfer'), -- Delayed Payment
    (503, 22, '2024-06-05', 30.00, 'In-Person'), -- Delayed Payment
    (504, 22, '2024-07-01', 30.00, 'Debit Card'), -- Delayed Payment
    (505, 22, '2024-08-06', 30.00, 'Credit Card'), -- Delayed Payment
    (506, 22, '2024-09-02', 30.00, 'Bank Transfer'), -- Delayed Payment
    (507, 22, '2024-10-07', 30.00, 'In-Person'), -- Delayed Payment
    (508, 22, '2024-11-05', 30.00, 'Debit Card'), -- Delayed Payment
    (509, 22, '2024-12-09', 30.00, 'Credit Card'); -- Delayed Payment

    INSERT INTO "Final Project".payment (pID, acctID, "date", amount, method)
values -- 2023 Payments
    (510, 9, '2023-01-01', 30.00, 'Debit Card'),
    (511, 9, '2023-03-01', 120.00, 'Credit Card'),
    (512, 9, '2023-05-01', 120.00, 'Bank Transfer'),
    (513, 9, '2023-06-01', 30.00, 'In-Person'),
    (514, 9, '2023-08-01', 120.00, 'Debit Card'),
    (515, 9, '2023-09-01', 30.00, 'Credit Card'),
    (516, 9, '2023-10-01', 30.00, 'Bank Transfer'),
    (517, 9, '2023-11-01', 30.00, 'In-Person'),
    (518, 9, '2023-12-01', 30.00, 'Debit Card'),
-- 2024 Payments
    (519, 9, '2024-01-01', 30.00, 'Credit Card'),
    (520, 9, '2024-03-01', 120.00, 'Bank Transfer'),
    (521, 9, '2024-05-01', 120.00, 'In-Person'),
    (522, 9, '2024-06-01', 30.00, 'Debit Card'),
    (523, 9, '2024-08-01', 120.00, 'Credit Card'),
    (524, 9, '2024-09-01', 30.00, 'Bank Transfer'),
    (525, 9, '2024-10-01', 30.00, 'In-Person'),
    (526, 9, '2024-11-01', 30.00, 'Debit Card'),
    (527, 9, '2024-12-01', 30.00, 'Credit Card');
   
INSERT INTO "Final Project".payment (pID, acctID, "date", amount, method)
VALUES
    (528, 16, '2023-04-11', 30.00, 'Debit Card'),
    (529, 16, '2023-05-11', 30.00, 'Credit Card'),
    (530, 16, '2023-06-11', 30.00, 'Bank Transfer'),
    (531, 16, '2023-07-25', 30.00, 'In-Person'),
    (532, 16, '2023-08-11', 30.00, 'Debit Card'),
    (533, 16, '2023-09-11', 30.00, 'Credit Card'),
    (534, 16, '2023-10-11', 30.00, 'Bank Transfer'),
    (535, 16, '2023-11-25', 30.00, 'In-Person'),
    (536, 16, '2023-12-11', 30.00, 'Debit Card'),
    (537, 16, '2024-01-11', 30.00, 'Credit Card'),
    (538, 16, '2024-02-11', 30.00, 'Bank Transfer'),
    (539, 16, '2024-03-25', 30.00, 'In-Person'),
    (540, 16, '2024-04-11', 30.00, 'Debit Card'),
    (541, 16, '2024-05-11', 30.00, 'Credit Card'),
    (542, 16, '2024-06-11', 30.00, 'Bank Transfer'),
    (543, 16, '2024-07-25', 30.00, 'In-Person'),
    (544, 16, '2024-08-11', 30.00, 'Debit Card'),
    (545, 16, '2024-09-11', 30.00, 'Credit Card'),
    (546, 16, '2024-10-11', 30.00, 'Bank Transfer'),
    (547, 16, '2024-11-25', 30.00, 'In-Person'),
    (548, 16, '2024-12-11', 30.00, 'Debit Card');

INSERT INTO "Final Project".payment (pID, acctID, "date", amount, method)
VALUES
    (549, 4, '2022-09-01', 30.00, 'Debit Card'),
    (550, 4, '2023-01-01', 200.00, 'Credit Card'),
    (551, 4, '2023-02-01', 200.00, 'Bank Transfer'),
    (552, 4, '2023-09-01', 370.00, 'In-Person'),
    (553, 4, '2024-01-01', 300.00, 'Debit Card'),
    (554, 4, '2024-04-01', 240.00, 'Credit Card'),
    (555, 4, '2024-09-01', 330.00, 'Bank Transfer');
   
   DELETE FROM "Final Project".payment
WHERE pID = 46;
