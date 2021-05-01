.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$Utilities$a1VIcUW8XW7mgvUqkJlsYFlbPws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/ResultRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/ResultRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$a1VIcUW8XW7mgvUqkJlsYFlbPws;->f$0:Lcom/miui/home/launcher/common/ResultRunnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$a1VIcUW8XW7mgvUqkJlsYFlbPws;->f$0:Lcom/miui/home/launcher/common/ResultRunnable;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/Utilities;->lambda$asyncGetIncompatibleDialogIntent$149(Lcom/miui/home/launcher/common/ResultRunnable;Landroid/content/Intent;)V

    return-void
.end method
