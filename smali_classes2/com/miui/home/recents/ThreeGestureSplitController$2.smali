.class Lcom/miui/home/recents/ThreeGestureSplitController$2;
.super Ljava/lang/Object;
.source "ThreeGestureSplitController.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/ThreeGestureSplitController;->createSplitSelectSpringAnim(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/ThreeGestureSplitController;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/ThreeGestureSplitController;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController$2;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController$2;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    invoke-static {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->access$000(Lcom/miui/home/recents/ThreeGestureSplitController;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController$2;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    invoke-static {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->access$000(Lcom/miui/home/recents/ThreeGestureSplitController;)V

    return-void
.end method
