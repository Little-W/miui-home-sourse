.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$48$1$WHjFT-oy7yd80LXzj4WtAd8AmeQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher$48$1;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$48$1;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$48$1$WHjFT-oy7yd80LXzj4WtAd8AmeQ;->f$0:Lcom/miui/home/launcher/Launcher$48$1;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$48$1$WHjFT-oy7yd80LXzj4WtAd8AmeQ;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$48$1$WHjFT-oy7yd80LXzj4WtAd8AmeQ;->f$0:Lcom/miui/home/launcher/Launcher$48$1;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$48$1$WHjFT-oy7yd80LXzj4WtAd8AmeQ;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher$48$1;->lambda$run$0$Launcher$48$1(Landroid/content/Intent;)V

    return-void
.end method
