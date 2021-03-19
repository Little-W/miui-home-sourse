.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$2:Lcom/miui/home/recents/views/FloatingIconView;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Landroid/graphics/Rect;

.field private final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/views/FloatingIconView;ZLandroid/graphics/Rect;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$2:Lcom/miui/home/recents/views/FloatingIconView;

    iput-boolean p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$3:Z

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$4:Landroid/graphics/Rect;

    iput p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$5:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 10

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$2:Lcom/miui/home/recents/views/FloatingIconView;

    iget-boolean v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$3:Z

    iget-object v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$4:Landroid/graphics/Rect;

    iget v5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;->f$5:F

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeInMainThread$27(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/views/FloatingIconView;ZLandroid/graphics/Rect;FLandroid/graphics/RectF;FFF)V

    return-void
.end method
