var mongoose = require('mongoose');
var { Reserve, Room, Teacher } = require('./Reservation_Schema');

mongoose.connect('mongodb://localhost/test', { useNewUrlParser: true });
var ObjectId = mongoose.Types.ObjectId;

var db = mongoose.connection;

db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', function () {
    // Models
    var TeacherModel = mongoose.model('Teacher', Teacher);
    var RoomModel = mongoose.model('Room', Room);
    var ReserveModel = mongoose.model('Reserve', Reserve);

    // First Query
    ReserveModel.find({ state: 'Pending' }, function (err, pendings) {
        console.log(pendings)
    });

    // Second Query
    ReserveModel.find({ teacher: { _id: ObjectId("5d11eb21b810936bba5a1f56") } }, function (err, reservations) {
        console.log(reservations)
    });

    // Third Query
    RoomModel.find({ capacity: { $gt: 4 } }, function (err, rooms) {
        if (err) return console.error(err);
        console.log(rooms)
    });

    // Fourth Query
    TeacherModel.find({}).sort({ birthday: 1 }).limit(1).exec(function (err, teacher) {
        ReserveModel.find({ teacher: { _id: teacher[0]._id } }, function (err, reservations) {
            console.log(reservations)
        });
    })
});
