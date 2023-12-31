.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Application$1EG28Y1QlrdkRGEDdsEUJguxXII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Application$1EG28Y1QlrdkRGEDdsEUJguxXII;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Application$1EG28Y1QlrdkRGEDdsEUJguxXII;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Application$1EG28Y1QlrdkRGEDdsEUJguxXII;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Application$1EG28Y1QlrdkRGEDdsEUJguxXII;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Application$1EG28Y1QlrdkRGEDdsEUJguxXII;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Application$1EG28Y1QlrdkRGEDdsEUJguxXII;->f$2:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/Application;->lambda$startActivity$5(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
