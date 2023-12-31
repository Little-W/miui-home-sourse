.class public final synthetic Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$21FlMXAC1lfKuRhN-cOHC6ogAJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/FloatingIconLayer;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/FloatingIconLayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$21FlMXAC1lfKuRhN-cOHC6ogAJA;->f$0:Lcom/miui/home/recents/FloatingIconLayer;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$21FlMXAC1lfKuRhN-cOHC6ogAJA;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$21FlMXAC1lfKuRhN-cOHC6ogAJA;->f$0:Lcom/miui/home/recents/FloatingIconLayer;

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$21FlMXAC1lfKuRhN-cOHC6ogAJA;->f$1:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/FloatingIconLayer;->lambda$releaseSync$1$FloatingIconLayer(Landroid/view/View;)V

    return-void
.end method
