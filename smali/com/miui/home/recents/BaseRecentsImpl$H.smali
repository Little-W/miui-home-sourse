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

    .line 905
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Lcom/miui/home/recents/BaseRecentsImpl$1;)V
    .locals 0

    .line 905
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl$H;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 908
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa11

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa75

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$2100(Lcom/miui/home/recents/BaseRecentsImpl;)V

    goto :goto_0

    .line 910
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$H;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$2000(Lcom/miui/home/recents/BaseRecentsImpl;)V

    :goto_0
    return-void
.end method
