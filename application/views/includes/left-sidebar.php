<div class="app-body">
	<div class="sidebar clearfix">
		<nav class="sidebar-nav">
			<ul class="nav">

				<li class="nav-item">
					<a class="nav-link" href="../dashboard/show">
						<i class="nav-icon icon-speedometer"></i> Dashboard
					</a>
				</li>
				<li class="nav-title">Management</li>
				<?php if($current_user!=6){ ?>
				<li class="nav-item">
					<a class="nav-link" href="../../index.php/Request/loadAddRequest">
						<i class="nav-icon icon-plus"></i>Add Request</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="../request/loadHistory">
						<i class="nav-icon cui-task"></i>Request History</a>
				</li>
				<?php }else{ ?>
				<li class="nav-item">
					<a class="nav-link" href="../request/loadHistory">
						<i class="nav-icon cui-task"></i>Request History</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="../request/loadPage">
						<i class="nav-icon icon-chart"></i>Manage Request
					</a>
				</li>
				<?php } ?>
			</ul>
		</nav>
		<button class="sidebar-minimizer brand-minimizer" type="button"></button>
	</div>
	<main class="main">
