const host = 'http://' + window.location.hostname + '/crud';

$(function () {
    $('.add').on('click', function () {
        $('#modalTitle').html('Add');
        $('.modal-footer button[type=submit]').html('Add');
        $('#id').val('');
        $('#names').val('');
        $('#address').val('');
        $('#region').val('');
        $('#country').val('');
        $('#email').val('');
        $('#phone').val('');
    });

    $('.edit').on('click', function () {
        const id = $(this).data('id');
        $('#modalTitle').html('Update');
        $('.modal-footer button[type=submit]').html('Update');
        $('.modal form').attr('action', host + '/crud/update');
        $.ajax({
            url: host + '/crud/userid',
            data: {
                id: id
            },
            method: 'post',
            dataType: 'json',
            success: function (response) {
                $('#id').val(response.id);
                $('#names').val(response.names);
                $('#address').val(response.address);
                $('#region').val(response.region);
                $('#country').val(response.country);
                $('#email').val(response.email);
                $('#phone').val(response.phone);
            }
        });
    });

    $('.detail').on('click', function () {
        const id = $(this).data('id');
        $('#detailModalTitle').html('Detail');
        $.ajax({
            url: host + '/crud/userid',
            data: {
                id: id
            },
            method: 'post',
            dataType: 'json',
            success: function (response) {
                $('.modal-body #result').html(`
                    <table class="table table-borderless" cellspacing="0">
                        <tbody>
                            <tr>
                                <th>Names</th>
                                <td>` + response.names + `</td>
                            </tr>
                            <tr>
                                <th>Address</th>
                                <td>` + response.address + `</td>
                            </tr>
                            <tr>
                                <th>Region</th>
                                <td>` + response.region + `</td>
                            </tr>
                            <tr>
                                <th>Country</th>
                                <td>` + response.country + `</td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td>` + response.email + `</td>
                            </tr>
                            <tr>
                                <th>Phone</th>
                                <td>` + response.phone + `</td>
                            </tr>
                        </tbody>
                    </table>
                `);
            }
        });
    });

    $('.delete').on('click', function () {
        const id = $(this).data('id');
        $('#deleteModalTitle').html('Delete');
        $('.modal-footer button[type=submit]').html('Delete');
        $('.modal form').attr('action', host + '/crud/delete');
        $.ajax({
            url: host + '/crud/userid',
            data: {
                id: id
            },
            method: 'post',
            dataType: 'json',
            success: function (response) {
                $('.modal-body #id').val(response.id);
                $('.modal-body #result').html(`Are you sure to delete <strong>` + response.names + `</strong>?`);
            }
        });
    });

    $('.truncate').on('click', function () {
        $('#deleteModalTitle').html('Clean');
        $('.modal-body #id').val('truncate');
        $('.modal-footer button[type=submit]').html('Clean');
        $('.modal form').attr('action', host + '/crud/truncate');
        $('.modal-body #result').html('Are you sure to clean all data?');
    });
});