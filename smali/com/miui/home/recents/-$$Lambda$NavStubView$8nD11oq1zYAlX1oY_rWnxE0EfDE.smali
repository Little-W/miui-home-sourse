.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Landroid/graphics/RectF;

.field private final synthetic f$2:Landroid/graphics/RectF;

.field private final synthetic f$3:F

.field private final synthetic f$4:I

.field private final synthetic f$5:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$6:F

.field private final synthetic f$7:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;Landroid/graphics/RectF;FILcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$1:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$2:Landroid/graphics/RectF;

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$3:F

    iput p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$4:I

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$5:Lcom/miui/home/launcher/ShortcutIcon;

    iput p7, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$6:F

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$7:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$1:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$2:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$3:F

    iget v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$4:I

    iget-object v5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$5:Lcom/miui/home/launcher/ShortcutIcon;

    iget v6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$6:F

    iget-object v7, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;->f$7:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeAnim$21(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;Landroid/graphics/RectF;FILcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V

    return-void
.end method
