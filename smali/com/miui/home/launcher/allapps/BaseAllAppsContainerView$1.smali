.class Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$1;
.super Ljava/lang/Object;
.source "BaseAllAppsContainerView.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onScrollUpEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$1;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public accept(Ljava/lang/Void;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->scrollToWorkPage()V

    return-void
.end method
