.class Lcom/miui/home/launcher/Launcher$3;
.super Lmiuix/animation/listener/TransitionListener;
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
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 1292
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$3;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 1295
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 1296
    sget-boolean p1, Lcom/miui/home/launcher/LauncherSoscController;->SOSC_LOG_ENABLE:Z

    if-eqz p1, :cond_0

    const-string p1, "LauncherSoscController"

    const-string v0, "Complete show animation"

    .line 1297
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$3;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-void
.end method
