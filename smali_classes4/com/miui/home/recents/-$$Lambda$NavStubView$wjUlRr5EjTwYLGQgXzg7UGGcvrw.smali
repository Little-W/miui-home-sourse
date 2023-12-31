.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:F

.field private final synthetic f$2:F

.field private final synthetic f$3:I

.field private final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;FFIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;->f$1:F

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;->f$2:F

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;->f$3:I

    iput p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;->f$4:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 9

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;->f$1:F

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;->f$2:F

    iget v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;->f$3:I

    iget v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$wjUlRr5EjTwYLGQgXzg7UGGcvrw;->f$4:F

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/recents/NavStubView;->lambda$performAppToApp$51$NavStubView(FFIFLandroid/graphics/RectF;FFF)V

    return-void
.end method
