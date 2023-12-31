.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field private final synthetic f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final synthetic f$10:Z

.field private final synthetic f$11:Landroid/graphics/Rect;

.field private final synthetic f$12:I

.field private final synthetic f$13:I

.field private final synthetic f$14:F

.field private final synthetic f$15:Z

.field private final synthetic f$16:I

.field private final synthetic f$2:Landroid/view/View;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$5:I

.field private final synthetic f$6:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$7:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$8:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$9:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/view/View;ZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLandroid/graphics/Rect;IIFZI)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    move-object v1, p2

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    move-object v1, p3

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$2:Landroid/view/View;

    move v1, p4

    iput-boolean v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$3:Z

    move-object v1, p5

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$4:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move v1, p6

    iput v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$5:I

    move-object v1, p7

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$6:Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-object v1, p8

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$7:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object v1, p9

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$8:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object v1, p10

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$9:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move v1, p11

    iput-boolean v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$10:Z

    move-object v1, p12

    iput-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$11:Landroid/graphics/Rect;

    move v1, p13

    iput v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$12:I

    move/from16 v1, p14

    iput v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$13:I

    move/from16 v1, p15

    iput v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$14:F

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$15:Z

    move/from16 v1, p17

    iput v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$16:I

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, p4

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$2:Landroid/view/View;

    iget-boolean v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$3:Z

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$4:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$5:I

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$6:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$7:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$8:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v10, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$9:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-boolean v11, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$10:Z

    iget-object v12, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$11:Landroid/graphics/Rect;

    iget v13, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$12:I

    iget v14, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$13:I

    iget v15, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$14:F

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$15:Z

    move/from16 v16, v1

    iget v0, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;->f$16:I

    move/from16 v17, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v21}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startOpeningWindowAnimators$4$QuickstepAppTransitionManagerImpl(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/view/View;ZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLandroid/graphics/Rect;IIFZILandroid/graphics/RectF;FFF)V

    return-void
.end method
