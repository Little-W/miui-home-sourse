.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/home/recents/views/FloatingIconView;

.field private final synthetic f$4:Landroid/graphics/Rect;

.field private final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;ILcom/miui/home/recents/views/FloatingIconView;Landroid/graphics/Rect;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$2:I

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$3:Lcom/miui/home/recents/views/FloatingIconView;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$4:Landroid/graphics/Rect;

    iput p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$5:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 10

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$2:I

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$3:Lcom/miui/home/recents/views/FloatingIconView;

    iget-object v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$4:Landroid/graphics/Rect;

    iget v5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;->f$5:F

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeAnim$2(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;ILcom/miui/home/recents/views/FloatingIconView;Landroid/graphics/Rect;FLandroid/graphics/RectF;FFF)V

    return-void
.end method
