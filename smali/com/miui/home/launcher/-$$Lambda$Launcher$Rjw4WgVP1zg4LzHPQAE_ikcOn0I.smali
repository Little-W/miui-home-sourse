.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$Rjw4WgVP1zg4LzHPQAE_ikcOn0I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/content/Intent;

.field private final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rjw4WgVP1zg4LzHPQAE_ikcOn0I;->f$0:Lcom/miui/home/launcher/Launcher;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rjw4WgVP1zg4LzHPQAE_ikcOn0I;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rjw4WgVP1zg4LzHPQAE_ikcOn0I;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rjw4WgVP1zg4LzHPQAE_ikcOn0I;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rjw4WgVP1zg4LzHPQAE_ikcOn0I;->f$0:Lcom/miui/home/launcher/Launcher;

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rjw4WgVP1zg4LzHPQAE_ikcOn0I;->f$1:I

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rjw4WgVP1zg4LzHPQAE_ikcOn0I;->f$2:Landroid/content/Intent;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rjw4WgVP1zg4LzHPQAE_ikcOn0I;->f$3:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/launcher/Launcher;->lambda$startActivityForResult$32$Launcher(ILandroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
