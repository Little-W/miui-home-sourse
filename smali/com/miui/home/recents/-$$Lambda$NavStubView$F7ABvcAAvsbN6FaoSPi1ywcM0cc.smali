.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;->f$2:I

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;->f$3:I

    iput p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;->f$4:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 9

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;->f$2:I

    iget v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;->f$3:I

    iget v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$F7ABvcAAvsbN6FaoSPi1ywcM0cc;->f$4:F

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeInGestureThread$25(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;IIFLandroid/graphics/RectF;FFF)V

    return-void
.end method
