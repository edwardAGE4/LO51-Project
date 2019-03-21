CREATE OR REPLACE procedure SendMail
(v_SMTP param_general.SMTP%type
,v_Port        param_general.PORT%type
,v_Expediteur  param_general.EXPEDITEUR%type
,v_Objet       param_general.OBJET%type
,v_NomDest     param_destinataire.NOM%type
,v_PrenomDest  param_destinataire.PRENOM%type
,v_EMailDest   param_destinataire.EMAIL%type
,v_CorpsMsg    varchar2) 
IS
v_Cnx utl_smtp.connection;
v_Msg varchar2(2000);
BEGIN
v_Cnx:=utl_smtp.open_connection(v_SMTP,v_Port);
utl_smtp.HELO(v_Cnx,v_SMTP); 
utl_smtp.MAIL(v_Cnx,v_Expediteur); 
utl_smtp.RCPT(v_Cnx,v_EMailDest); 
v_Msg:='date: '||TO_CHAR(sysdate,'dd mon yyyy hh24:mi:ss')||utl_tcp.CRLF|| 
'from: '||v_Expediteur||utl_tcp.CRLF|| 
'subject: '||v_Objet||utl_tcp.CRLF|| 
'to: '||v_NomDest||' '||v_PrenomDest||' <'||v_EMailDest||'>'||utl_tcp.CRLF|| 
utl_tcp.CRLF|| 
v_CorpsMsg||utl_tcp.CRLF; 
utl_smtp.data(v_Cnx,v_Msg);  
utl_smtp.quit(v_Cnx); 
EXCEPTION 
WHEN utl_smtp.transient_error OR utl_smtp.permanent_error THEN 
  utl_smtp.quit(v_Cnx); 
  raise_application_error(-20000,'Erreur send_mail:'||sqlerrm);
END;
/ 