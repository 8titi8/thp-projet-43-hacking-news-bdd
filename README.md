<h1>The Hacking Project - Semaine 4 - Mercredi</h1>

<h2>Projet : The Hacking News</h2>

<p>Edité par 
	<ul>
		<li>🤩 <strong>Gaëlle Gorgori</strong> : 06 62 31 97 81</li>
		<li>😎 <strong>Thomas Fernandez</strong> : 06 58 88 68 09</li>
		<li>🤗 <strong>Mathilde Ray</strong> : 06 25 98 18 85</li>
		</ul></p>
		
<p>On veut créer un message board à la Hacker News. Les utilisateurs peuvent poster des liens. Les autres utilisateurs peuvent commenter les liens soumis, ou commenter les commentaires. Comment faire en sorte qu'un commentaire sache où dans la hiérarchie il se trouve ? 🤔</p>


<p> Pour ce faire nous avons créé le modèle suivant: 
	<ul>
		<li> <strong>User</strong> qui a comme attributs 'first_name', 'last-name' et 'email'.<br/>
			- <em>has_many</em> : Un User a plusieurs liens, commentaires et commentaires de commentaires</li>
		<li> <strong>Lien</strong> qui a comme attributs 'title' et 'url'.<br/>
			- <em>belongs_to</em> : Un Lien appartient à un utilisateur<br/>
			- <em>has_many</em> : Un Lien a plusieurs commentaires</li>
		<li> <strong>Comment</strong> qui a comme attribut 'content'.<br/>
			- <em>has_many</em> : Un Commentaire a plusieurs commentaires<br/>
			- <em>belongs_to</em> : Un commentaire appartient à un utilisateur et un lien</li>
		<li> <strong>CommentOfComment</strong> qui a comme attribut 'content'.<br/>
			- <em>belongs_to</em> : Un commentaire appartient à un utilisateur et à un commentaire</li>
		</ul></p>

<p>Ce programme a été fait avec rails.
Il utilise toutes les gems de RAILS par défaut, plus celle de FAKER qui permet d'avoir des données dans la base.</p>

