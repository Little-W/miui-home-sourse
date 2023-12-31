.class Lcom/miui/home/recents/BaseRecentsImpl$12;
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

    .line 586
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 589
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 590
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "elderly_mode"

    invoke-static {p1, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    .line 591
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_fsg_nav_bar"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mElderlyModeObserver    onChange    isElderlyMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   isFsMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecentsImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "is_fs_gesture_mode_before_elder_mode"

    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    .line 597
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1200(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    .line 598
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1100(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 601
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 602
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 603
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mElderlyModeObserver    onChange    savedFsMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, p1, :cond_2

    .line 607
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1200(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    .line 608
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$12;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1100(Lcom/miui/home/recents/BaseRecentsImpl;)V

    :cond_2
    :goto_0
    return-void
.end method
