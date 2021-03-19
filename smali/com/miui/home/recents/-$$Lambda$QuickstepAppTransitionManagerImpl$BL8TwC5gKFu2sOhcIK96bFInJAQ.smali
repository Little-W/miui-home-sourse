.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$3:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$4:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$5:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$6:Z

.field private final synthetic f$7:Lcom/miui/home/recents/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$4:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$5:Lcom/miui/home/recents/views/TaskView;

    iput-boolean p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$6:Z

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$7:Lcom/miui/home/recents/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$1:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$4:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$5:Lcom/miui/home/recents/views/TaskView;

    iget-boolean v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$6:Z

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;->f$7:Lcom/miui/home/recents/views/RecentsView;

    move-object v9, p1

    move v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v1 .. v12}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startClosingWindowToRecentsAnimators$4(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;FFF)V

    return-void
.end method
