  drop table  corporation
  drop table department
  drop table activity
  insert into corporation values(1)
  insert into department values(1,1)
  insert into department values(2,2)
  insert into activity values(1,2)
  select endtime from ACTIVE where endtime<(select sysdate from dual)
--������
create table baoming(
bid int primary key,
aname varchar2(50), --�����
bclass varchar(20),--�����˰༶
bname varchar(10),
tel number--��ϵ��ʽ
)
select * from baoming
insert into baoming values(baoming_bid.nextval,'2016-10-10Ұ��','��Ϣ1301','����',13142359843)
--���
create table active(
aid int primary key,
aname varchar2(50),
atime varchar2(100), --�ʱ��
acontent varchar2(1000),--�����
place varchar(30),--��ص�
tel number,--��ѯ�绰
acount int, --��������
endtime date--������ֹ����
)
select * from active
create sequence active_aid start with 1 increment by 1
create sequence baoming_bid start with 1 increment by 1
    update active set acount=acount+1 where aname='2016-10-10Ұ��'

insert into active values(active_aid.nextval,'�˷�������','2016-10-10һ����','����Ա������Լ�����','�����˼�',13142359843,0,to_date('2016-9-16','yyyy-MM-dd'));
select * from corporation;
  --���ű�
  create table corporation(
    cid int primary key,    --����id
    cname varchar2(100), --������
    logo varchar2(2000),   --����logo
    teacher varchar2(200),  --ָ����ʦ
    head varchar2(100),		--���Ÿ�����/�᳤/ͷ��
    tel varchar2(20),      --�ٷ���ϵ�绰
    email varchar2(200),  --�ٷ���ϵ����
    cintroduce clob --���ż�� 
  );
  select cid,cname,head,tel,email from CORPORATION;
create sequence corporation_cid start with 1 increment by 1;
insert into corporation values(corporation_cid.nextval,'����־Ը��Э��',null,'��ΰ','��»˧','18216021360','1209614483@qq.com','');
insert into corporation values(corporation_cid.nextval,'�黭Э��',null,'��ΰ','��»˧','18216021360','1209614483@qq.com','');
insert into corporation values(corporation_cid.nextval,'���հ�����Э��',null,'��ΰ','��»˧','18216021360','1209614483@qq.com','');
insert into corporation values(corporation_cid.nextval,'�����Э��',null,'��ΰ','��»˧','18216021360','1209614483@qq.com','');

  drop table corporation;
  
  --���ű�
  create table department(
  did  int primary key,
  cid int constraint department_cid references corporation(cid),
  dname varchar2(50),--������
  dintroduce varchar2(2000)--���ż��  
  )
  drop table department;
  
  --�û���   ��Ա��
  create table users(
    usid int primary key,
    username varchar2(50),
    password varchar2(50),
  email varchar2(100),
 sex varchar2(20),
 age int,
 userclass varchar2(100),
 home varchar2(20),
 phone varchar2(100),
 pic varchar2(30)
  )
  drop table users;
 
  select * from users
  select userenv('language') from dual
  --������Ϣ��
  create table personal(
  pid int constraint personal_pid references Cuser(usid),
  pname varchar2(50),--����
  pclass varchar2(70),--�༶
  phone number(20) --��ϵ��ʽ
  )

drop table personal;
--���

--��Ϣ��    ���Ŷ�̬
create table infomation(
   infoid int primary key,
   title varchar2(200),  --��Ϣ����
   infodate date, --����
   content varchar2(2000),  --����
   infotype varchar2(20), --��Ϣ������
   club varchar2(20) --��������Ϣ������
)
commit
select * from infomation where infotype='activeannounced'
drop table infomation
insert into infomation values(info_infoid.nextval,'�黭Э��ҳ�����',to_date('2016-8-28','yyyy-MM-dd'),'����','activeannounced','shuhua');

create sequence info_infoid start with 1 increment by 1
insert into infomation values(info_infoid.nextval,'��Э��������',to_date('2016-8-28','yyyy-MM-dd'),'������Э���ں�����а�������','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'ְЭ������ս��',to_date('2016-8-26','yyyy-MM-dd'),'������Э���ں�����а�������','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'��Э������',to_date('2016-8-28','yyyy-MM-dd'),'������Э���ں�����а�������','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'ְЭ������',to_date('2016-8-29','yyyy-MM-dd'),'������Э���ں�����а�������','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'�����Э�������޵���',to_date('2016-8-31','yyyy-MM-dd'),'������Э���ں�����а�������','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'Ӣ��Э�᳿���',to_date('2016-8-18','yyyy-MM-dd'),'������Э���ں�����а�������','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'�����Э������',to_date('2016-8-24','yyyy-MM-dd'),'������Э���ں�����а�������','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'���հ�����Э������',to_date('2016-8-26','yyyy-MM-dd'),'������Э���ں�����а�������','activeannounced','qingxie');
insert into infomation values(info_infoid.nextval,'���հ�����Э������',to_date('2016-8-26','yyyy-MM-dd'),'������Э���ں�����а�������','12345678','qingxie');

insert into infomation values(info_infoid.nextval,'��վ����2',to_date('2016-8-28','yyyy-MM-dd'),'��վ����2����','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'��վ����3',to_date('2016-8-28','yyyy-MM-dd'),'��վ����3����','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'��վ����4',to_date('2016-8-28','yyyy-MM-dd'),'��վ����4����','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'��վ����5',to_date('2016-8-28','yyyy-MM-dd'),'��վ����5����','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'��վ��6',to_date('2016-8-28','yyyy-MM-dd'),'��վ����6����','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'��վ����7',to_date('2016-8-28','yyyy-MM-dd'),'��վ����7����','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'��վ����8',to_date('2016-8-28','yyyy-MM-dd'),'��վ����8����','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'��վ����9',to_date('2016-8-28','yyyy-MM-dd'),'��վ����9����','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'��վ����10',to_date('2016-8-28','yyyy-MM-dd'),'��վ����10����','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'��վ����11',to_date('2016-8-28','yyyy-MM-dd'),'��վ����11����','webnotice','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�1',to_date('2016-8-29','yyyy-MM-dd'),'��Ʒ�1����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�2',to_date('2016-8-30','yyyy-MM-dd'),'��Ʒ�2����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�3',to_date('2016-8-30','yyyy-MM-dd'),'��Ʒ�3����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�4',to_date('2016-8-22','yyyy-MM-dd'),'��Ʒ�4����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�5',to_date('2016-8-24','yyyy-MM-dd'),'��Ʒ�5����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�6',to_date('2016-8-25','yyyy-MM-dd'),'��Ʒ�6����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�7',to_date('2016-8-21','yyyy-MM-dd'),'��Ʒ�7����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�8',to_date('2016-8-15','yyyy-MM-dd'),'��Ʒ�8����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�9',to_date('2016-8-31','yyyy-MM-dd'),'��Ʒ�9����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬1',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬2����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬2',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬2����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬3',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬3����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬4',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬4����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬5',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬5����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬6',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬6����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬7',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬7����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬8',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬8����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬9',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬9����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬10',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬10����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'���Ŷ�̬11',to_date('2016-8-28','yyyy-MM-dd'),'���Ŷ�̬11����','shetuandongtai','qingxie');
insert into infomation values(info_infoid.nextval,'��������1',to_date('2016-8-28','yyyy-MM-dd'),'��������2����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'��������2',to_date('2016-8-28','yyyy-MM-dd'),'��������2����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'��������3',to_date('2016-8-28','yyyy-MM-dd'),'��������3����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'��������4',to_date('2016-8-28','yyyy-MM-dd'),'��������4����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'��������5',to_date('2016-8-28','yyyy-MM-dd'),'��������5����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'��������6',to_date('2016-8-28','yyyy-MM-dd'),'��������6����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'��������7',to_date('2016-8-28','yyyy-MM-dd'),'��������7����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'��������8',to_date('2016-8-28','yyyy-MM-dd'),'��������8����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'��������9',to_date('2016-8-28','yyyy-MM-dd'),'��������9����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'��������10',to_date('2016-8-28','yyyy-MM-dd'),'��������10����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'��������11',to_date('2016-8-28','yyyy-MM-dd'),'��������11����','glory','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��1',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��2����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��2',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��2����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��3',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��3����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��4',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��4����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��5',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��5����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��6',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��6����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��7',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��7����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��8',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��8����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��9',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��9����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��10',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��10����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'���⽻��11',to_date('2016-8-28','yyyy-MM-dd'),'���⽻��11����','discuss','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�1',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�2����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�2',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�2����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�3',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�3����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�4',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�4����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�5',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�5����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�6',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�6����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�7',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�7����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�8',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�8����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�9',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�9����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�10',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�10����','Boutique','qingxie');
insert into infomation values(info_infoid.nextval,'��Ʒ�11',to_date('2016-8-28','yyyy-MM-dd'),'��Ʒ�11����','Boutique','qingxie');

insert into infomation values(info_infoid.nextval,'���ڻ1',to_date('2016-9-19','yyyy-MM-dd'),'���ڻ����','���ڻ','����־Ը��Э��');
insert into infomation values(info_infoid.nextval,'���ڻ2',to_date('2016-9-19','yyyy-MM-dd'),'���ڻ����','���ڻ','����־Ը��Э��');
insert into infomation values(info_infoid.nextval,'���ڻ3',to_date('2016-9-19','yyyy-MM-dd'),'���ڻ����','���ڻ','����־Ը��Э��');
insert into infomation values(info_infoid.nextval,'���ڻ4',to_date('2016-9-19','yyyy-MM-dd'),'���ڻ����','���ڻ','����־Ը��Э��');
insert into infomation values(info_infoid.nextval,'���ڻ5',to_date('2016-9-19','yyyy-MM-dd'),'���ڻ����','���ڻ','�黭Э��');
insert into infomation values(info_infoid.nextval,'���ڻ6',to_date('2016-9-19','yyyy-MM-dd'),'���ڻ����','���ڻ','�黭Э��');
insert into infomation values(info_infoid.nextval,'���ڻ7',to_date('2016-9-19','yyyy-MM-dd'),'���ڻ����','���ڻ','�黭Э��');

insert into infomation values(info_infoid.nextval,'ý�屨��1',to_date('2016-9-19','yyyy-MM-dd'),'ý�屨������','ý�屨��','����־Ը��Э��');
insert into infomation values(info_infoid.nextval,'ý�屨��2',to_date('2016-9-19','yyyy-MM-dd'),'ý�屨������','ý�屨��','����־Ը��Э��');
insert into infomation values(info_infoid.nextval,'ý�屨��3',to_date('2016-9-19','yyyy-MM-dd'),'ý�屨������','ý�屨��','����־Ը��Э��');
insert into infomation values(info_infoid.nextval,'ý�屨��4',to_date('2016-9-19','yyyy-MM-dd'),'ý�屨������','ý�屨��','�黭Э��');
insert into infomation values(info_infoid.nextval,'ý�屨��5',to_date('2016-9-19','yyyy-MM-dd'),'ý�屨������','ý�屨��','�黭Э��');
insert into infomation values(info_infoid.nextval,'ý�屨��6',to_date('2016-9-19','yyyy-MM-dd'),'ý�屨������','ý�屨��','�黭Э��');

insert into infomation values(info_infoid.nextval,'У԰����1',to_date('2016-9-19','yyyy-MM-dd'),'У԰��������','У԰����','�㲥վ');
insert into infomation values(info_infoid.nextval,'У԰����2',to_date('2016-9-19','yyyy-MM-dd'),'У԰��������','У԰����','�㲥վ');
insert into infomation values(info_infoid.nextval,'У԰����3',to_date('2016-9-19','yyyy-MM-dd'),'У԰��������','У԰����','�㲥վ');
insert into infomation values(info_infoid.nextval,'У԰����4',to_date('2016-9-19','yyyy-MM-dd'),'У԰��������','У԰����','�㲥վ');
insert into infomation values(info_infoid.nextval,'У԰����5',to_date('2016-9-19','yyyy-MM-dd'),'У԰��������','У԰����','�㲥վ');
insert into infomation values(info_infoid.nextval,'У԰����6',to_date('2016-9-19','yyyy-MM-dd'),'У԰��������','У԰����','�㲥վ');
select * from infomation where infotype='���ڻ'
  --�ͷ���
  create table customservice(
  csid int primary key,
  csname varchar2(50),
  cssex varchar2(20) 
  )
  drop table customservice;

  
--���Ա�
create table  leaveword(
 lid int primary key,
 message varchar2(1000),
 ldate date
)
drop table leaveword;

--����Ա��
drop table admin;
drop sequence admin_aid ;
create sequence admin_aid start with 1 increment by 1;
create table admin(
  aid int primary key,
  aname varchar2(20), 
  apwd varchar2(20),
  aemail varchar2(100),  --�����˺�
  aphone varchar2(11),         --�ֻ���/֧�����˺�
  qq  varchar2(20),             --qq�˺�
  root int           --Ȩ��    1:��ͨ����Ա   2:��������Ա
)
insert into admin values(admin_aid.nextval,'������Э','jxqx','1634556914@qq.com','18274716931','1634556914',2);
insert into admin values(admin_aid.nextval,'tsh','aa','1634556914@qq.com','18274716931','1634556914',2);
insert into admin values(admin_aid.nextval,'����ְЭ','jxzx','1634556914@qq.com','18274716931','1634556914',1);
insert into admin values(admin_aid.nextval,'����ӢЭ','jxyx','1634556914@qq.com','18274716931','1634556914',1);
select * from admin;
select * from admin where aname='tsh' and apwd='aa';

--���»��
drop table director;
create table director(
  did int primary key,   --����id
  dname varchar2(20), 	--��������
  demail varchar2(100),  --�����˺�
  dphone varchar2(11),      --�ֻ���/֧�����˺�
  qq varchar2(20), 			--QQ�ʺ�
  corporation varchar2(40) ,     --����Э��
  department varchar2(20) ,      --��������
  place varchar2(20)       --����ְλ
);
create sequence director_did start with 1 increment by 1;
select * from director;
insert into director values(director_did.nextval,'��»˧1','1209614483@qq.com','18216021360','1209614483','����־Ը��Э��','�᳤��','�᳤');
insert into director values(director_did.nextval,'��»˧2','1209614483@qq.com','18216021360','1209614483','����־Ը��Э��','�᳤��','���᳤');
insert into director values(director_did.nextval,'��»˧3','1209614483@qq.com','18216021360','1209614483','����־Ը��Э��','�᳤��','���᳤');
insert into director values(director_did.nextval,'��»˧4','1209614483@qq.com','18216021360','1209614483','����־Ը��Э��','�᳤��','����');
insert into director values(director_did.nextval,'��»˧5','1209614483@qq.com','18216021360','1209614483','����־Ը��Э��','�᳤��','����');
insert into director values(director_did.nextval,'��»˧6','1209614483@qq.com','18216021360','1209614483','����־Ը��Э��','�칫��','����');
insert into director values(director_did.nextval,'��»˧7','1209614483@qq.com','18216021360','1209614483','����־Ը��Э��','�칫��','������');
insert into director values(director_did.nextval,'��»˧8','1209614483@qq.com','18216021360','1209614483','����־Ը��Э��','�칫��','������');
insert into director values(director_did.nextval,'��»˧9','1209614483@qq.com','18216021360','1209614483','����־Ը��Э��','�칫��','����');
insert into director values(director_did.nextval,'��»˧10','1209614483@qq.com','18216021360','1209614483','����־Ը��Э��','�칫��','����');

insert into director values(director_did.nextval,'������1','543919061@qq.com','15674732978','543919061','ְҵ��չ���ҵ��ҵЭ��','�᳤��','�᳤');
insert into director values(director_did.nextval,'������2','543919061@qq.com','15674732978','543919061','ְҵ��չ���ҵ��ҵЭ��','�᳤��','���᳤');
insert into director values(director_did.nextval,'������3','543919061@qq.com','15674732978','543919061','ְҵ��չ���ҵ��ҵЭ��','�᳤��','���᳤');
insert into director values(director_did.nextval,'������4','543919061@qq.com','15674732978','543919061','ְҵ��չ���ҵ��ҵЭ��','�칫��','����');
insert into director values(director_did.nextval,'������5','543919061@qq.com','15674732978','543919061','ְҵ��չ���ҵ��ҵЭ��','�칫��','������');
insert into director values(director_did.nextval,'������6','543919061@qq.com','15674732978','543919061','ְҵ��չ���ҵ��ҵЭ��','�칫��','������');
insert into director values(director_did.nextval,'������7','543919061@qq.com','15674732978','543919061','ְҵ��չ���ҵ��ҵЭ��','�칫��','����');

--��Ա��
create table member(
  mid int primary key,   --��Աid
  mname varchar2(20), 	--��Ա����
  memail varchar2(100),  --�����˺�
  mphone varchar2(11),      --�ֻ���/֧�����˺�
  qq varchar2(20), 			--QQ�ʺ�
  corporation varchar2(40) ,     --����Э��
  pay varchar2(20)					--��ѽ������
);
create sequence member_mid start with 1 increment by 1;
drop table member;
select * from member;
insert into member values(member_mid.nextval,'̷����','1634556914@qq.com','18274716931','1634556914','����־Ը��Э��','true');
insert into member values(member_mid.nextval,'��»˧','1634556914@qq.com','18274716931','1634556914','����־Ը��Э��','false');
insert into member values(member_mid.nextval,'����','1634556914@qq.com','18274716931','1634556914','ְҵ��չ���ҵ��ҵЭ��','true');
insert into member values(member_mid.nextval,'����','1634556914@qq.com','18274716931','1634556914','ְҵ��չ���ҵ��ҵЭ��','false');
insert into member values(member_mid.nextval,'����','1634556914@qq.com','18274716931','1634556914','�黭Э��','false');
insert into member values(member_mid.nextval,'����','1634556914@qq.com','18274716931','1634556914','Ӣ��Э��','true');
insert into member values(member_mid.nextval,'����','1634556914@qq.com','18274716931','1634556914','�����Э��','false');

create table photo(
pid int primary key,
pclub varchar2(20),
pname varchar2(100)
)
drop table photo;
create sequence photo_pid start with 1 increment by 1;
insert into photo values(photo_pid.nextval,'����־Ը��Э��','����');
select * from photo;