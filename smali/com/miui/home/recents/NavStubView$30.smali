.class Lcom/miui/home/recents/NavStubView$30;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->updateSmallwindowCrop(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 3760
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$30;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3763
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$30;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$000(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$30;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$4800(Lcom/miui/home/recents/NavStubView;)F

    move-result v3

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$30;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$4900(Lcom/miui/home/recents/NavStubView;)F

    move-result v4

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$30;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$8200(Lcom/miui/home/recents/NavStubView;)Ljava/lang/Runnable;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startOnHandSpringAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;FFFLjava/lang/Runnable;)V

    return-void
.end method
