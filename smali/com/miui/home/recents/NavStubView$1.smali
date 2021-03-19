.class Lcom/miui/home/recents/NavStubView$1;
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

    .line 270
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$000(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$100(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$100(Lcom/miui/home/recents/NavStubView;)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$102(Lcom/miui/home/recents/NavStubView;F)F

    .line 277
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$300(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$400(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v4}, Lcom/miui/home/recents/NavStubView;->access$300(Lcom/miui/home/recents/NavStubView;)F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$302(Lcom/miui/home/recents/NavStubView;F)F

    .line 279
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$100(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$502(Lcom/miui/home/recents/NavStubView;F)F

    .line 280
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$400(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$300(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$602(Lcom/miui/home/recents/NavStubView;F)F

    .line 281
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$500(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$500(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$600(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$600(Lcom/miui/home/recents/NavStubView;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$702(Lcom/miui/home/recents/NavStubView;F)F

    .line 283
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$800(Lcom/miui/home/recents/NavStubView;)I

    move-result v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x10

    if-ne v0, v1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$900(Lcom/miui/home/recents/NavStubView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    .line 290
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$1;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$900(Lcom/miui/home/recents/NavStubView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
