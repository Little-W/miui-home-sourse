.class Lcom/miui/home/recents/BaseRecentsImpl$H;
.super Landroid/os/Handler;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Lcom/miui/home/recents/BaseRecentsImpl$1;)V
    .locals 0

    .line 779
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl$H;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Lcom/miui/home/recents/BaseRecentsImpl$H;)V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$700(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$800(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$700(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView;->setSize(I)V

    .line 797
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$800(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView;->setSize(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$handleMessage$1(Lcom/miui/home/recents/BaseRecentsImpl$H;)V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$700(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$800(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x36

    .line 807
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$700(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/GestureStubView;->setSize(I)V

    .line 808
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$800(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/GestureStubView;->setSize(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 782
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa11

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa75

    if-eq p1, v0, :cond_2

    const/16 v0, 0xad9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb3d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 802
    :cond_0
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$H$k4dLHkAHgjPT4xCSrgAMm66hIac;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$H$k4dLHkAHgjPT4xCSrgAMm66hIac;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$H;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 792
    :cond_1
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$H$QZu3BF_Jjt_UqnFfOrj-UuTsbAI;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$H$QZu3BF_Jjt_UqnFfOrj-UuTsbAI;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$H;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 788
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1900(Lcom/miui/home/recents/BaseRecentsImpl;)V

    goto :goto_0

    .line 784
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$2000(Lcom/miui/home/recents/BaseRecentsImpl;)V

    :goto_0
    return-void
.end method
