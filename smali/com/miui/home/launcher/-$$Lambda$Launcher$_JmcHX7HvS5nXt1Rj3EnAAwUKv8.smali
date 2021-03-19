.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Landroid/os/UserHandle;

.field private final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;->f$2:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;->f$2:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;->f$3:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/Launcher;->lambda$startActivity$17(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    return-void
.end method
