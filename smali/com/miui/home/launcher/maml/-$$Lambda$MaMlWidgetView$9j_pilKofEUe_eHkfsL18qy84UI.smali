.class public final synthetic Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/-$$Lambda$MaMlWidgetView$9j_pilKofEUe_eHkfsL18qy84UI;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->lambda$onUpgrade$2(Lcom/miui/home/launcher/maml/MaMlWidgetView;Ljava/lang/Runnable;)V

    return-void
.end method
