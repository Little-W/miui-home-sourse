.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field private final synthetic f$1:Landroid/graphics/RectF;

.field private final synthetic f$10:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$11:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$12:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$13:Z

.field private final synthetic f$14:Landroid/graphics/Rect;

.field private final synthetic f$15:Landroid/graphics/Rect;

.field private final synthetic f$16:F

.field private final synthetic f$17:Z

.field private final synthetic f$18:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$19:Z

.field private final synthetic f$2:Landroid/graphics/RectF;

.field private final synthetic f$3:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final synthetic f$4:I

.field private final synthetic f$5:I

.field private final synthetic f$6:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$7:Z

.field private final synthetic f$8:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$9:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/miui/home/recents/util/RectFSpringAnim;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLandroid/graphics/Rect;Landroid/graphics/Rect;FZLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Z)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    move-object v1, p2

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$1:Landroid/graphics/RectF;

    move-object v1, p3

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$2:Landroid/graphics/RectF;

    move-object v1, p4

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$3:Lcom/miui/home/recents/util/RectFSpringAnim;

    move v1, p5

    iput v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$4:I

    move v1, p6

    iput v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$5:I

    move-object v1, p7

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$6:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move v1, p8

    iput-boolean v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$7:Z

    move-object v1, p9

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$8:Lcom/miui/home/launcher/Launcher;

    move-object v1, p10

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$9:Landroid/view/View;

    move-object v1, p11

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$10:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object v1, p12

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$11:Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-object v1, p13

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$12:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$13:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$14:Landroid/graphics/Rect;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$15:Landroid/graphics/Rect;

    move/from16 v1, p17

    iput v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$16:F

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$17:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$18:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$19:Z

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v21, p1

    move/from16 v22, p2

    move/from16 v23, p3

    move/from16 v24, p4

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$1:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$2:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$3:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$4:I

    iget v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$5:I

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$6:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-boolean v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$7:Z

    iget-object v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$8:Lcom/miui/home/launcher/Launcher;

    iget-object v10, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$9:Landroid/view/View;

    iget-object v11, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$10:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v12, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$11:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v13, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$12:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-boolean v14, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$13:Z

    iget-object v15, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$14:Landroid/graphics/Rect;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$15:Landroid/graphics/Rect;

    move-object/from16 v16, v1

    iget v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$16:F

    move/from16 v17, v1

    iget-boolean v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$17:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$18:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object/from16 v19, v1

    iget-boolean v0, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;->f$19:Z

    move/from16 v20, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v24}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startClosingWindowAnimators$12$QuickstepAppTransitionManagerImpl(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/miui/home/recents/util/RectFSpringAnim;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLandroid/graphics/Rect;Landroid/graphics/Rect;FZLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;ZLandroid/graphics/RectF;FFF)V

    return-void
.end method
