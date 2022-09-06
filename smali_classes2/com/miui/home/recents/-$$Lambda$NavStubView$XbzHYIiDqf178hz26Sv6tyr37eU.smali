.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;
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

.field private final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$2:Landroid/view/View;

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$3:I

    iput p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$4:I

    iput p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$5:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 10

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$2:Landroid/view/View;

    iget v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$3:I

    iget v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$4:I

    iget v5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$XbzHYIiDqf178hz26Sv6tyr37eU;->f$5:F

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeInGestureThread$26(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;IIFLandroid/graphics/RectF;FFF)V

    return-void
.end method
