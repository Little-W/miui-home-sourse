.class Lcom/miui/home/recents/views/RecentsContainer$3;
.super Landroid/database/ContentObserver;
.source "RecentsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/RecentsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;Landroid/os/Handler;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$3;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 358
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$3;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "miui_recents_show_mem_info"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromCurrentUser(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->access$202(Lcom/miui/home/recents/views/RecentsContainer;Z)Z

    return-void
.end method
