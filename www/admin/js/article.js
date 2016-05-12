var o = {
    save: function () {
        $.ajax({
            url: '/admin/article',
            type: 'post',
            data: {
                _model: $('form').serialize()
            },
            success: function (rs) {
                $('.alert').hide();
                if (rs.status) {
                    $('.alert.alert-success').show().text('保存成功！');
                    location.href = '/admin/articles/';
                } else {
                    console.log(rs.error);
                    $('.alert.alert-danger').show().text(rs.error.toString());
                }
            },
            error: function (err) {
                $('.alert').hide();
                $('.alert.alert-warning').show().text('网络异常！');
            }
        })
    },
    uploadImgHandler: function () {

    },
    init: function () {
        for (var key in data) {
            var $key = $('form [name=' + key + ']');
            if ($key.length) {
                var tagName = $key.get(0).tagName;
                var type = $key.attr('type');
                if (tagName == 'INPUT') {
                    if (type == 'text' || type == 'password' || type == 'hidden') {
                        $key.val(data[key])
                    }
                } else if (tagName == 'SELECT') {
                    $key.val(data[key])
                }
            }
        }

        $('.upload-operate').click(function () {
            $('.upload-file').click();
        })

        $('.upload-file').onchange(function () {

        })
    }
};

$(function () {
    o.init();
})


