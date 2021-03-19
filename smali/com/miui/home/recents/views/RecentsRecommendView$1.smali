.class Lcom/miui/home/recents/views/RecentsRecommendView$1;
.super Ljava/lang/Object;
.source "RecentsRecommendView.java"

# interfaces
.implements Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/RecentsRecommendView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsRecommendView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsRecommendView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsRecommendView$1;->this$0:Lcom/miui/home/recents/views/RecentsRecommendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 123
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsRecommendView$1;->this$0:Lcom/miui/home/recents/views/RecentsRecommendView;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/views/RecentsRecommendView;->updateItemWhenPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 129
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsRecommendView$1;->this$0:Lcom/miui/home/recents/views/RecentsRecommendView;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/views/RecentsRecommendView;->updateItemWhenPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 118
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsRecommendView$1;->this$0:Lcom/miui/home/recents/views/RecentsRecommendView;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/views/RecentsRecommendView;->updateItemWhenPackageChanged(Ljava/lang/String;)V

    return-void
.end method
