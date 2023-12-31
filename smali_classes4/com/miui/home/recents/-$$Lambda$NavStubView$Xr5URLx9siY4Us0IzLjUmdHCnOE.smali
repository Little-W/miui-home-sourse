.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$Xr5URLx9siY4Us0IzLjUmdHCnOE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Xr5URLx9siY4Us0IzLjUmdHCnOE;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-boolean p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Xr5URLx9siY4Us0IzLjUmdHCnOE;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Xr5URLx9siY4Us0IzLjUmdHCnOE;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-boolean v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$Xr5URLx9siY4Us0IzLjUmdHCnOE;->f$1:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->lambda$startBreakOpenRectFAnim$23$NavStubView(ZLandroid/graphics/RectF;FFF)V

    return-void
.end method
