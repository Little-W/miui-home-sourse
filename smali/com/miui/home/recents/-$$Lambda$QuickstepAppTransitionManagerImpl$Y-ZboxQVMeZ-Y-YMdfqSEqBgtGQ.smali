.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Y-ZboxQVMeZ-Y-YMdfqSEqBgtGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Y-ZboxQVMeZ-Y-YMdfqSEqBgtGQ;->f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Y-ZboxQVMeZ-Y-YMdfqSEqBgtGQ;->f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Y-ZboxQVMeZ-Y-YMdfqSEqBgtGQ;->f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Y-ZboxQVMeZ-Y-YMdfqSEqBgtGQ;->f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Y-ZboxQVMeZ-Y-YMdfqSEqBgtGQ;->f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Y-ZboxQVMeZ-Y-YMdfqSEqBgtGQ;->f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startClosingWindowFromFeedAnimators$538(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FFF)V

    return-void
.end method
