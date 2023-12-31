.class Lcom/miui/home/recents/GestureSoscController$2;
.super Ljava/lang/Object;
.source "GestureSoscController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureSoscController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureSoscController;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureSoscController;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/miui/home/recents/GestureSoscController$2;->this$0:Lcom/miui/home/recents/GestureSoscController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/miui/home/recents/GestureSoscController$2;->this$0:Lcom/miui/home/recents/GestureSoscController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/home/recents/GestureSoscController;->access$102(Lcom/miui/home/recents/GestureSoscController;Z)Z

    const-string p0, "GestureSoscController"

    const-string v0, "forbid launch split callback time out"

    .line 180
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
