.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$StHXgkJgGsvg6q7tc8oZXNLAIOA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$StHXgkJgGsvg6q7tc8oZXNLAIOA;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$StHXgkJgGsvg6q7tc8oZXNLAIOA;->f$1:I

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$StHXgkJgGsvg6q7tc8oZXNLAIOA;->f$2:I

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$StHXgkJgGsvg6q7tc8oZXNLAIOA;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$StHXgkJgGsvg6q7tc8oZXNLAIOA;->f$1:I

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$StHXgkJgGsvg6q7tc8oZXNLAIOA;->f$2:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeAnim$23(Lcom/miui/home/recents/NavStubView;IILandroid/graphics/RectF;FFF)V

    return-void
.end method
