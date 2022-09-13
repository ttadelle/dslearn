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

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2022-07-13T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-07-13T03:00:00', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2022-07-14T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-07-14T03:00:00', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, pre_requisite_id) VALUES ('Capítulo 1', 'Neste capítulo iremos começar', 1, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, pre_requisite_id) VALUES ('Capítulo 2', 'Neste capítulo iremos continuar', 2, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, pre_requisite_id) VALUES ('Capítulo 3', 'Neste capítulo iremos finalizar', 3, 'https://937216.smushcdn.com/2561330/wp-content/uploads/2021/11/online759.jpg?lossy=1&strip=1&webp=1', 1, 2);