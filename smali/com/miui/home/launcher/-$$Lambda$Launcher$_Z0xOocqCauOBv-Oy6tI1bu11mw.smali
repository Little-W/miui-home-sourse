.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$_Z0xOocqCauOBv-Oy6tI1bu11mw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_Z0xOocqCauOBv-Oy6tI1bu11mw;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_Z0xOocqCauOBv-Oy6tI1bu11mw;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_Z0xOocqCauOBv-Oy6tI1bu11mw;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_Z0xOocqCauOBv-Oy6tI1bu11mw;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_Z0xOocqCauOBv-Oy6tI1bu11mw;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_Z0xOocqCauOBv-Oy6tI1bu11mw;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/Launcher;->lambda$startActivity$81$Launcher(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
