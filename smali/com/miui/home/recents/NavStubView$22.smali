.class Lcom/miui/home/recents/NavStubView$22;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startAppToWorldCirculate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 4873
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 3

    .line 4876
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4500(Lcom/miui/home/recents/NavStubView;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$4500(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    .line 4877
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView$22;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p2, p1, v0, p3, p4}, Lcom/miui/home/recents/NavStubView;->access$5800(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    return-void
.end method
