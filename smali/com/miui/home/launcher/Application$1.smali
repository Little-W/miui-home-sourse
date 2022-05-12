.class Lcom/miui/home/launcher/Application$1;
.super Landroid/database/ContentObserver;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Application;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Application;Landroid/os/Handler;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/miui/home/launcher/Application$1;->this$0:Lcom/miui/home/launcher/Application;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 262
    iget-object p1, p0, Lcom/miui/home/launcher/Application$1;->this$0:Lcom/miui/home/launcher/Application;

    invoke-static {p1}, Lcom/miui/home/launcher/Application;->access$000(Lcom/miui/home/launcher/Application;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;

    invoke-direct {v0}, Lcom/miui/home/launcher/model/UpdateHiddenAppTask;-><init>()V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    return-void
.end method
