.class Lcom/miui/home/recents/BaseRecentsImpl$13;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 743
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ykrq"

    const-string v2, "no_back_gesture_only"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 745
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ykrq"

    const-string v2, "no_home_gesture_only"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 747
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ykrq"

    const-string v2, "no_back_and_home"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 749
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ykrq"

    const-string v2, "hot_zone_change"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 752
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-object v0, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$13$1;

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/recents/BaseRecentsImpl$13$1;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$13;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
