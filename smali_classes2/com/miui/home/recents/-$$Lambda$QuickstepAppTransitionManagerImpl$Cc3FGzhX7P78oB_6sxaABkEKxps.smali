.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:I

.field private final synthetic f$10:Lcom/miui/home/recents/views/RecentsView;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Landroid/graphics/Rect;

.field private final synthetic f$4:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$5:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$6:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$7:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$8:F

.field private final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;IZLandroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$0:Lcom/miui/home/launcher/Launcher;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$1:I

    iput-boolean p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$2:Z

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$4:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$5:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$6:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$7:Lcom/miui/home/recents/views/TaskView;

    iput p9, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$8:F

    iput-boolean p10, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$9:Z

    iput-object p11, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$10:Lcom/miui/home/recents/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$0:Lcom/miui/home/launcher/Launcher;

    iget v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$1:I

    iget-boolean v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$2:Z

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$3:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$4:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$5:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$6:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$7:Lcom/miui/home/recents/views/TaskView;

    iget v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$8:F

    iget-boolean v10, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$9:Z

    iget-object v11, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;->f$10:Lcom/miui/home/recents/views/RecentsView;

    move-object v0, v1

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-static/range {v0 .. v14}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startClosingWindowToRecentsAnimators$10(Lcom/miui/home/launcher/Launcher;IZLandroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;FFF)V

    return-void
.end method
