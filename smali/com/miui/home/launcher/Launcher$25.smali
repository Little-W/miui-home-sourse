.class Lcom/miui/home/launcher/Launcher$25;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 3268
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 3271
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 3272
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3273
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onScreenSizeChanged()V

    .line 3275
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FitSystemWindowView;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 3276
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 3277
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$25;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshSize()V

    return-void
.end method
