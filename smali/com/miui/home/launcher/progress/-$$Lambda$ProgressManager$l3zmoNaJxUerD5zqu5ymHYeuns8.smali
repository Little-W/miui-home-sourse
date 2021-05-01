.class public final synthetic Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$l3zmoNaJxUerD5zqu5ymHYeuns8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/progress/ProgressManager;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/progress/ProgressManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$l3zmoNaJxUerD5zqu5ymHYeuns8;->f$0:Lcom/miui/home/launcher/progress/ProgressManager;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$l3zmoNaJxUerD5zqu5ymHYeuns8;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$l3zmoNaJxUerD5zqu5ymHYeuns8;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$l3zmoNaJxUerD5zqu5ymHYeuns8;->f$0:Lcom/miui/home/launcher/progress/ProgressManager;

    iget-object v1, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$l3zmoNaJxUerD5zqu5ymHYeuns8;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/-$$Lambda$ProgressManager$l3zmoNaJxUerD5zqu5ymHYeuns8;->f$2:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->lambda$onReceive$394(Lcom/miui/home/launcher/progress/ProgressManager;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
