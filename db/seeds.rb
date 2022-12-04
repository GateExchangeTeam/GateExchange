# frozen_string_literal: true
courses = [
  {
    title: 'Software Engineering',
    course_code: '415',
    description: 'Awesome comp sci course!',
    department: 'COSC',
    faculty: 'Sommers'
  },
  {
    title: 'Intro to Computing',
    course_code: '101',
    description: 'Awesome intro course!',
    department: 'COSC',
    faculty: 'multiple'
  },
  {
    title: 'Legacies',
    course_code: '151',
    description: 'Mandatory core course',
    department: 'CORE',
    faculty: 'Frank'
  },
  {
    title: 'Microeconomics',
    course_code: '251',
    description: 'Required Econ course',
    department: 'ECON',
    faculty: 'Haines'
  },
  {
    title: 'Is the Planet Doomed?',
    course_code: '107',
    description: 'Fun Geography course',
    department: 'GEOG',
    faculty: 'Hamlin'
  },
  {
    title: 'Modern South Asia',
    course_code: '269',
    description: 'Interesting history class',
    department: 'HIST',
    faculty: 'Begum'
  },
  {
    title: 'Sociology of Disasters',
    course_code: '304',
    description: 'Cool sociology course',
    department: 'SOCI',
    faculty: 'Villarrubia'
  },
  {
    title: 'Gadgets and Gizmos',
    course_code: '203',
    description: 'Another awesome comp sci class',
    department: 'COSC',
    faculty: 'Apthorpe and Sommers'
  }
]
posts = [{
           "title": "In sagittis dui vel nisl.",
           "description": "Phasellus in felis. Donec semper sapien a libero. Nam dui.",
           "view": 42
         }, {
           "title": "In hac habitasse platea dictumst.",
           "description": "Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.",
           "view": 76
         }, {
           "title": "Duis at velit eu est congue elementum.",
           "description": "Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.",
           "view": 18
         }, {
           "title": "Cras pellentesque volutpat dui.",
           "description": "Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.",
           "view": 37
         }, {
           "title": "Curabitur at ipsum ac tellus semper interdum.",
           "description": "Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.",
           "view": 87
         }, {
           "title": "Nunc nisl.",
           "description": "Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\n\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.",
           "view": 96
         }, {
           "title": "Duis aliquam convallis nunc.",
           "description": "Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.",
           "view": 98
         }, {
           "title": "Curabitur at ipsum ac tellus semper interdum.",
           "description": "Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.",
           "view": 36
         }, {
           "title": "Nulla ac enim.",
           "description": "In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.",
           "view": 47
         }, {
           "title": "Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.",
           "description": "Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.",
           "view": 88
         }, {
           "title": "Etiam vel augue.",
           "description": "In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.",
           "view": 39
         }, {
           "title": "Vivamus vestibulum sagittis sapien.",
           "description": "Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",
           "view": 100
         }, {
           "title": "Sed ante.",
           "description": "In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.",
           "view": 1
         }, {
           "title": "Phasellus id sapien in sapien iaculis congue.",
           "description": "Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\n\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.",
           "view": 61
         }, {
           "title": "Nunc rhoncus dui vel sem.",
           "description": "Phasellus in felis. Donec semper sapien a libero. Nam dui.\n\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.",
           "view": 7
         }, {
           "title": "Sed vel enim sit amet nunc viverra dapibus.",
           "description": "Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.",
           "view": 63
         }, {
           "title": "Quisque ut erat.",
           "description": "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.",
           "view": 85
         }, {
           "title": "Vivamus vel nulla eget eros elementum pellentesque.",
           "description": "Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.",
           "view": 52
         }, {
           "title": "Morbi vel lectus in quam fringilla rhoncus.",
           "description": "Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.",
           "view": 52
         }, {
           "title": "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
           "description": "Fusce consequat. Nulla nisl. Nunc nisl.",
           "view": 84
         }, {
           "title": "Nulla tempus.",
           "description": "Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",
           "view": 95
         }, {
           "title": "Pellentesque ultrices mattis odio.",
           "description": "Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.",
           "view": 48
         }, {
           "title": "Donec ut dolor.",
           "description": "Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.",
           "view": 31
         }, {
           "title": "Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.",
           "description": "Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",
           "view": 2
         }, {
           "title": "Suspendisse ornare consequat lectus.",
           "description": "Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.",
           "view": 45
         }, {
           "title": "Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.",
           "description": "Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.",
           "view": 84
         }, {
           "title": "Donec quis orci eget orci vehicula condimentum.",
           "description": "Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.",
           "view": 3
         }, {
           "title": "Nulla nisl.",
           "description": "Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.",
           "view": 19
         }, {
           "title": "Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.",
           "description": "Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.",
           "view": 16
         }, {
           "title": "Morbi quis tortor id nulla ultrices aliquet.",
           "description": "Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.",
           "view": 3
         }, {
           "title": "Suspendisse potenti.",
           "description": "In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.",
           "view": 77
         }, {
           "title": "Duis aliquam convallis nunc.",
           "description": "Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.",
           "view": 48
         }, {
           "title": "Sed sagittis.",
           "description": "In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.",
           "view": 40
         }, {
           "title": "Donec vitae nisi.",
           "description": "Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\n\nPhasellus in felis. Donec semper sapien a libero. Nam dui.",
           "view": 4
         }, {
           "title": "Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.",
           "description": "Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
           "view": 29
         }, {
           "title": "Aliquam non mauris.",
           "description": "Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\n\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.",
           "view": 40
         }, {
           "title": "Phasellus in felis.",
           "description": "Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.",
           "view": 29
         }, {
           "title": "Donec vitae nisi.",
           "description": "Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\n\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.",
           "view": 19
         }, {
           "title": "Sed sagittis.",
           "description": "Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
           "view": 4
         }, {
           "title": "Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.",
           "description": "In congue. Etiam justo. Etiam pretium iaculis justo.",
           "view": 26
         }, {
           "title": "Morbi porttitor lorem id ligula.",
           "description": "In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.",
           "view": 61
         }, {
           "title": "In hac habitasse platea dictumst.",
           "description": "Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.",
           "view": 30
         }, {
           "title": "Praesent blandit lacinia erat.",
           "description": "Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.",
           "view": 46
         }, {
           "title": "Vivamus in felis eu sapien cursus vestibulum.",
           "description": "Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.",
           "view": 15
         }, {
           "title": "Phasellus id sapien in sapien iaculis congue.",
           "description": "Sed ante. Vivamus tortor. Duis mattis egestas metus.",
           "view": 79
         }, {
           "title": "Vestibulum sed magna at nunc commodo placerat.",
           "description": "In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.",
           "view": 16
         }, {
           "title": "Sed sagittis.",
           "description": "Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\n\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
           "view": 28
         }, {
           "title": "Curabitur convallis.",
           "description": "Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\n\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.",
           "view": 93
         }, {
           "title": "Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.",
           "description": "Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\n\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.",
           "view": 65
         }, {
           "title": "Cras non velit nec nisi vulputate nonummy.",
           "description": "Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.",
           "view": 69
         }]
comments = [{
              "text_body": "Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est."
            }, {
              "text_body": "Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus."
            }, {
              "text_body": "Etiam justo. Etiam pretium iaculis justo."
            }, {
              "text_body": "Pellentesque ultrices mattis odio."
            }, {
              "text_body": "Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis."
            }, {
              "text_body": "In eleifend quam a odio."
            }, {
              "text_body": "Morbi a ipsum. Integer a nibh."
            }, {
              "text_body": "Morbi non lectus."
            }, {
              "text_body": "Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat."
            }, {
              "text_body": "Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat."
            }, {
              "text_body": "Ut at dolor quis odio consequat varius. Integer ac leo."
            }, {
              "text_body": "Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi."
            }, {
              "text_body": "Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis."
            }, {
              "text_body": "Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit."
            }, {
              "text_body": "Cras non velit nec nisi vulputate nonummy."
            }, {
              "text_body": "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum."
            }, {
              "text_body": "Nam dui."
            }, {
              "text_body": "Aenean fermentum."
            }, {
              "text_body": "Suspendisse potenti."
            }, {
              "text_body": "Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor."
            }, {
              "text_body": "Aliquam sit amet diam in magna bibendum imperdiet."
            }, {
              "text_body": "Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum."
            }, {
              "text_body": "Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi."
            }, {
              "text_body": "Donec posuere metus vitae ipsum."
            }, {
              "text_body": "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis."
            }, {
              "text_body": "Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis."
            }, {
              "text_body": "Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat."
            }, {
              "text_body": "In hac habitasse platea dictumst."
            }, {
              "text_body": "Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula."
            }, {
              "text_body": "Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem."
            }, {
              "text_body": "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue."
            }, {
              "text_body": "Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus."
            }, {
              "text_body": "Proin eu mi."
            }, {
              "text_body": "Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi."
            }, {
              "text_body": "Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo."
            }, {
              "text_body": "Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem."
            }, {
              "text_body": "Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum."
            }, {
              "text_body": "Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy."
            }, {
              "text_body": "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum."
            }, {
              "text_body": "Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }, {
              "text_body": "Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros."
            }, {
              "text_body": "Maecenas pulvinar lobortis est. Phasellus sit amet erat."
            }, {
              "text_body": "Maecenas ut massa quis augue luctus tincidunt."
            }, {
              "text_body": "Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla."
            }, {
              "text_body": "Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis."
            }, {
              "text_body": "In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet."
            }, {
              "text_body": "Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis."
            }, {
              "text_body": "In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue."
            }, {
              "text_body": "Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem."
            }, {
              "text_body": "Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus."
            }]

Course.delete_all
Post.delete_all
Comment.delete_all

Course.create!(courses)

# Give each course a random sample of posts
Course.all.each { |course| course.posts.create!(posts.shuffle.slice(0, rand(1..50))) }

# Randomly sprinkle in some comments
(1..100).each do ||
  Post.all.sample.comments.create!(comments.shuffle.slice(0, rand(1..25)))
  Comment.all.sample.comments.create!(comments.shuffle.slice(0, rand(1..10)))
end
