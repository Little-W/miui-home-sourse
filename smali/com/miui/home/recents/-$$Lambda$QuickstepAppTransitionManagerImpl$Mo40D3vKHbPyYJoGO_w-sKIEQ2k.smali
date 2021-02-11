.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$4:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$5:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$6:Landroid/graphics/Rect;

.field private final synthetic f$7:Landroid/graphics/Rect;

.field private final synthetic f$8:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/ShortcutIcon;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$2:I

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$4:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$5:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$6:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$7:Landroid/graphics/Rect;

    iput p9, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$8:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iget v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$2:I

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$4:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$5:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$6:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$7:Landroid/graphics/Rect;

    iget v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;->f$8:F

    move-object v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-static/range {v1 .. v13}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startClosingWindowAnimators$3(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/ShortcutIcon;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/RectF;FFF)V

    return-void
.end method
