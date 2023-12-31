.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F

.field private final synthetic f$10:Landroid/graphics/Rect;

.field private final synthetic f$11:F

.field private final synthetic f$2:Landroid/graphics/RectF;

.field private final synthetic f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$4:Landroid/view/View;

.field private final synthetic f$5:Lcom/miui/home/recents/views/FloatingIconView;

.field private final synthetic f$6:Z

.field private final synthetic f$7:I

.field private final synthetic f$8:I

.field private final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;FLandroid/graphics/RectF;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;Lcom/miui/home/recents/views/FloatingIconView;ZIIZLandroid/graphics/Rect;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$1:F

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$2:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$4:Landroid/view/View;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$5:Lcom/miui/home/recents/views/FloatingIconView;

    iput-boolean p7, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$6:Z

    iput p8, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$7:I

    iput p9, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$8:I

    iput-boolean p10, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$9:Z

    iput-object p11, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$10:Landroid/graphics/Rect;

    iput p12, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$11:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v2, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$1:F

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$2:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$4:Landroid/view/View;

    iget-object v6, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$5:Lcom/miui/home/recents/views/FloatingIconView;

    iget-boolean v7, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$6:Z

    iget v8, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$7:I

    iget v9, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$8:I

    iget-boolean v10, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$9:Z

    iget-object v11, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$10:Landroid/graphics/Rect;

    iget v12, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$V0Tq4Zr5Tx8e60SzBQZ0CWFFqDM;->f$11:F

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    move v11, v12

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual/range {v0 .. v15}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeInMainThread$40$NavStubView(FLandroid/graphics/RectF;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;Lcom/miui/home/recents/views/FloatingIconView;ZIIZLandroid/graphics/Rect;FLandroid/graphics/RectF;FFF)V

    return-void
.end method
