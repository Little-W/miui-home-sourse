.class public final synthetic Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$9kRGCcPPgIqzX3cs6s-WLK-n0VQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/FloatingIconLayer;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/FloatingIconLayer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$9kRGCcPPgIqzX3cs6s-WLK-n0VQ;->f$0:Lcom/miui/home/recents/FloatingIconLayer;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$9kRGCcPPgIqzX3cs6s-WLK-n0VQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$9kRGCcPPgIqzX3cs6s-WLK-n0VQ;->f$0:Lcom/miui/home/recents/FloatingIconLayer;

    iget p0, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$9kRGCcPPgIqzX3cs6s-WLK-n0VQ;->f$1:I

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/FloatingIconLayer;->lambda$drawIcon$2$FloatingIconLayer(I)V

    return-void
.end method
