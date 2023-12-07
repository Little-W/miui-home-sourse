.class public Lcom/android/systemui/shared/recents/model/Task;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/Task$SnapshotCallback;,
        Lcom/android/systemui/shared/recents/model/Task$TaskKey;,
        Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;
    }
.end annotation


# static fields
.field public static final PLATFORM_ANDROID_PAD:Ljava/lang/String; = "AndroidPad"

.field public static final PLATFORM_ANDROID_PHONE:Ljava/lang/String; = "AndroidPhone"

.field public static final PLATFORM_WINDOWS:Ljava/lang/String; = "Windows"

.field public static final TAG:Ljava/lang/String; = "Task"

.field public static final VT_CAMERA_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static sVtCameraDeviceName:Ljava/lang/String;

.field public static sVtCameraEnabled:Z

.field public static sVtCameraTaskText:Ljava/lang/String;


# instance fields
.field public baseActivity:Landroid/content/ComponentName;

.field public bounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorBackground:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorPrimary:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public cti1Bounds:Landroid/graphics/Rect;

.field public cti1Icon:Landroid/graphics/drawable/Drawable;

.field public cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public cti1TitleDescription:Ljava/lang/String;

.field public cti2Bounds:Landroid/graphics/Rect;

.field public cti2Icon:Landroid/graphics/drawable/Drawable;

.field public cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public cti2TitleDescription:Ljava/lang/String;

.field private hasMultipleTasks:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isAccessLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isDockable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLaunchTarget:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isStackTask:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isSystemApp:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "key_"
    .end annotation
.end field

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedHide:Z

.field public resizeMode:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public secondThumbnail:Landroid/graphics/Bitmap;

.field public stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public temporarySortIndexInStack:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public titleDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public useLightOnPrimaryColor:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.milink.service"

    const-string v2, "com.xiaomi.vtcamera.activities.CameraServerActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/shared/recents/model/Task;->VT_CAMERA_COMPONENT_NAME:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraEnabled:Z

    const-string v0, ""

    sput-object v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraDeviceName:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraTaskText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;Landroid/content/ComponentName;ZZZLcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Rect;Lcom/android/wm/shell/util/StagedSplitBounds;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    move-object v1, p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    move v1, p7

    iput v1, v0, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->computeContrastBetweenColors(II)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move v1, p8

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    move/from16 v1, p14

    iput v1, v0, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->baseActivity:Landroid/content/ComponentName;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1TitleDescription:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Bounds:Landroid/graphics/Rect;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2TitleDescription:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2Bounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->secondThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/Task;->setSecondThumbnail(Landroid/graphics/Bitmap;)V

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->baseActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->baseActivity:Landroid/content/ComponentName;

    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Bounds:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1TitleDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1TitleDescription:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Bounds:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2TitleDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2TitleDescription:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez p1, :cond_0

    const-string p1, " dockable=N"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    if-eqz p1, :cond_1

    const-string p1, " launchTarget=Y"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAnotherMultiTaskId(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getBaseComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLastActiveTime()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-wide v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-wide v2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-wide v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    :goto_0
    return-wide v0
.end method

.method public getTaskKey(I)Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->isMultiPrimaryTask(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->isMultiSecondTask(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasCallBack()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasMultipleTasks()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    return p0
.end method

.method public isBlurThumbnail()Z
    .locals 1

    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->showVTCameraIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCoverThumbnail()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result p0

    return p0
.end method

.method public isFreeformTask()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInSmallWindow(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getBaseComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    iget v3, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    iget-object v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v3, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const-string p0, "Task"

    const-string/jumbo p1, "updateIsNeedHideState: key or getBaseComponent is null, return."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isMultiPrimaryTask(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiSecondTask(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedHide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->mNeedHide:Z

    return p0
.end method

.method public isProtected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSameTaskFromId(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public isSoscSplitModeNotSupportSplit(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportSplit()Z
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public notifyMultipleTaskDataLoaded(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p5}, Lcom/android/systemui/shared/recents/model/Task;->setSecondThumbnail(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p4, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    invoke-interface {p4, p0, p3, p6}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 1

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    invoke-interface {v0, p0, p3}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    invoke-interface {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onTaskDataUnloaded()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLockedChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    iget-boolean v2, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onLockedChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printDetail()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    return-void
.end method

.method public setNeedHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->mNeedHide:Z

    return-void
.end method

.method public setSecondThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->secondThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setStackId(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->setStackId(I)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onTaskStackIdChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public showPrivacyProtectIcon()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->showVTCameraIcon()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showScreeningIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->showVTCameraIcon()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showVTCameraIcon()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isVtCamera:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showWorldCirculateIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->showVTCameraIcon()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLaunchTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isStackTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSystemApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDockable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", baseActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAccessLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedHide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->mNeedHide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasMultipleTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cti1Key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cti2Key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateIsNeedHideState(Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getBaseComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/Task;->setNeedHide(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->isInSmallWindow(Ljava/util/Set;)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/recents/model/Task;->isSoscSplitModeNotSupportSplit(Z)Z

    move-result p2

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/Task;->setNeedHide(Z)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "Task"

    const-string/jumbo p1, "updateIsNeedHideState: key or getBaseComponent is null, return."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public useMultipleThumbnail()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_T:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
