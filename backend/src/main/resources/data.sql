INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown','alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown','bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green','maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 'https://img.myloview.com.br/posters/distance-learning-black-line-icon-online-training-courses-home-leisure-isolated-on-white-background-vector-elements-for-graphic-design-website-or-banner-700-208517440.jpg');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2022-07-13T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-07-13T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2022-07-14T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-07-14T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, pre_requisite_id) VALUES ('Capítulo 1', 'Neste capítulo iremos começar', 1, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, pre_requisite_id) VALUES ('Capítulo 2', 'Neste capítulo iremos continuar', 2, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, pre_requisite_id) VALUES ('Capítulo 3', 'Neste capítulo iremos finalizar', 3, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 1, 2);

INSERT INTO tb_enrollment (USER_ID, OFFER_ID, ENROLL_MOMENT, REFUND_MOMENT, AVALIABLE, ONLY_UPDATE) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2023-07-13T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (USER_ID, OFFER_ID, ENROLL_MOMENT, REFUND_MOMENT, AVALIABLE, ONLY_UPDATE) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2023-07-14T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de apoio: abc', 'https://youtu.be/T-e3rZlOKRM');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, '', 'https://youtu.be/T-e3rZlOKRM');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, '', 'https://youtu.be/T-e3rZlOKRM');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2022-07-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2023-07-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2023-07-15T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2023-07-16T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
