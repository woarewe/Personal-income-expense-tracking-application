$(document).on( "turbolinks:load", function() {
        $('#capital_category_id').change(function(){
            var optGroup = $('#capital_category_id :selected').parent().attr('label');
            if (optGroup == 'Income') {
                $('#capital_type_income').prop('checked', true);
            }
            else {
                $('#capital_type_expense').prop('checked', true);
            }
        });
    }
);