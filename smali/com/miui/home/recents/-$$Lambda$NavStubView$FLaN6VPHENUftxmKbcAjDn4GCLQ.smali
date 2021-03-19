.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$2:F

.field private final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;->f$2:F

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;->f$3:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;->f$2:F

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;->f$3:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeAnim$23(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V

    return-void
.end method
