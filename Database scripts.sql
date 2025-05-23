create database JoyfulHome_book
go
USE [JoyfulHome_book]
GO
/****** Object:  Table [dbo].[Commodity]    Script Date: 2025/1/13 18:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commodity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CName] [nvarchar](50) NULL,
	[CPrice] [decimal](10, 2) NULL,
	[CImg] [nvarchar](200) NULL,
	[Context] [nvarchar](max) NULL,
	[CState] [nvarchar](20) NULL,
	[CInventory] [int] NULL,
	[P_name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historicalorders]    Script Date: 2025/1/13 18:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historicalorders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CId] [int] NULL,
	[OId] [int] NULL,
	[HName] [nvarchar](50) NULL,
	[HPrice] [decimal](10, 2) NULL,
	[HImg] [nvarchar](200) NULL,
	[HXdnumber] [int] NULL,
	[Uid] [int] NULL,
	[Bookreturntime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderhistory]    Script Date: 2025/1/13 18:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderhistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[U_id] [int] NULL,
	[OSummoney] [decimal](10, 2) NULL,
	[Odate] [datetime] NULL,
	[OAddress] [nvarchar](500) NULL,
	[Onumber] [int] NULL,
	[Ostate] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 2025/1/13 18:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[P_name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shoppingcart]    Script Date: 2025/1/13 18:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoppingcart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CId] [int] NULL,
	[U_id] [int] NULL,
	[SName] [nvarchar](50) NULL,
	[SPrice] [decimal](10, 2) NULL,
	[SImg] [nvarchar](200) NULL,
	[SXdnumber] [int] NULL,
	[Sdate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2025/1/13 18:55:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PassWords] [nvarchar](50) NULL,
	[Addresss] [nvarchar](500) NULL,
	[Identitys] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Commodity] ON 

INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (8, N'Ordinary world', CAST(1.00 AS Decimal(10, 2)), N'/Img/书平凡的世界.png', N'It is a novel written by Chinese writer Lu Yao and is known as a classic of contemporary Chinese literature. The novel is set in rural China from the 20s to the 70s of the 20th century, and profoundly depicts the changes and destiny of a family and an era through the growth experience of the protagonist Sun Shaoan. The plot of the work is tortuous, the characters are full, and the language is plain and sincere, which has high literary value and social influence. "Ordinary World" is not only a literary work, but also a profound reflection and exploration of Chinese social history and human nature.', N'已上架', 310, N'Books')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (9, N'Four generations in the same house', CAST(1.00 AS Decimal(10, 2)), N'/Img/活着.png', N'"Four Generations in the Same Hall" is a novel written by modern Chinese writer Lao She, describing the life and fate of four generations of a family. Set in the hutongs of Beijing, the novel vividly shows the emotional entanglements and details of life between family members. Through the depiction of family changes, it reflects the changes in Chinese society and the evolution of family values. With his delicate brushstrokes and profound insight, Lao She has created a number of lifelike characters, making his works classics in modern Chinese literature and sparking extensive cultural and social discussions.', N'已上架', 100, N'Books')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (14, N'Dream', CAST(1.00 AS Decimal(10, 2)), N'/Img/R-C.jpg', N'Dream of the Red Chamber is the pinnacle of classical Chinese literature and one of the treasures of world literature. The following is a detailed description of "Dream of Red Mansions":

1. Background and author of the work

"Dream of Red Mansions" was created by the Qing Dynasty writer Cao Xueqin, originally known as "The Stone Record", is a description of the rise and fall of the four major families of Jia, Shi, Wang, and Xue, with the love and marriage stories of Jia Baoyu, Lin Daiyu, and Xue Baochai as the main line, depicting the life of some boudoir beauties, showing the true beauty of human nature and tragic beauty, and is an epic work that shows the various states of ancient Chinese society from all angles.

Cao Xueqin, known as Zhan, Mengruan, Xueqin, Qinxi, Qinpu, was a famous novelist, poet and painter in the Qing Dynasty of China. He was born in a prominent family of eunuchs, and later experienced the bitterness of life due to the decline of his family, and with perseverance, after years of hardship, he created a great work of great ideology and artistry - "Dream of Red Mansions".

2. Synopsis of the story

"Dream of Red Mansions" begins with Jia Baoyu''s strange stone dreams, and introduces the characters and customs of the Ning Rong family, as well as Jia Baoyu''s life experience and growth. The story revolves around the love entanglement between Jia Baoyu, Lin Daiyu and Xue Baochai, and also involves the lives and emotions of many other characters. Behind the prosperity of Jiafu, there is a hidden crisis of family decay, as well as various social contradictions and problems. In the end, with the decline of Jiafu and the ordination of Jia Baoyu, the story ends in tragedy.

3. Main characters

Jia Baoyu: The protagonist of the novel, he has a rebellious personality, dissatisfied with the constraints of feudal etiquette, and pursues freedom and sincere love.
Lin Daiyu: Jia Baoyu''s cousin, with outstanding talent, sensitive and suspicious personality, has a deep relationship with Jia Baoyu.
Xue Baochai: Jia Baoyu''s cousin, she is gentle and dignified, good at handling interpersonal relationships, and is a model of feudal etiquette.
Wang Xifeng: Jiafu''s housekeeper wife, she is shrewd and capable, but she is also ruthless, and she is one of the important promoters of Jiafu''s decline.
Fourth, artistic characteristics

When describing the characters, "Dream of Red Mansions" is good at using delicate brushstrokes and vivid language to vividly depict the characters'' personality characteristics and emotional states.
The works are full of poetry and beauty, whether it is depicting natural scenery or the emotions of the characters, they are full of strong artistic atmosphere.
"Dream of Red Mansions" also shows the various shortcomings and problems of feudal society through rich plots and delicate descriptions, which is highly ideological and critical.
5. Historical status and influence

"Dream of the Red Chamber" not only occupies an important place in the history of Chinese literature, but also has a wide impact on the world. It is known as the pinnacle of ancient Chinese novels and has extremely high artistic and ideological value. At the same time, "Dream of Red Chambers" has also had a profound impact on traditional Chinese culture, art and social life, and has become an important part of Chinese culture.

To sum up, Dream of Red Mansions is a great work with profound ideological connotation and high artistic achievement, which has attracted countless readers and researchers with its unique charm. By studying this work, we can gain a deeper understanding of the historical and cultural background of ancient Chinese society, as well as the complexity and diversity of human nature.', N'已上架', 100, N'literature')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (15, N'alive', CAST(1.00 AS Decimal(10, 2)), N'/Img/微信截图_20250113154229.png', N'"Alive" is Yu Hua''s classic work, which tells the tragic life of a farmer named Fugui who went from wealth to poverty. He experienced the breakdown of his family and the death of his relatives one after another, and finally only an old cow was left to accompany him, but he was still strong and alive. The novel shows the tenacity and hope of life, which is thought-provoking.', N'已上架', 100, N'literature')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (16, N'hide-and-seek', CAST(1.00 AS Decimal(10, 2)), N'/Img/kongbuxiaoshuofengmian_9310769.jpg', N'Hide and Seek is a horror novel about the protagonist who inadvertently falls into a spooky game of hide and seek. In the novel, mysterious ghosts and eerie atmospheres are intertwined, leaving readers with unprecedented fear. The storyline is twisty and exciting, full of thrills and excitement, and it is a creepy horror masterpiece.', N'已上架', 100, N'terror')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (17, N'Empty house', CAST(1.00 AS Decimal(10, 2)), N'/Img/th.jpg', N'"The Empty House" may refer to a number of different works, but here are two of the more well-known "The Empty House" descriptions:

1. "Empty House" by Yu Yijian
This is a long psychological horror novel carefully constructed by multiple suspense, and it is also the most representative work of Yu Yijian, the first person in Chinese horror novels, so far. The novel is permeated with a strong sense of loneliness, and the mysterious empty house is like a long rope around the neck, gradually pulling people into the abyss from which they cannot extricate themselves. Love and hate are intertwined in the story, which is enough to make people think for a long time after experiencing a lot of suspense and horror in reading.', N'已上架', 100, N'terror')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (18, N'The realm of grief', CAST(1.00 AS Decimal(10, 2)), N'/Img/th (1).jpg', N'"The Sorrowful Realm" (note: it should be "The Mirror of Sorrow" here, but it is described as "The Sorrowful Realm" as you requested) is a profound depiction of human nature and destiny, written by the famous writer Pierre Lemaitre, and is the final work of the "Goodbye in Heaven" trilogy. The novel is set in France during World War II, and through delicate psychological descriptions and ups and downs of the plot, it shows the joys and sorrows and life and death struggles of the little people in the shadow of war. In the process of pursuing the truth, the protagonist Louise has experienced all kinds of hardships in life, but she still adheres to the brilliance of humanity. With its deep themes, rich emotions, and superb writing skills, the work allows readers to feel sadness while also seeing the star of hope twinkling above the suffering.', N'已上架', 100, N'Sad')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (19, N'I don''t know what year it is', CAST(1.00 AS Decimal(10, 2)), N'/Img/微信截图_20250113155609.png', N'"I Don''t Know What Year It Is" is a modern romance novel written by Coral Literature contract writer Tang Zichen. The story is based on the in-depth investigation team of Xijing TV Station, and tells the story of when the TV station was facing a crisis of elimination, and He Nian, the leader of the deep investigation team, chose Jin Xi, an intern reporter who often spoke amazingly, to be the anchor of the new program "She Said". This new team, including self-righteous producers, unruly new streamers, and unique team members, will lead the show into an unknown future. The novel has a tight plot and distinct characters, and through their efforts and struggles, it shows the challenges and growth in the workplace, while also conveying the importance of perseverance and courage.', N'已上架', 98, N'Sad')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (20, N'Awan', CAST(1.00 AS Decimal(10, 2)), N'/Img/th (2).jpg', N'"Ah Yu" is a comic work with a great sense of humor and affinity, created by Mao Xiaole (Chen Le). The protagonist of the story, Ah Yu, formerly known as Ah Shuai, is a student in middle school who is afraid of kicking. He is not handsome, not tall, has a sloppy life, loves fried stinky tofu, often farts, and is always bullied by his classmates. However, he is helpful, compassionate, and never gives up in the face of difficulties and setbacks, always maintaining an optimistic attitude.

Ah Yu''s daily life is full of humor and fun, and his story revolves around him and his tablemate, the big-faced girl, his best friend Xiao Chong, the rich second generation Zhuang Ku, and his teacher Jin Chengwu, etc., and the friendship, competition, and interaction between them form the main plot of the comic. Through exaggerated plots, comical dialogues, and absurd situations, readers can feel the beauty of life in laughter, and convey some positive values.', N'已上架', 100, N'Funny')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (21, N'This history is so interesting', CAST(1.00 AS Decimal(10, 2)), N'/Img/016a91607f7cbc11013e3b7d9dccfe.jpg', N'"This History is Too Interesting" is a set of Chinese history books written for children, written by Qi Jixiang, the first docent of the National Museum of China, in collaboration with the Miaosi Museum. The book consists of 8 volumes, and through 120 precious historical relics as clues, it vividly and in detail introduces the development of China in various historical periods from ancient times to the Qing Dynasty. The book is accompanied by beautiful hand-drawn illustrations, turning esoteric historical knowledge into interesting ones, allowing children to immerse themselves in the reading and deepen their understanding. This book not only conveys correct historical knowledge, but also enriches children''s visual aesthetic experience, helping them broaden their horizons and form a correct world view.', N'已上架', 99, N'Funny')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (22, N'Guiguzi', CAST(1.00 AS Decimal(10, 2)), N'/Img/微信截图_20250113160232.png', N'"Guiguzi" is a work by the famous Taoist and the originator of the Zongheng family in the Warring States Period. There are 14 chapters in the book (the thirteenth and fourteenth of which are lost), which reflect the philosophy of life and resourcefulness of the Zongheng family, covering politics, military, diplomacy, psychology and other fields. With strategic thinking and psychological tactics as the core, the book elaborates on how to grasp the situation, figure out people''s hearts, and achieve goals through flexible use of strategies. His ideas are deeply respected by the world, and are known as "the forbidden fruit of wisdom, the strange book of the world", which has had a profound impact on later generations.', N'已上架', 100, N'Strategy')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (23, N'The Art of War', CAST(1.00 AS Decimal(10, 2)), N'/Img/微信截图_20250113160318.png', N'The Art of War is a famous military work in ancient China, written by Sun Wu, a military strategist in the Spring and Autumn Period, and is one of the earliest military theoretical works in the world. The book is divided into 13 chapters, which are broad and profound, covering many aspects such as war strategy, tactical arrangement, army management, terrain utilization, and espionage.

"The Art of War" takes "a soldier is a sophisticer" as its core idea, emphasizing the need to be good at using wisdom and flexibility in war, and to achieve the greatest victory at the lowest cost. The classic strategic ideas put forward in the book, such as "knowing oneself and knowing one''s opponent, not being defeated in a hundred battles" and "going to the army to fight and strategize," have not only been widely used in the military field, but have also had a far-reaching impact on politics, economy, commerce, sports, and other fields. His unique philosophical ideas and strategic wisdom are still widely studied and applied today.', N'已上架', 99, N'Strategy')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (24, N'From excellence to Yuexiu', CAST(1.00 AS Decimal(10, 2)), N'/Img/微信截图_20250113160650.png', N'I''m guessing you''re probably asking about Good to Great, a book on business management by American management scientist Jim Collins.

The book paints a grand blueprint for a great company to make the leap to a great company, revealing the secret of the company''s excellence. Over the course of five years, Collins and his research team read and systematically organized 6,000 articles, recorded more than 2,000 pages of interviews, created 384 million bytes of computer data, collected articles from 28 companies from the past 50 years or more, and conducted a wide range of qualitative and quantitative analyses to come up with amazing and exciting answers on how to take a company from good to great.

The book is divided into nine chapters, and the book puts forward a set of ideas, including the fifth level of managers, people before things, facing the cruel reality, the hedgehog concept, the flywheel effect, etc., providing companies with specific paths and methods to achieve excellence.', N'已上架', 99, N'commerce')
INSERT [dbo].[Commodity] ([Id], [CName], [CPrice], [CImg], [Context], [CState], [CInventory], [P_name]) VALUES (25, N'Plain books', CAST(1.00 AS Decimal(10, 2)), N'/Img/微信截图_20250113160812.png', N'The Book of Plains is an ancient Chinese classic, which is said to have been written by Huang Shigong in the late Qin and early Han dynasties. The book consists of six chapters, the language is concise and far-reaching, and it integrates the essence of Taoism, virtue, benevolence, righteousness, propriety and other ideas. It takes Taoism as its purpose, and at the same time integrates the ideas of Confucianism, law, and soldiers, and expounds the laws of the operation of all things in the universe and the fundamental laws of governing the country.

The Plain Book is not only a theoretical work, but also a practical guide to action. It teaches people how to cultivate their self-cultivation, recognize and employ people, govern the country and the country, and puts forward many profound insights on how to behave in the world and govern the country. Whether it is a leader, a manager or an ordinary person, they can draw wisdom and strength from it to improve their own life realm. This classic, which spans thousands of years, still shines with the light of wisdom and has important enlightenment significance for modern society.', N'已上架', 99, N'commerce')
SET IDENTITY_INSERT [dbo].[Commodity] OFF
GO
SET IDENTITY_INSERT [dbo].[Historicalorders] ON 

INSERT [dbo].[Historicalorders] ([Id], [CId], [OId], [HName], [HPrice], [HImg], [HXdnumber], [Uid], [Bookreturntime]) VALUES (18, 25, 12, N'Plain books', CAST(1.00 AS Decimal(10, 2)), N'/Img/微信截图_20250113160812.png', 1, 1, NULL)
INSERT [dbo].[Historicalorders] ([Id], [CId], [OId], [HName], [HPrice], [HImg], [HXdnumber], [Uid], [Bookreturntime]) VALUES (19, 19, 12, N'I don''t know what year it is', CAST(2.00 AS Decimal(10, 2)), N'/Img/微信截图_20250113155609.png', 2, 1, CAST(N'2025-01-13T16:15:05.310' AS DateTime))
INSERT [dbo].[Historicalorders] ([Id], [CId], [OId], [HName], [HPrice], [HImg], [HXdnumber], [Uid], [Bookreturntime]) VALUES (20, 24, 13, N'From excellence to Yuexiu', CAST(1.00 AS Decimal(10, 2)), N'/Img/微信截图_20250113160650.png', 1, 1, NULL)
INSERT [dbo].[Historicalorders] ([Id], [CId], [OId], [HName], [HPrice], [HImg], [HXdnumber], [Uid], [Bookreturntime]) VALUES (21, 23, 13, N'The Art of War', CAST(1.00 AS Decimal(10, 2)), N'/Img/微信截图_20250113160318.png', 1, 1, NULL)
INSERT [dbo].[Historicalorders] ([Id], [CId], [OId], [HName], [HPrice], [HImg], [HXdnumber], [Uid], [Bookreturntime]) VALUES (22, 21, 13, N'This history is so interesting', CAST(1.00 AS Decimal(10, 2)), N'/Img/016a91607f7cbc11013e3b7d9dccfe.jpg', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Historicalorders] OFF
GO
SET IDENTITY_INSERT [dbo].[Orderhistory] ON 

INSERT [dbo].[Orderhistory] ([Id], [U_id], [OSummoney], [Odate], [OAddress], [Onumber], [Ostate]) VALUES (12, 1, CAST(3.00 AS Decimal(10, 2)), CAST(N'2025-01-13T16:13:38.757' AS DateTime), N'221 Ring Road,Callaghan(NsW),2308,Australia', 3, N'未发货')
INSERT [dbo].[Orderhistory] ([Id], [U_id], [OSummoney], [Odate], [OAddress], [Onumber], [Ostate]) VALUES (13, 1, CAST(3.00 AS Decimal(10, 2)), CAST(N'2025-01-13T18:29:12.593' AS DateTime), N'221 Ring Road,Callaghan(NsW),2308,Australia', 3, N'未发货')
SET IDENTITY_INSERT [dbo].[Orderhistory] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([id], [P_name]) VALUES (1, N'Books')
INSERT [dbo].[ProductType] ([id], [P_name]) VALUES (8, N'literature')
INSERT [dbo].[ProductType] ([id], [P_name]) VALUES (9, N'terror')
INSERT [dbo].[ProductType] ([id], [P_name]) VALUES (10, N'Sad')
INSERT [dbo].[ProductType] ([id], [P_name]) VALUES (11, N'Funny')
INSERT [dbo].[ProductType] ([id], [P_name]) VALUES (12, N'Strategy')
INSERT [dbo].[ProductType] ([id], [P_name]) VALUES (13, N'commerce')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([Id], [FirstName], [LastName], [FullName], [Email], [PassWords], [Addresss], [Identitys]) VALUES (1, N'Cus', N'Tomer', N'Cus Tomer', N'customer@example.com', N'Password1', N'221 Ring Road,Callaghan(NsW),2308,Australia', N'顾客')
INSERT [dbo].[UserInfo] ([Id], [FirstName], [LastName], [FullName], [Email], [PassWords], [Addresss], [Identitys]) VALUES (2, N'xiao', N'jiao', N'xiao jiao', N'12346789@qq.com', N'123', N'122 shaoyang,Victoria (VIC),1122,Australia', N'顾客')
INSERT [dbo].[UserInfo] ([Id], [FirstName], [LastName], [FullName], [Email], [PassWords], [Addresss], [Identitys]) VALUES (3, N'Admin', N'Istrator', N'Admin Istrator', N'administrator@example.com', N'Pa$$wOrd', N'996 changlimian,Tasmania (TAS),11234,Australia', N'管理员')
INSERT [dbo].[UserInfo] ([Id], [FirstName], [LastName], [FullName], [Email], [PassWords], [Addresss], [Identitys]) VALUES (4, N'Empl', N'Oyee', N'Empl Oyee', N'employee@example.com', N'PasswOrd ', N'956 gongwuyuan,New South Wales (NSW),1919,Australia', N'员工')
INSERT [dbo].[UserInfo] ([Id], [FirstName], [LastName], [FullName], [Email], [PassWords], [Addresss], [Identitys]) VALUES (5, N'zhang', N'san', N'zhang san', N'zhangsan@163.com', N'123', N'007 dianzichang,Queensland (QLD),12123,Australia', N'顾客')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
