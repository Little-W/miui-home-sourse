.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/launcher/utils/BitmapRenderer$Renderer;


# instance fields
.field private final synthetic f$0:F

.field private final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(FLandroid/graphics/drawable/Drawable;IILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;->f$0:F

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;->f$1:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;->f$2:I

    iput p4, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;->f$3:I

    iput-object p5, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;->f$4:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;->f$0:F

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;->f$1:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;->f$2:I

    iget v3, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;->f$3:I

    iget-object v4, p0, Lcom/miui/home/launcher/-$$Lambda$DragController$oF9vMcUkbZ21TPqQNsaHDxW_2js;->f$4:Landroid/view/View;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/DragController;->lambda$createBitmapWithOutline$1(FLandroid/graphics/drawable/Drawable;IILandroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method
