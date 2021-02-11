.class Lcom/miui/home/recents/NavStubView$3;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
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

    .line 313
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 316
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$300(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1900(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2000(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$1900(Lcom/miui/home/recents/NavStubView;)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$1902(Lcom/miui/home/recents/NavStubView;F)F

    .line 320
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2100(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2200(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v4}, Lcom/miui/home/recents/NavStubView;->access$2100(Lcom/miui/home/recents/NavStubView;)F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$2102(Lcom/miui/home/recents/NavStubView;F)F

    .line 322
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2000(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$1900(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$2302(Lcom/miui/home/recents/NavStubView;F)F

    .line 323
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2200(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2100(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$2402(Lcom/miui/home/recents/NavStubView;F)F

    .line 324
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2300(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2300(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2400(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$2400(Lcom/miui/home/recents/NavStubView;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$2502(Lcom/miui/home/recents/NavStubView;F)F

    .line 326
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2600(Lcom/miui/home/recents/NavStubView;)I

    move-result v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x10

    if-ne v0, v1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2700(Lcom/miui/home/recents/NavStubView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    .line 333
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2700(Lcom/miui/home/recents/NavStubView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
