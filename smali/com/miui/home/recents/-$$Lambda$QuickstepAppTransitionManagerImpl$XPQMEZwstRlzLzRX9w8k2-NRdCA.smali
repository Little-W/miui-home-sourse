.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$10:F

.field private final synthetic f$11:F

.field private final synthetic f$12:F

.field private final synthetic f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$3:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$4:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$5:Z

.field private final synthetic f$6:Lcom/miui/home/recents/views/RecentsView;

.field private final synthetic f$7:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$8:F

.field private final synthetic f$9:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;FLandroid/graphics/RectF;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$4:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-boolean p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$5:Z

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$6:Lcom/miui/home/recents/views/RecentsView;

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$7:Lcom/miui/home/recents/views/TaskView;

    iput p9, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$8:F

    iput-object p10, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$9:Landroid/graphics/RectF;

    iput p11, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$10:F

    iput p12, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$11:F

    iput p13, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$12:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$1:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$4:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-boolean v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$5:Z

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$6:Lcom/miui/home/recents/views/RecentsView;

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$7:Lcom/miui/home/recents/views/TaskView;

    iget v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$8:F

    iget-object v10, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$9:Landroid/graphics/RectF;

    iget v11, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$10:F

    iget v12, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$11:F

    iget v13, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;->f$12:F

    invoke-static/range {v1 .. v17}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startClosingWindowToRecentsAnimators$2(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;FLandroid/graphics/RectF;FFFLandroid/graphics/RectF;FFF)V

    return-void
.end method
