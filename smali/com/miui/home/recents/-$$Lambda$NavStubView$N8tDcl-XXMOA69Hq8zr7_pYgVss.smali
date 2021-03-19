.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$N8tDcl-XXMOA69Hq8zr7_pYgVss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$N8tDcl-XXMOA69Hq8zr7_pYgVss;->f$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$N8tDcl-XXMOA69Hq8zr7_pYgVss;->f$1:I

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$N8tDcl-XXMOA69Hq8zr7_pYgVss;->f$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$N8tDcl-XXMOA69Hq8zr7_pYgVss;->f$1:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeAnim$22(Lcom/miui/home/recents/NavStubView;ILandroid/graphics/RectF;FFF)V

    return-void
.end method
