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

    .line 9454
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(F)V
    .locals 2

    .line 9457
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10000(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    .line 9458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherOverlayCallbacksImpl_onScrollChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9459
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onOverlayScrollChanged(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9460
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 9461
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$10102(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 9462
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onOverlayScrollEnd()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9463
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 9464
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$10102(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 9465
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onOverlayScrollEnd()V

    .line 9467
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->access$10002(Lcom/miui/home/launcher/Launcher;F)F

    :cond_2
    return-void
.end method
