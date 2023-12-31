.class Lcom/miui/home/recents/ThreeGestureSplitController$3;
.super Ljava/lang/Object;
.source "ThreeGestureSplitController.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/ThreeGestureSplitController;->onRecentsAnimationStart(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

.field final synthetic val$clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field final synthetic val$impl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field final synthetic val$transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/ThreeGestureSplitController;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController$3;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    iput-object p2, p0, Lcom/miui/home/recents/ThreeGestureSplitController$3;->val$transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p3, p0, Lcom/miui/home/recents/ThreeGestureSplitController$3;->val$clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p4, p0, Lcom/miui/home/recents/ThreeGestureSplitController$3;->val$impl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 273
    iget-object p2, p0, Lcom/miui/home/recents/ThreeGestureSplitController$3;->val$transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p2, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/ThreeGestureSplitController$3;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    invoke-static {p2}, Lcom/miui/home/recents/ThreeGestureSplitController;->access$100(Lcom/miui/home/recents/ThreeGestureSplitController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipFromLeftOrTop(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 274
    iget-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController$3;->val$clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object p2, p0, Lcom/miui/home/recents/ThreeGestureSplitController$3;->val$impl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-object p2, p2, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController$3;->val$transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformThreeGesture(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    return-void
.end method
