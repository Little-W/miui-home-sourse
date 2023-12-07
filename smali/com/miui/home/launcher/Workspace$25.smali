.class Lcom/miui/home/launcher/Workspace$25;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->initDoubleTapToLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$25;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$25;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "miui_home_double_tap_to_lock"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/Workspace;->mDoubleTapToLock:Z

    return-void
.end method
