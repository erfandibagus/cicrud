<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<title>CRUD</title>
</head>

<body class="pt-4">
	<div class="container mb-5">
		<div class="row">
			<div class="col-md">
				<a class="btn btn-primary add" href="#" data-toggle="modal" data-target="#modal" title="Add"><i class="fa fa-plus-circle"></i> Add</a>
				<a class="btn btn-danger truncate ml-2" href="#" data-toggle="modal" data-target="#deleteModal" title="Clean"><i class="fa fa-trash"></i> Clean</a>
				<?= $this->session->flashdata('msg'); ?>
				<div class="table-responsive mt-4">
					<table class="table table-bordered" id="dataTable">
						<thead class="thead-dark">
							<tr>
								<th>#</th>
								<th>Names</th>
								<th>Email</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<?php $i = 1;
							foreach ($users as $user) { ?>
								<tr>
									<td><?= $i++; ?></td>
									<td><?= $user->names; ?></td>
									<td><?= $user->email; ?></td>
									<td>
										<a class="btn btn-success btn-sm mr-1 detail" href="#" data-toggle="modal" data-target="#detailModal" title="Detail" data-id="<?= $user->id; ?>"><i class="fa fa-eye"></i></a>
										<a class="btn btn-warning btn-sm mr-1 edit" href="#" data-toggle="modal" data-target="#modal" title="Edit" data-id="<?= $user->id; ?>"><i class="fa fa-pencil"></i></a>
										<a class="btn btn-danger btn-sm mr-1 delete" href="#" data-toggle="modal" data-target="#deleteModal" title="Delete" data-id="<?= $user->id; ?>"><i class="fa fa-trash"></i></a>
									</td>
								</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- Add & Edit Modal -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalTitle" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<form action="<?= base_url('crud/add') ?>" method="POST">
				<div class="modal-content">
					<div class="modal-header bg-dark text-white">
						<h5 class="modal-title" id="modalTitle">Add New</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<input type="hidden" name="id" id="id">
						<div class="form-group">
							<label for="names">Name</label>
							<input class="form-control" type="text" name="names" id="names" required>
						</div>
						<div class="form-group">
							<label for="address">Address</label>
							<textarea class="form-control" name="address" id="address" rows="5" required></textarea>
						</div>
						<div class="form-group">
							<label for="region">Region</label>
							<input class="form-control" type="text" name="region" id="region" required>
						</div>
						<div class="form-group">
							<label for="country">Country</label>
							<input class="form-control" type="text" name="country" id="country" required>
						</div>
						<div class="form-group">
							<label for="email">Email</label>
							<input class="form-control" type="email" name="email" id="email" required>
						</div>
						<div class="form-group">
							<label for="phone">Phone</label>
							<input class="form-control" type="number" name="phone" id="phone" required>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-dark">Add</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- Detail Modal -->
	<div class="modal fade" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="detailModalTitle" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<form action="" method="POST">
				<div class="modal-content">
					<div class="modal-header bg-dark text-white">
						<h5 class="modal-title" id="detailModalTitle"></h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<input type="hidden" name="id" id="id">
						<div id="result"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- Delete & Clean Modal -->
	<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalTitle" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<form action="" method="POST">
				<div class="modal-content">
					<div class="modal-header bg-dark text-white">
						<h5 class="modal-title" id="deleteModalTitle"></h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<input type="hidden" name="id" id="id">
						<div id="result"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-danger"></button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script src="https://blackrockdigital.github.io/startbootstrap-sb-admin-2/vendor/jquery/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="<?= base_url('assets/js/script.js'); ?>"></script>
</body>

</html>