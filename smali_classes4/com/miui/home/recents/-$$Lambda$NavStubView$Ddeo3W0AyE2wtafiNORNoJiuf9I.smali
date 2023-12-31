.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$2:Landroid/view/View;

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:Z

.field private final synthetic f$6:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;IIZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$2:Landroid/view/View;

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$3:I

    iput p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$4:I

    iput-boolean p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$5:Z

    iput p7, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$6:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 11

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$2:Landroid/view/View;

    iget v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$3:I

    iget v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$4:I

    iget-boolean v5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$5:Z

    iget v6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Ddeo3W0AyE2wtafiNORNoJiuf9I;->f$6:F

    move-object v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/miui/home/recents/NavStubView;->lambda$startHalfAppToHomeInGestureThread$39$NavStubView(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;IIZFLandroid/graphics/RectF;FFF)V

    return-void
.end method
