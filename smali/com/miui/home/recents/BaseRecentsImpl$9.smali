.class Lcom/miui/home/recents/BaseRecentsImpl$9;
.super Landroid/database/ContentObserver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 529
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    .line 530
    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "show_gesture_appswitch_feature"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 532
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$900(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 533
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$900(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureStubView;->disableQuickSwitch(Z)V

    .line 536
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 537
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureStubView;->disableQuickSwitch(Z)V

    :cond_2
    return-void
.end method
