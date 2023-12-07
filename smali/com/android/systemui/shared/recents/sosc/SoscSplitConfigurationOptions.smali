.class public Lcom/android/systemui/shared/recents/sosc/SoscSplitConfigurationOptions;
.super Ljava/lang/Object;


# static fields
.field public static final BACK_TARGET_LEFT_OR_TOP:I = 0x1

.field public static final BACK_TARGET_RIGHT_OR_BOTTOM:I = 0x2

.field public static final BACK_TARGET_UNDEFINE:I = 0x0

.field public static final DOUBLE_OPEN:I = 0x2

.field public static final KEY_PRELOAD_BOUNDS_LAND_LEFT_OR_TOP_FOLD_1_1:Ljava/lang/String; = "FoldPreloadLandLeftOrTopBounds1_1"

.field public static final KEY_PRELOAD_BOUNDS_LAND_LEFT_OR_TOP_PAD_1_1:Ljava/lang/String; = "PadPreloadLandLeftOrTopBounds1_1"

.field public static final KEY_PRELOAD_BOUNDS_LAND_LEFT_OR_TOP_PAD_1_2:Ljava/lang/String; = "PadPreloadLandLeftOrTopBounds1_2"

.field public static final KEY_PRELOAD_BOUNDS_LAND_LEFT_OR_TOP_PAD_2_1:Ljava/lang/String; = "PadPreloadLandLeftOrTopBounds2_1"

.field public static final KEY_PRELOAD_BOUNDS_LAND_RIGHT_OR_BOTTOM_FOLD_1_1:Ljava/lang/String; = "FoldPreloadLandRightOrBottomBounds1_1"

.field public static final KEY_PRELOAD_BOUNDS_LAND_RIGHT_OR_BOTTOM_PAD_1_1:Ljava/lang/String; = "PadPreloadLandRightOrBottomBounds1_1"

.field public static final KEY_PRELOAD_BOUNDS_LAND_RIGHT_OR_BOTTOM_PAD_1_2:Ljava/lang/String; = "PadPreloadLandRightOrBottomBounds1_2"

.field public static final KEY_PRELOAD_BOUNDS_LAND_RIGHT_OR_BOTTOM_PAD_2_1:Ljava/lang/String; = "PadPreloadLandRightOrBottomBounds2_1"

.field public static final KEY_PRELOAD_BOUNDS_PORT_LEFT_OR_TOP_FOLD_1_1:Ljava/lang/String; = "FoldPreloadPortLeftOrTopBounds1_1"

.field public static final KEY_PRELOAD_BOUNDS_PORT_LEFT_OR_TOP_PAD_1_1:Ljava/lang/String; = "PadPreloadPortLeftOrTopBounds1_1"

.field public static final KEY_PRELOAD_BOUNDS_PORT_RIGHT_OR_BOTTOM_FOLD_1_1:Ljava/lang/String; = "FoldPreloadPortRightOrBottomBounds1_1"

.field public static final KEY_PRELOAD_BOUNDS_PORT_RIGHT_OR_BOTTOM_PAD_1_1:Ljava/lang/String; = "PadPreloadPortRightOrBottomBounds1_1"

.field public static final KEY_PRELOAD_MINIMIZED_SIZE:Ljava/lang/String; = "PreloadMinimizedSize"

.field public static final MINIMIZED_POSITION_BOTTOM:I = 0x3

.field public static final MINIMIZED_POSITION_LEFT:I = 0x0

.field public static final MINIMIZED_POSITION_NULL:I = -0x1

.field public static final MINIMIZED_POSITION_RIGHT:I = 0x2

.field public static final MINIMIZED_POSITION_TOP:I = 0x1

.field public static final SINGLE_OFF:I = -0x1

.field public static final SINGLE_OPEN_IN_LEFT_OR_TOP:I = 0x0

.field public static final SINGLE_OPEN_IN_RIGHT_OR_BOTTOM:I = 0x1

.field public static final SOSC_ACTION_BOTTOM_HALF_SPLIT:I = 0x7

.field public static final SOSC_ACTION_FULL_SPLIT:I = 0x3

.field public static final SOSC_ACTION_LEFT_HALF_SPLIT:I = 0x4

.field public static final SOSC_ACTION_MASK:I = 0xf

.field public static final SOSC_ACTION_RIGHT_HALF_SPLIT:I = 0x5

.field public static final SOSC_ACTION_TOP_HALF_SPLIT:I = 0x6

.field public static final SOSC_ENABLE:Ljava/lang/String; = "wmshell.sosc_enable"

.field public static final SOSC_MINIMIZED_BOTTOM_ALIGN:I = 0x400

.field public static final SOSC_MINIMIZED_LEFT_ALIGN:I = 0x100

.field public static final SOSC_MINIMIZED_MASK:I = 0xf00

.field public static final SOSC_MINIMIZED_RIGHT_ALIGN:I = 0x200

.field public static final SOSC_MINIMIZED_TOP_ALIGN:I = 0x300

.field public static final SOSC_SNAP_1_1:I = 0x20

.field public static final SOSC_SNAP_1_2:I = 0x10

.field public static final SOSC_SNAP_2_1:I = 0x30

.field public static final SOSC_SNAP_RATIO_MASK:I = 0xf0

.field public static final SPLIT_DIRECTION_SNAP_TO_RIGHT_OR_BOTTOM:I = 0x1

.field public static final SPLIT_DIRECTION_SNAP_TO_TOP_OR_LEFT:I = 0x0

.field public static final SPLIT_POSITION_BOTTOM_OR_RIGHT:I = 0x1

.field public static final SPLIT_POSITION_TOP_OR_LEFT:I = 0x0

.field public static final SPLIT_POSITION_UNDEFINED:I = -0x1

.field public static final TOUCH_CENTER_RANGE:I = 0x2

.field public static final TOUCH_LEFT_RANGE:I = 0x0

.field public static final TOUCH_RIGHT_RANGE:I = 0x1


# instance fields
.field STAGE_TYPE_MAIN:I

.field STAGE_TYPE_SIDE:I

.field STAGE_TYPE_UNDEFINED:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitConfigurationOptions;->STAGE_TYPE_UNDEFINED:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitConfigurationOptions;->STAGE_TYPE_MAIN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/shared/recents/sosc/SoscSplitConfigurationOptions;->STAGE_TYPE_SIDE:I

    return-void
.end method
