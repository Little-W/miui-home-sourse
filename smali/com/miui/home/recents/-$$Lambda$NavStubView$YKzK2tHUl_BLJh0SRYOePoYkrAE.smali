.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F

.field private final synthetic f$2:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$3:Lcom/miui/home/recents/views/FloatingIconView;

.field private final synthetic f$4:Z

.field private final synthetic f$5:I

.field private final synthetic f$6:I

.field private final synthetic f$7:Landroid/graphics/Rect;

.field private final synthetic f$8:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/views/FloatingIconView;ZIILandroid/graphics/Rect;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$1:F

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$2:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$3:Lcom/miui/home/recents/views/FloatingIconView;

    iput-boolean p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$4:Z

    iput p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$5:I

    iput p7, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$6:I

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$7:Landroid/graphics/Rect;

    iput p9, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$8:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v2, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$1:F

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$2:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$3:Lcom/miui/home/recents/views/FloatingIconView;

    iget-boolean v5, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$4:Z

    iget v6, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$5:I

    iget v7, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$6:I

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$7:Landroid/graphics/Rect;

    iget v9, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$YKzK2tHUl_BLJh0SRYOePoYkrAE;->f$8:F

    move-object v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-static/range {v1 .. v13}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeInMainThread$257(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/views/FloatingIconView;ZIILandroid/graphics/Rect;FLandroid/graphics/RectF;FFF)V

    return-void
.end method
