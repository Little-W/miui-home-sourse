.class Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureStubView;Landroid/os/Handler;)V
    .locals 0

    .line 1338
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 1339
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 1357
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_black_v2"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 1358
    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "force_black"

    invoke-static {v0, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1357
    :goto_1
    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStubView;->access$3502(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 1359
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$3700(Lcom/miui/home/recents/GestureStubView;)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$3700(Lcom/miui/home/recents/GestureStubView;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$3602(Lcom/miui/home/recents/GestureStubView;Z)Z

    return-void
.end method

.method register()V
    .locals 3

    .line 1343
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1400(Lcom/miui/home/recents/GestureStubView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStubView;->access$1302(Lcom/miui/home/recents/GestureStubView;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 1344
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_black_v2"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1346
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_black"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method unregister()V
    .locals 2

    .line 1351
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1400(Lcom/miui/home/recents/GestureStubView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStubView;->access$1302(Lcom/miui/home/recents/GestureStubView;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 1352
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
