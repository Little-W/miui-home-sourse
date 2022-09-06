.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F

.field private final synthetic f$2:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$3:Landroid/view/View;

.field private final synthetic f$4:Lcom/miui/home/recents/views/FloatingIconView;

.field private final synthetic f$5:Z

.field private final synthetic f$6:I

.field private final synthetic f$7:I

.field private final synthetic f$8:Landroid/graphics/Rect;

.field private final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;Lcom/miui/home/recents/views/FloatingIconView;ZIILandroid/graphics/Rect;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$1:F

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$2:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$3:Landroid/view/View;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$4:Lcom/miui/home/recents/views/FloatingIconView;

    iput-boolean p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$5:Z

    iput p7, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$6:I

    iput p8, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$7:I

    iput-object p9, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$8:Landroid/graphics/Rect;

    iput p10, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$9:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v2, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$1:F

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$2:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$3:Landroid/view/View;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$4:Lcom/miui/home/recents/views/FloatingIconView;

    iget-boolean v6, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$5:Z

    iget v7, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$6:I

    iget v8, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$7:I

    iget-object v9, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$8:Landroid/graphics/Rect;

    iget v10, v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_9tdVrnWQWFHabwgwxlCsHOdN4;->f$9:F

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-static/range {v1 .. v14}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeInMainThread$27(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;Lcom/miui/home/recents/views/FloatingIconView;ZIILandroid/graphics/Rect;FLandroid/graphics/RectF;FFF)V

    return-void
.end method
