.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$H1QBO8OiIC8hp8zvRx9FZGl9rHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$H1QBO8OiIC8hp8zvRx9FZGl9rHU;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$H1QBO8OiIC8hp8zvRx9FZGl9rHU;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$H1QBO8OiIC8hp8zvRx9FZGl9rHU;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$H1QBO8OiIC8hp8zvRx9FZGl9rHU;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$H1QBO8OiIC8hp8zvRx9FZGl9rHU;->f$1:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$SecurityHideMessageHandler$H1QBO8OiIC8hp8zvRx9FZGl9rHU;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel$SecurityHideMessageHandler;->lambda$updateSecurityHideApps$1(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
