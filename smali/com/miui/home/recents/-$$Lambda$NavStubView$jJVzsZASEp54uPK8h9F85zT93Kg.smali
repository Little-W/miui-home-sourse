.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$jJVzsZASEp54uPK8h9F85zT93Kg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$jJVzsZASEp54uPK8h9F85zT93Kg;->f$0:Lcom/miui/home/recents/NavStubView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$jJVzsZASEp54uPK8h9F85zT93Kg;->f$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, p1}, Lcom/miui/home/recents/NavStubView;->lambda$startHomeFadeOutAnim$2(Lcom/miui/home/recents/NavStubView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
