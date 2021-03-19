.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$dUjYbYFDiLi7eo47Vn9G7jsL468;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dUjYbYFDiLi7eo47Vn9G7jsL468;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dUjYbYFDiLi7eo47Vn9G7jsL468;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dUjYbYFDiLi7eo47Vn9G7jsL468;->f$2:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dUjYbYFDiLi7eo47Vn9G7jsL468;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dUjYbYFDiLi7eo47Vn9G7jsL468;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dUjYbYFDiLi7eo47Vn9G7jsL468;->f$2:F

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeInGestureThread$26(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/RectF;FFF)V

    return-void
.end method
