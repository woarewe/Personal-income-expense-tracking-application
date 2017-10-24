$(document).on( "turbolinks:load", function() {
        var checkCategory = function(){
            var optGroup = $('#capital_category_id :selected').parent().attr('label');
            if (optGroup == 'Income') {
                $('#capital_type_income').prop('checked', true);
            }
            else {
                $('#capital_type_expense').prop('checked', true);
            }
        }
        checkCategory();
        $('#capital_category_id').change(checkCategory);
    }
);