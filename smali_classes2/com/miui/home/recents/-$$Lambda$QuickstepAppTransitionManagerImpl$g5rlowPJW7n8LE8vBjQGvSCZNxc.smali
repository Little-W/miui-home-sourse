.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field private final synthetic f$1:I

.field private final synthetic f$10:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$11:Landroid/graphics/Rect;

.field private final synthetic f$12:Landroid/graphics/Rect;

.field private final synthetic f$13:F

.field private final synthetic f$14:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$4:Z

.field private final synthetic f$5:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$6:Landroid/view/View;

.field private final synthetic f$7:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$8:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final synthetic f$9:Lcom/miui/home/recents/util/ClipAnimationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$1:I

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$2:I

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-boolean p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$4:Z

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$5:Lcom/miui/home/launcher/Launcher;

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$6:Landroid/view/View;

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$7:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p9, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$8:Lcom/miui/home/recents/util/RectFSpringAnim;

    iput-object p10, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$9:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p11, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$10:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-object p12, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$11:Landroid/graphics/Rect;

    iput-object p13, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$12:Landroid/graphics/Rect;

    iput p14, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$13:F

    iput-object p15, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$14:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p4

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$1:I

    iget v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$2:I

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-boolean v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$4:Z

    iget-object v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$5:Lcom/miui/home/launcher/Launcher;

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$6:Landroid/view/View;

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$7:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$8:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v10, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$9:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v11, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$10:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v12, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$11:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$12:Landroid/graphics/Rect;

    iget v14, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$13:F

    iget-object v15, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$g5rlowPJW7n8LE8vBjQGvSCZNxc;->f$14:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-static/range {v1 .. v19}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startClosingWindowAnimators$9(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Landroid/graphics/RectF;FFF)V

    return-void
.end method
