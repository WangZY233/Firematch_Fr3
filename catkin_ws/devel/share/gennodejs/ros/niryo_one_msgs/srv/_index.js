
"use strict";

let GetTargetPose = require('./GetTargetPose.js')
let DebugColorDetection = require('./DebugColorDetection.js')
let GetPositionList = require('./GetPositionList.js')
let ChangeHardwareVersion = require('./ChangeHardwareVersion.js')
let PullAirVacuumPump = require('./PullAirVacuumPump.js')
let PushAirVacuumPump = require('./PushAirVacuumPump.js')
let GetDigitalIO = require('./GetDigitalIO.js')
let PingDxlTool = require('./PingDxlTool.js')
let DebugMarkers = require('./DebugMarkers.js')
let ManagePosition = require('./ManagePosition.js')
let ObjDetection = require('./ObjDetection.js')
let EditGrip = require('./EditGrip.js')
let GetWorkspaceList = require('./GetWorkspaceList.js')
let SetLeds = require('./SetLeds.js')
let CloseGripper = require('./CloseGripper.js')
let ManageProcess = require('./ManageProcess.js')
let UpdateConveyorId = require('./UpdateConveyorId.js')
let OpenGripper = require('./OpenGripper.js')
let SetString = require('./SetString.js')
let SetConveyor = require('./SetConveyor.js')
let RobotMove = require('./RobotMove.js')
let GetWorkspaceRatio = require('./GetWorkspaceRatio.js')
let EditWorkspace = require('./EditWorkspace.js')
let SetInt = require('./SetInt.js')
let GetWorkspaceRobotPoses = require('./GetWorkspaceRobotPoses.js')
let TakePicture = require('./TakePicture.js')
let ChangeMotorConfig = require('./ChangeMotorConfig.js')
let GetInt = require('./GetInt.js')
let GetSequenceList = require('./GetSequenceList.js')
let SetDigitalIO = require('./SetDigitalIO.js')
let SendCustomDxlValue = require('./SendCustomDxlValue.js')
let GetCalibrationCam = require('./GetCalibrationCam.js')
let ManageSequence = require('./ManageSequence.js')
let GetTrajectoryList = require('./GetTrajectoryList.js')
let SetSequenceAutorun = require('./SetSequenceAutorun.js')
let ManageTrajectory = require('./ManageTrajectory.js')
let SetCalibrationCam = require('./SetCalibrationCam.js')
let ControlConveyor = require('./ControlConveyor.js')

module.exports = {
  GetTargetPose: GetTargetPose,
  DebugColorDetection: DebugColorDetection,
  GetPositionList: GetPositionList,
  ChangeHardwareVersion: ChangeHardwareVersion,
  PullAirVacuumPump: PullAirVacuumPump,
  PushAirVacuumPump: PushAirVacuumPump,
  GetDigitalIO: GetDigitalIO,
  PingDxlTool: PingDxlTool,
  DebugMarkers: DebugMarkers,
  ManagePosition: ManagePosition,
  ObjDetection: ObjDetection,
  EditGrip: EditGrip,
  GetWorkspaceList: GetWorkspaceList,
  SetLeds: SetLeds,
  CloseGripper: CloseGripper,
  ManageProcess: ManageProcess,
  UpdateConveyorId: UpdateConveyorId,
  OpenGripper: OpenGripper,
  SetString: SetString,
  SetConveyor: SetConveyor,
  RobotMove: RobotMove,
  GetWorkspaceRatio: GetWorkspaceRatio,
  EditWorkspace: EditWorkspace,
  SetInt: SetInt,
  GetWorkspaceRobotPoses: GetWorkspaceRobotPoses,
  TakePicture: TakePicture,
  ChangeMotorConfig: ChangeMotorConfig,
  GetInt: GetInt,
  GetSequenceList: GetSequenceList,
  SetDigitalIO: SetDigitalIO,
  SendCustomDxlValue: SendCustomDxlValue,
  GetCalibrationCam: GetCalibrationCam,
  ManageSequence: ManageSequence,
  GetTrajectoryList: GetTrajectoryList,
  SetSequenceAutorun: SetSequenceAutorun,
  ManageTrajectory: ManageTrajectory,
  SetCalibrationCam: SetCalibrationCam,
  ControlConveyor: ControlConveyor,
};
