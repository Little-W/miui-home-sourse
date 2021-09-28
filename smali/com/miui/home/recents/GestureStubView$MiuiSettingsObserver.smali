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

    .line 1174
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 1175
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1191
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_black_v2"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStubView;->access$3402(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 1192
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$3600(Lcom/miui/home/recents/GestureStubView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$3600(Lcom/miui/home/recents/GestureStubView;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$3502(Lcom/miui/home/recents/GestureStubView;Z)Z

    return-void
.end method

.method register()V
    .locals 3

    .line 1179
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1400(Lcom/miui/home/recents/GestureStubView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStubView;->access$1302(Lcom/miui/home/recents/GestureStubView;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 1180
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_black_v2"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method unregister()V
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1400(Lcom/miui/home/recents/GestureStubView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStubView;->access$1302(Lcom/miui/home/recents/GestureStubView;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 1186
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
