
"use strict";

let ExecuteTrajectoryFeedback = require('./ExecuteTrajectoryFeedback.js');
let MoveGroupFeedback = require('./MoveGroupFeedback.js');
let MoveGroupSequenceGoal = require('./MoveGroupSequenceGoal.js');
let PickupResult = require('./PickupResult.js');
let PlaceResult = require('./PlaceResult.js');
let PickupActionFeedback = require('./PickupActionFeedback.js');
let MoveGroupSequenceAction = require('./MoveGroupSequenceAction.js');
let MoveGroupActionGoal = require('./MoveGroupActionGoal.js');
let PlaceActionGoal = require('./PlaceActionGoal.js');
let ExecuteTrajectoryActionResult = require('./ExecuteTrajectoryActionResult.js');
let PickupAction = require('./PickupAction.js');
let MoveGroupAction = require('./MoveGroupAction.js');
let MoveGroupSequenceFeedback = require('./MoveGroupSequenceFeedback.js');
let PlaceGoal = require('./PlaceGoal.js');
let ExecuteTrajectoryAction = require('./ExecuteTrajectoryAction.js');
let PickupGoal = require('./PickupGoal.js');
let MoveGroupGoal = require('./MoveGroupGoal.js');
let PlaceActionFeedback = require('./PlaceActionFeedback.js');
let PlaceActionResult = require('./PlaceActionResult.js');
let ExecuteTrajectoryResult = require('./ExecuteTrajectoryResult.js');
let PickupActionResult = require('./PickupActionResult.js');
let MoveGroupSequenceResult = require('./MoveGroupSequenceResult.js');
let MoveGroupSequenceActionResult = require('./MoveGroupSequenceActionResult.js');
let PickupFeedback = require('./PickupFeedback.js');
let MoveGroupResult = require('./MoveGroupResult.js');
let PlaceFeedback = require('./PlaceFeedback.js');
let MoveGroupActionFeedback = require('./MoveGroupActionFeedback.js');
let ExecuteTrajectoryGoal = require('./ExecuteTrajectoryGoal.js');
let PickupActionGoal = require('./PickupActionGoal.js');
let ExecuteTrajectoryActionGoal = require('./ExecuteTrajectoryActionGoal.js');
let MoveGroupSequenceActionFeedback = require('./MoveGroupSequenceActionFeedback.js');
let PlaceAction = require('./PlaceAction.js');
let ExecuteTrajectoryActionFeedback = require('./ExecuteTrajectoryActionFeedback.js');
let MoveGroupActionResult = require('./MoveGroupActionResult.js');
let MoveGroupSequenceActionGoal = require('./MoveGroupSequenceActionGoal.js');
let ConstraintEvalResult = require('./ConstraintEvalResult.js');
let LinkScale = require('./LinkScale.js');
let PlannerParams = require('./PlannerParams.js');
let PlannerInterfaceDescription = require('./PlannerInterfaceDescription.js');
let JointLimits = require('./JointLimits.js');
let PlanningSceneComponents = require('./PlanningSceneComponents.js');
let OrientationConstraint = require('./OrientationConstraint.js');
let PositionConstraint = require('./PositionConstraint.js');
let PlaceLocation = require('./PlaceLocation.js');
let TrajectoryConstraints = require('./TrajectoryConstraints.js');
let WorkspaceParameters = require('./WorkspaceParameters.js');
let LinkPadding = require('./LinkPadding.js');
let MotionSequenceResponse = require('./MotionSequenceResponse.js');
let DisplayRobotState = require('./DisplayRobotState.js');
let PositionIKRequest = require('./PositionIKRequest.js');
let MoveItErrorCodes = require('./MoveItErrorCodes.js');
let GripperTranslation = require('./GripperTranslation.js');
let RobotState = require('./RobotState.js');
let CartesianTrajectory = require('./CartesianTrajectory.js');
let CostSource = require('./CostSource.js');
let DisplayTrajectory = require('./DisplayTrajectory.js');
let PlanningOptions = require('./PlanningOptions.js');
let Constraints = require('./Constraints.js');
let Grasp = require('./Grasp.js');
let AllowedCollisionMatrix = require('./AllowedCollisionMatrix.js');
let JointConstraint = require('./JointConstraint.js');
let MotionPlanResponse = require('./MotionPlanResponse.js');
let KinematicSolverInfo = require('./KinematicSolverInfo.js');
let ObjectColor = require('./ObjectColor.js');
let VisibilityConstraint = require('./VisibilityConstraint.js');
let CartesianPoint = require('./CartesianPoint.js');
let MotionPlanRequest = require('./MotionPlanRequest.js');
let ContactInformation = require('./ContactInformation.js');
let RobotTrajectory = require('./RobotTrajectory.js');
let MotionSequenceRequest = require('./MotionSequenceRequest.js');
let CartesianTrajectoryPoint = require('./CartesianTrajectoryPoint.js');
let AttachedCollisionObject = require('./AttachedCollisionObject.js');
let PlanningScene = require('./PlanningScene.js');
let BoundingVolume = require('./BoundingVolume.js');
let MotionPlanDetailedResponse = require('./MotionPlanDetailedResponse.js');
let OrientedBoundingBox = require('./OrientedBoundingBox.js');
let AllowedCollisionEntry = require('./AllowedCollisionEntry.js');
let PlanningSceneWorld = require('./PlanningSceneWorld.js');
let CollisionObject = require('./CollisionObject.js');
let GenericTrajectory = require('./GenericTrajectory.js');
let MotionSequenceItem = require('./MotionSequenceItem.js');

module.exports = {
  ExecuteTrajectoryFeedback: ExecuteTrajectoryFeedback,
  MoveGroupFeedback: MoveGroupFeedback,
  MoveGroupSequenceGoal: MoveGroupSequenceGoal,
  PickupResult: PickupResult,
  PlaceResult: PlaceResult,
  PickupActionFeedback: PickupActionFeedback,
  MoveGroupSequenceAction: MoveGroupSequenceAction,
  MoveGroupActionGoal: MoveGroupActionGoal,
  PlaceActionGoal: PlaceActionGoal,
  ExecuteTrajectoryActionResult: ExecuteTrajectoryActionResult,
  PickupAction: PickupAction,
  MoveGroupAction: MoveGroupAction,
  MoveGroupSequenceFeedback: MoveGroupSequenceFeedback,
  PlaceGoal: PlaceGoal,
  ExecuteTrajectoryAction: ExecuteTrajectoryAction,
  PickupGoal: PickupGoal,
  MoveGroupGoal: MoveGroupGoal,
  PlaceActionFeedback: PlaceActionFeedback,
  PlaceActionResult: PlaceActionResult,
  ExecuteTrajectoryResult: ExecuteTrajectoryResult,
  PickupActionResult: PickupActionResult,
  MoveGroupSequenceResult: MoveGroupSequenceResult,
  MoveGroupSequenceActionResult: MoveGroupSequenceActionResult,
  PickupFeedback: PickupFeedback,
  MoveGroupResult: MoveGroupResult,
  PlaceFeedback: PlaceFeedback,
  MoveGroupActionFeedback: MoveGroupActionFeedback,
  ExecuteTrajectoryGoal: ExecuteTrajectoryGoal,
  PickupActionGoal: PickupActionGoal,
  ExecuteTrajectoryActionGoal: ExecuteTrajectoryActionGoal,
  MoveGroupSequenceActionFeedback: MoveGroupSequenceActionFeedback,
  PlaceAction: PlaceAction,
  ExecuteTrajectoryActionFeedback: ExecuteTrajectoryActionFeedback,
  MoveGroupActionResult: MoveGroupActionResult,
  MoveGroupSequenceActionGoal: MoveGroupSequenceActionGoal,
  ConstraintEvalResult: ConstraintEvalResult,
  LinkScale: LinkScale,
  PlannerParams: PlannerParams,
  PlannerInterfaceDescription: PlannerInterfaceDescription,
  JointLimits: JointLimits,
  PlanningSceneComponents: PlanningSceneComponents,
  OrientationConstraint: OrientationConstraint,
  PositionConstraint: PositionConstraint,
  PlaceLocation: PlaceLocation,
  TrajectoryConstraints: TrajectoryConstraints,
  WorkspaceParameters: WorkspaceParameters,
  LinkPadding: LinkPadding,
  MotionSequenceResponse: MotionSequenceResponse,
  DisplayRobotState: DisplayRobotState,
  PositionIKRequest: PositionIKRequest,
  MoveItErrorCodes: MoveItErrorCodes,
  GripperTranslation: GripperTranslation,
  RobotState: RobotState,
  CartesianTrajectory: CartesianTrajectory,
  CostSource: CostSource,
  DisplayTrajectory: DisplayTrajectory,
  PlanningOptions: PlanningOptions,
  Constraints: Constraints,
  Grasp: Grasp,
  AllowedCollisionMatrix: AllowedCollisionMatrix,
  JointConstraint: JointConstraint,
  MotionPlanResponse: MotionPlanResponse,
  KinematicSolverInfo: KinematicSolverInfo,
  ObjectColor: ObjectColor,
  VisibilityConstraint: VisibilityConstraint,
  CartesianPoint: CartesianPoint,
  MotionPlanRequest: MotionPlanRequest,
  ContactInformation: ContactInformation,
  RobotTrajectory: RobotTrajectory,
  MotionSequenceRequest: MotionSequenceRequest,
  CartesianTrajectoryPoint: CartesianTrajectoryPoint,
  AttachedCollisionObject: AttachedCollisionObject,
  PlanningScene: PlanningScene,
  BoundingVolume: BoundingVolume,
  MotionPlanDetailedResponse: MotionPlanDetailedResponse,
  OrientedBoundingBox: OrientedBoundingBox,
  AllowedCollisionEntry: AllowedCollisionEntry,
  PlanningSceneWorld: PlanningSceneWorld,
  CollisionObject: CollisionObject,
  GenericTrajectory: GenericTrajectory,
  MotionSequenceItem: MotionSequenceItem,
};
