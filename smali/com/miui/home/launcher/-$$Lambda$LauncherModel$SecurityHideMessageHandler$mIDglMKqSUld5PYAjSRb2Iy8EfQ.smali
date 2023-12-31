.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$mIDglMKqSUld5PYAjSRb2Iy8EfQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$mIDglMKqSUld5PYAjSRb2Iy8EfQ;->f$0:Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$mIDglMKqSUld5PYAjSRb2Iy8EfQ;->f$1:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$mIDglMKqSUld5PYAjSRb2Iy8EfQ;->f$0:Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$mIDglMKqSUld5PYAjSRb2Iy8EfQ;->f$1:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->lambda$onMessageEvent$0$LauncherModel$SecurityHideMessageHandler(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
