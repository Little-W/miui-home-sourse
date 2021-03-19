.class Lcom/miui/home/recents/views/RecentMenuView$2;
.super Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;
.source "RecentMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentMenuView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentMenuView;

.field final synthetic val$taskBounds:Landroid/graphics/Rect;

.field final synthetic val$thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentMenuView;Landroid/os/Handler;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentMenuView$2;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentMenuView$2;->val$thumbnail:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/miui/home/recents/views/RecentMenuView$2;->val$taskBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public composeSpecs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentMenuView$2;->this$0:Lcom/miui/home/recents/views/RecentMenuView;

    .line 305
    invoke-static {v1}, Lcom/miui/home/recents/views/RecentMenuView;->access$400(Lcom/miui/home/recents/views/RecentMenuView;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentMenuView$2;->val$thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentMenuView$2;->val$taskBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecCompat;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 304
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
