var editor;
function LoadEditor(obj) {
    KindEditor.ready(function (K) {
        editor = K.create(obj, {
            uploadJson: '../../inc/upload_json.ashx',
            fileManagerJson: '../../inc/file_manager_json.ashx',
            allowFileManager: true,
            filterMode: false,
            //items: ['source', '|', 'fontname', 'fontsize', 'forecolor', 'hilitecolor', 'removeformat', 'bold', 'italic', 'underline','strikethrough','removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright',
		    //'justifyfull', '|', 'emoticons', 'image', 'multiimage', 'link', 'unlink','table','hr', '|', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', '|', 'clearhtml', 'quickformat', 'selectall'],
            afterBlur: function () { this.sync(); }
        });
    });
}