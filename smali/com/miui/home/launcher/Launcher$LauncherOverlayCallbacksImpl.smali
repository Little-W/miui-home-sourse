.class Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LauncherOverlayCallbacksImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 8968
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(F)V
    .locals 3

    .line 8971
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10000(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Launcher"

    .line 8972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LauncherOverlayCallbacksImpl_onScrollChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8973
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onOverlayScrollChanged(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8974
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 8975
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$10102(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 8976
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onOverlayScrollEnd()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8977
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 8978
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$10102(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 8979
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onOverlayScrollEnd()V

    .line 8981
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->access$10002(Lcom/miui/home/launcher/Launcher;F)F

    :cond_2
    return-void
.end method
