.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold$1;
.super Ljava/lang/Object;
.source "UserPresentAnimationCompatV12Fold.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    const-string v0, "UserPresentAnimationCompatV12Fold"

    const-string v1, "mDragLayerViewLayoutListener : prepareAnimation and showAnimation !"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;

    invoke-static {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->access$000(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;)V

    .line 36
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->showAnimation()V

    return-void
.end method
