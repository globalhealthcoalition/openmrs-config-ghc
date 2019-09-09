Bahmni.ConceptSet.FormConditions.rules = {
    'Blood Pressure' : function (formName, formFieldValues) {
        var bloodPressure = formFieldValues['Blood Pressure'];
        var regex = /\d/g;
        if (regex.test(bloodPressure)) {
            return {
                enable: ["Posture"]
            };
        } else {
            return {
                disable: ["Posture"]
            };
        }
    },
    'Diastolic Data' : function (formName, formFieldValues) {
        var diastolic = formFieldValues['Diastolic Data'];
        if (diastolic) {
            return {
                enable: ["Posture"]
            };
        } else {
            return {};
        }
    },
    'Systolic Data' : function (formName, formFieldValues) {
        var systolic = formFieldValues['Systolic Data'];
        if (systolic) {
            return {
                enable: ["Posture"]
            };
        } else {}
    },
    'GHC_Other actions': function (formName, formFieldValues) {
        var answer = formFieldValues['GHC_Other actions'];
        if (answer) {
            return {
                show: ['GHC_Non coded actions']
            };
        } else {
            return {
                hide: ['GHC_Non coded actions']
            };
        }
    },
    'GHC_Ulcerations': function (formName, formFieldValues) {
        var answer = formFieldValues['GHC_Ulcerations'];
        if (answer) {
            return {
                show: ['GHC_Ulcerations location']
            };
        } else {
            return {
                hide: ['GHC_Ulcerations location']
            };
        }
    },
    'GHC_Vesicles': function (formName, formFieldValues) {
        var answer = formFieldValues['GHC_Vesicles'];
        if (answer) {
            return {
                show: ['GHC_Vesicles location']
            };
        } else {
            return {
                hide: ['GHC_Vesicles location']
            };
        }
    }
};