.class Lcom/miui/home/recents/BaseRecentsImpl$10;
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

    .line 565
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mForceImmersiveNavBarListener    onChange    mIsInAnotherPro="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecentsImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 570
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1100(Lcom/miui/home/recents/BaseRecentsImpl;)V

    :cond_0
    return-void
.end method
