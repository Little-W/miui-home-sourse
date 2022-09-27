.class Lcom/miui/home/recents/GestureStubView$1;
.super Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V
    .locals 6

    const/4 v0, 0x3

    .line 150
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableInsets(I)V

    .line 151
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$000(Lcom/miui/home/recents/GestureStubView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Landroid/graphics/Region;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegion(Landroid/graphics/Region;)V

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureStubView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureStubView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureStubView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v4}, Lcom/miui/home/recents/GestureStubView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v4}, Lcom/miui/home/recents/GestureStubView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureStubView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Region;-><init>(IIII)V

    .line 155
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegion(Landroid/graphics/Region;)V

    :goto_0
    return-void
.end method
