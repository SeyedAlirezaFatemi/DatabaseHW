var mongoose = require('mongoose');
var { Doctor, Patient, Relative, Medicine, Nurse, Room, Prescription, Supervision } = require('./Hospital_Schema');

mongoose.connect('mongodb://localhost/test', { useNewUrlParser: true });
var ObjectId = mongoose.Types.ObjectId;

var db = mongoose.connection;

db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', function () {
    // Models
    var PatientModel = mongoose.model('Patient', Patient);
    var DoctorModel = mongoose.model('Doctor', Doctor);
    var RelativeModel = mongoose.model('Relative', Relative);
    var MedicineModel = mongoose.model('Medicine', Medicine);
    var NurseModel = mongoose.model('Nurse', Nurse);
    var RoomModel = mongoose.model('Room', Room);
    var SupervisionModel = mongoose.model('Supervision', Supervision);
    var PrescriptionModel = mongoose.model('Prescription', Prescription);

    // Some Data Creation

    // var seyed = new DoctorModel({ first_name: 'Seyed Alireza', last_name: 'Fatemi Jahromi', profession: 1 })
    // seyed.save(function (err, seyed) {
    //     if (err) return console.error(err);
    // });

    // var seyedPatient = new PatientModel({ first_name: 'Seyed Alireza', last_name: 'Fatemi Jahromi' })
    // seyedPatient.save(function (err, seyed) {
    //     if (err) return console.error(err);
    // });

    // PatientModel.find({}, function (err, patients) {
    //     console.log(patients)
    //     var rezaRel = new RelativeModel({ last_name: 'Asghari', patient: patients[0] })
    //     rezaRel.save(function (err, seyed) {
    //         if (err) return console.error(err);
    //     });
    // })

    // First Query
    PatientModel.updateOne({ _id: ObjectId("5d11eb21b810936bba5a1f56") }, { first_name: 'Master Alireza' }, function (err, data) {
        console.log(data)
    })

    // Second Query
    RelativeModel.find({ patient: { _id: ObjectId("5d11eb21b810936bba5a1f56") } }, function (err, relatives) {
        console.log(relatives)
    });

    // Some Data for the Third Query
    // new MedicineModel({ name: 'Alina', company: 'Abidi', price: 10 }).save(function (err, medicine) {
    //     if (err) return console.error(err);
    // });
    // new MedicineModel({ name: 'Namina', company: 'Abidi', price: 12 }).save(function (err, medicine) {
    //     if (err) return console.error(err);
    // });
    // new MedicineModel({ name: 'Zamin', company: 'Abidi', price: 14 }).save(function (err, medicine) {
    //     if (err) return console.error(err);
    // });
    // new MedicineModel({ name: 'Dinner', company: 'Abidi', price: 16 }).save(function (err, medicine) {
    //     if (err) return console.error(err);
    // });
    // new MedicineModel({ name: 'Lunch', company: 'Abidi', price: 18 }).save(function (err, medicine) {
    //     if (err) return console.error(err);
    // });
    // new MedicineModel({ name: 'Break', company: 'Abidi', price: 20 }).save(function (err, medicine) {
    //     if (err) return console.error(err);
    // });
    // new MedicineModel({ name: 'Point', company: 'Abidi', price: 22 }).save(function (err, medicine) {
    //     if (err) return console.error(err);
    // });
    // new MedicineModel({ name: 'Out', company: 'Abidi', price: 24 }).save(function (err, medicine) {
    //     if (err) return console.error(err);
    // });
    // new MedicineModel({ name: 'Catch', company: 'Abidi', price: 26 }).save(function (err, medicine) {
    //     if (err) return console.error(err);
    // });

    // Third Query
    MedicineModel.find({}).sort({ price: -1 }).skip(5).limit(5).exec(function (err, medicines) {
        if (err) return console.error(err);
        console.log(medicines)
    });

});
