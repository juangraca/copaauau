Delimiter $$

Drop Procedure if exists acessar$$
Create Procedure acessar(pEmail varchar(200), pSenha varchar(64))
begin
	Declare qtd int default 0;
	
    Select count(*) into qtd from cliente 
	where nm_email = pEmail 
	and nm_senha = md5(pSenha);
    
    if (qtd = 0) Then
		signal sqlstate '45000' set message_text = 'Login e/ou senha inválida!';
    else
		Select nm_email, nm_cliente from cliente 
		where nm_email = pEmail 
		and nm_senha = md5(pSenha);
    end if;
end$$

Drop Procedure if exists buscarProgresso$$
Create Procedure buscarProgresso(pEmail varchar(200))
begin
	Declare qtdTotal int default 0;
    Declare qtdPossui int default 0;
    
    -- Quantas figurinhas no total?
	Select count(*) into qtdTotal from album 
		where nm_email = pEmail;
	
    -- Quantas figurinhas ele tem?
	Select count(*) into qtdPossui from album 
		where nm_email = pEmail and ic_possui = 1;
        
	Select qtdPossui, qtdTotal;
end$$

Drop Procedure if exists buscarTimes$$
Create Procedure buscarTimes()
begin
	Select cd_time, nm_time from time order by nm_time;
end$$

Drop Procedure if exists buscarAlbum$$
Create Procedure buscarAlbum(pEmail varchar(200))
begin
	select a.cd_figura, f.nm_figura, f.cd_time, t.nm_time, a.ic_possui 
	from album a join figura f on (a.cd_figura = f.cd_figura)
	join time t on (f.cd_time = t.cd_time)
	where nm_email = pEmail
	order by cd_figura;
end$$


Drop Procedure if exists alterarSituacaoFigurinha$$
Create Procedure alterarSituacaoFigurinha(pEmail varchar(200), pCodigo int, pSituacao bool)
begin
	Update album set ic_possui = pSituacao where nm_email = pEmail and cd_figura = pCodigo;
end$$


Delimiter ;