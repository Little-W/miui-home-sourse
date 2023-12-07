.class Lcom/miui/home/recents/ScreenPinnedInputConsumer$1;
.super Ljava/lang/Object;
.source "ScreenPinnedInputConsumer.java"

# interfaces
.implements Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/ScreenPinnedInputConsumer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/ScreenPinnedInputConsumer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/ScreenPinnedInputConsumer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer$1;->this$0:Lcom/miui/home/recents/ScreenPinnedInputConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionPauseDetected()V
    .locals 3

    const-string v0, "ScreenPinnedInputConsumer"

    const-string v1, "onMotionPause"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v1, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz v1, :cond_0

    const-string v2, "onMotionPause, stopScreenPinning"

    .line 38
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->stopScreenPinning()V

    .line 40
    iget-object p0, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer$1;->this$0:Lcom/miui/home/recents/ScreenPinnedInputConsumer;

    invoke-static {p0}, Lcom/miui/home/recents/ScreenPinnedInputConsumer;->access$000(Lcom/miui/home/recents/ScreenPinnedInputConsumer;)V

    :cond_0
    return-void
.end method
